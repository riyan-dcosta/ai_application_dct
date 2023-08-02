import 'dart:io';

import 'package:ai_application_dct/core/common/widgets/custom_button.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

typedef CameraControllerDef = Function(CameraController? value);

class CameraModule extends StatefulWidget {
  const CameraModule({required this.controllerDef, super.key});

  final CameraControllerDef controllerDef;

  @override
  State<CameraModule> createState() => _CameraModuleState();
}

class _CameraModuleState extends State<CameraModule>
    with WidgetsBindingObserver, TickerProviderStateMixin {
  CameraController? cameraController;
  late CameraDescription selectedCameraDescription;
  bool isBackCamera = false;
  late CameraDescription frontCamera;
  late CameraDescription backCamera;
  ResolutionPreset resolutionPreset = ResolutionPreset.low;
  ImageProvider? recentImage;
  int delayTime = 5000;
  double progress = 0;
  XFile? imageFile;
  final String pageTitle = "Face Detection";

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
    widget.controllerDef(cameraController);

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
    showInSnackBar('Error: ${e.code}\n${e.description}');
  }

  @override
  Widget build(BuildContext context) {
    return (cameraController != null && cameraController!.value.isInitialized)
        ? AspectRatio(
            aspectRatio: 1 / cameraController!.value.aspectRatio,
            child: CameraPreview(cameraController!))
        : const Center(
            child: CircularProgressIndicator(),
          );
  }

  void onTakePictureButtonPressed() {
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
