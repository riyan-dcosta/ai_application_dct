import 'dart:async';
import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DocCameraPage extends StatefulWidget {
  const DocCameraPage({super.key});

  @override
  State<DocCameraPage> createState() => _DocCameraPageState();
}

class _DocCameraPageState extends State<DocCameraPage>
    with WidgetsBindingObserver, TickerProviderStateMixin {
  CameraController? cameraController;
  late CameraDescription selectedCameraDescription;
  bool isBackCamera = true;
  late CameraDescription frontCamera;
  late CameraDescription backCamera;
  ResolutionPreset resolutionPreset = ResolutionPreset.max;
  ImageProvider? recentImage;
  int delayTime = 5000;
  double progress = 0;
  XFile? imageFile;
  final String pageTitle = "Scan Passport";

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    initializeCamera();
  }

  @override
  void dispose() {
    if (cameraController != null) {
      cameraController!.dispose();
    }

    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    final CameraController? localCameraController = cameraController;

    if (localCameraController == null ||
        !localCameraController.value.isInitialized) {
      return;
    }

    if (state == AppLifecycleState.inactive) {
      localCameraController.dispose();
    } else if (state == AppLifecycleState.resumed) {
      reInitializeCamera();
    }
  }

  Future<void> initializeCamera() async {
    final cameras = await availableCameras();
    frontCamera = cameras.firstWhere(
        (element) => element.lensDirection == CameraLensDirection.front);
    backCamera = cameras.firstWhere(
        (element) => element.lensDirection == CameraLensDirection.back);
    reInitializeCamera();
  }

  Future<void> onNewCameraSelected(CameraDescription cameraDescription) async {
    if (cameraController != null) {
      return cameraController!.setDescription(cameraDescription);
    } else {
      return reInitializeCamera();
    }
  }

  Future<void> reInitializeCamera() async {
    final camera = CameraController(
        isBackCamera ? backCamera : frontCamera, resolutionPreset,
        enableAudio: false);
    camera.addListener(() {
      if (mounted) {
        setState(() {});
      }
      if (camera.value.hasError) {
        print('Camera error ${camera.value.errorDescription}');
      }
    });
    cameraController = camera;

    try {
      await camera.initialize();
    } on CameraException catch (e) {
      switch (e.code) {
        case 'CameraAccessDenied':
          showInSnackBar('You have denied camera access.');
          break;
        case 'CameraAccessDeniedWithoutPrompt':
          // iOS only
          showInSnackBar('Please go to Settings app to enable camera access.');
          break;
        case 'CameraAccessRestricted':
          // iOS only
          showInSnackBar('Camera access is restricted.');
          break;
        case 'AudioAccessDenied':
          showInSnackBar('You have denied audio access.');
          break;
        case 'AudioAccessDeniedWithoutPrompt':
          // iOS only
          showInSnackBar('Please go to Settings app to enable audio access.');
          break;
        case 'AudioAccessRestricted':
          // iOS only
          showInSnackBar('Audio access is restricted.');
          break;
        default:
          _showCameraException(e);
          break;
      }
    }
    if (mounted) {
      setState(() {});
    }
  }

  void showInSnackBar(String message) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  void _showCameraException(CameraException e) {
    print(e.code);
    print(e.description);
    showInSnackBar('Error: ${e.code}\n${e.description}');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(title: Text(pageTitle)),
        body: (cameraController != null &&
                cameraController!.value.isInitialized)
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  AspectRatio(
                      aspectRatio: 1 / cameraController!.value.aspectRatio,
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          CameraPreview(cameraController!),
                          // Container(
                          //   alignment: Alignment.center,
                          //   width: 350,
                          //   height: 350,
                          //   child: const CircularProgressBarWithLines(
                          //     percent: 100,
                          //     linesLength: 25,
                          //     linesWidth: 4,
                          //     linesAmount: 60,
                          //     radius: 140,
                          //     linesColor: Colors.white,
                          //   ),
                          // ),
                          // Container(
                          //   alignment: Alignment.center,
                          //   width: 350,
                          //   height: 350,
                          //   child: CircularProgressBarWithLines(
                          //     percent: progress,
                          //     linesLength: 25,
                          //     linesWidth: 4,
                          //     linesAmount: 60,
                          //     radius: 140,
                          //     linesColor: Colors.green,
                          //   ),
                          // ),
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              // padding: const EdgeInsets.all(16),
                              // margin: const EdgeInsets.all(16),
                              // height: MediaQuery.of(context).size.width,
                              // width: MediaQuery.of(context).size.width,
                              height: 250,
                              width: 350,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.green, width: 4),
                                  borderRadius: BorderRadius.circular(16.0)
                                  // color: Colors.red,
                                  // backgroundBlendMode: BlendMode.dst,
                                  // borderRadius: BorderRadius.circular(
                                  //   MediaQuery.of(context).size.width / 2,
                                  // ),
                                  ),
                            ),
                          ),
                          ColorFiltered(
                            colorFilter: ColorFilter.mode(
                                Colors.black.withOpacity(0.7),
                                BlendMode.srcOut),
                            child: Stack(
                              fit: StackFit.expand,
                              children: [
                                Container(
                                  decoration: const BoxDecoration(
                                    color: Colors.black,
                                    backgroundBlendMode: BlendMode.dstOut,
                                  ), // This one will handle background + difference out
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    // padding: const EdgeInsets.all(16),
                                    // margin: const EdgeInsets.all(16),
                                    // height: MediaQuery.of(context).size.width,
                                    // width: MediaQuery.of(context).size.width,
                                    height: 250,
                                    width: 350,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.green, width: 4),
                                        color: Colors.red,
                                        borderRadius:
                                            BorderRadius.circular(16.0)
                                        // backgroundBlendMode: BlendMode.dst,
                                        // borderRadius: BorderRadius.circular(
                                        //   MediaQuery.of(context).size.width / 2,
                                        // ),
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      )),
                  Expanded(
                      child: Row(
                    children: [
                      Flexible(
                          fit: FlexFit.tight,
                          flex: 1,
                          child: IconButton(
                            icon: const Icon(Icons.flash_on),
                            onPressed: () {},
                          )),
                      Expanded(
                          flex: 1,
                          child: GestureDetector(
                            onTap: () {},
                            child: const Stack(
                              alignment: Alignment.center,
                              children: [
                                Icon(
                                  Icons.circle,
                                  size: 56,
                                  color: Colors.black,
                                ),
                                Icon(
                                  Icons.circle,
                                  size: 46,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          )),
                      Flexible(
                        fit: FlexFit.tight,
                        flex: 1,
                        child: Container(
                          padding: const EdgeInsets.all(4.0),
                          alignment: Alignment.center,
                          child: IconButton(
                            style: ButtonStyle(
                                iconSize: MaterialStateProperty.all(40)),
                            onPressed: () {
                              context.pop<bool>(false);
                            },
                            icon: const Icon(Icons.close),
                          ),
                        ),
                      ),
                    ],
                  )),
                ],
              )
            : const Center(
                child: CircularProgressIndicator(),
              ),
      ),
    );
  }

  void onTakePictureButtonPressed() {
    Timer.periodic(const Duration(milliseconds: 1), (timer) {
      if (timer.tick >= delayTime) {
        timer.cancel();
      }
      progress = ((timer.tick / delayTime) * 100).clamp(0, 100);
      setState(() {});
    });

    takePicture().then((XFile? file) {
      if (mounted) {
        setState(() {
          imageFile = file;
          recentImage = FileImage(File(file!.path));
        });
        if (file != null) {
          print('Picture saved to ${file.path}');
        }
      }
    });
  }

  Future<XFile?> takePicture() async {
    final CameraController? localCameraController = cameraController;
    if (localCameraController == null ||
        !localCameraController.value.isInitialized) {
      print('Error: select a camera first.');
      return null;
    }

    if (localCameraController.value.isTakingPicture) {
      // A capture is already pending, do nothing.
      return null;
    }

    try {
      final XFile file = await localCameraController.takePicture();
      return file;
    } on CameraException catch (e) {
      print(e);
      return null;
    }
  }
}
