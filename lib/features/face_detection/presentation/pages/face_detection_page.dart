import 'dart:io';
import 'dart:typed_data';

import 'package:ai_application_dct/features/face_detection/presentation/pod/face_detection_pod.dart';
import 'package:auto_route/annotations.dart';
import 'package:google_mlkit_face_detection/google_mlkit_face_detection.dart';
import 'package:path_provider/path_provider.dart';
import 'package:camera/camera.dart';
import 'package:camerawesome/camerawesome_plugin.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class FaceDetectionPage extends ConsumerStatefulWidget {
  const FaceDetectionPage({super.key});

  @override
  ConsumerState createState() => _FaceDetectionPageState();
}

class _FaceDetectionPageState extends ConsumerState<FaceDetectionPage> {
  late final _path;
  late Future<CameraInformation> _cameraInformation;
  final options = FaceDetectorOptions(
    enableContours: true,
    enableClassification: true,
    enableLandmarks: true,
  );
  late final faceDetector = FaceDetector(options: options);
  late InputImage inputImage;

  @override
  void initState() {
    super.initState();
    // getPath();
  }

  Future<String> _photoAndVideoPath() async {
    final directory = await getApplicationDocumentsDirectory();
    File file = await File(directory.path).create();
    return file.path;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Camera Preview"),
      ),
      body: Container(
          child: CameraAwesomeBuilder.awesome(
        // Other parameters...
        onImageForAnalysis: (AnalysisImage img) async {
          // print(img.wrapped().bytes);
          // AnalysisImage imageAnalysis = img;
          // Uint8List? imageBytes = img.wrapped().bytes;
          // if (imageBytes != null) {
          //   inputImage = InputImage.fromBytes(
          //       bytes: imageBytes,
          //       metadata: InputImageMetadata(
          //           size: imageAnalysis.size,
          //           format: InputImageFormat.nv21,
          //           bytesPerRow: imageBytes.indexOf(0),
          //           rotation: InputImageRotation.rotation0deg));
          // }
          // Handle image analysis
        },
        imageAnalysisConfig: AnalysisConfig(
          // 1.
          androidOptions: const AndroidAnalysisOptions.nv21(
            width: 250,
          ),
          // 2.
          autoStart: true,
          // 3.
          cupertinoOptions: const CupertinoAnalysisOptions.bgra8888(),
          // 4.
          maxFramesPerSecond: 20,
        ),
        saveConfig: SaveConfig.photoAndVideo(
            photoPathBuilder: _photoAndVideoPath,
            videoPathBuilder: _photoAndVideoPath),
      )),
    );
  }
}

// @RoutePage()
// class FaceDetectionPage extends ConsumerStatefulWidget {
//   const FaceDetectionPage({super.key});
//
//   @override
//   ConsumerState createState() => _FaceDetectionPageState();
// }
//
// class _FaceDetectionPageState extends ConsumerState<FaceDetectionPage>
//     with WidgetsBindingObserver {
//   Future<CameraController>? cameraInitialization;
//   final resolutionPreset = ResolutionPreset.max;
//
//   late CameraController? controller;
//
//   @override
//   void initState() {
//     super.initState();
//     initializeFrontCamera();
//   }
//
//   @override
//   void didChangeDependencies() {
//     super.didChangeDependencies();
//     print("didChangeDependencies");
//   }
//
//   initializeFrontCamera() async {
//     controller = CameraController(
//         await InitializeCameraDescription.getFrontCameraDescription(),
//         resolutionPreset);
//     _initializeCameraController(controller!);
//   }
//
//   void _initializeCameraController(CameraController controller) {
//     controller.initialize().then((_) {
//       if (!mounted) {
//         return;
//       }
//       setState(() {});
//     }).catchError((Object e) {
//       if (e is CameraException) {
//         switch (e.code) {
//           case 'CameraAccessDenied':
//             // Handle access errors here.
//             break;
//           default:
//             // Handle other errors here.
//             break;
//         }
//       }
//     });
//     cameraInitialization = Future(() => controller);
//   }
//
//   @override
//   void didChangeAppLifecycleState(AppLifecycleState state) {
//     // App state changed before we got the chance to initialize.
//     if (controller == null || !controller!.value.isInitialized) {
//       return;
//     }
//     if (state == AppLifecycleState.inactive) {
//       controller?.dispose();
//     } else if (state == AppLifecycleState.resumed) {
//       if (controller != null) {
//         _initializeCameraController(controller!);
//       }
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Camera Preview"),
//       ),
//       body: FutureBuilder<CameraController>(
//           future: cameraInitialization,
//           builder: (context, snapshot) {
//
//             if (snapshot.hasError) {
//               ScaffoldMessenger.of(context)
//                   .showSnackBar(SnackBar(content: Text("error")));
//               return Container(
//                 color: Colors.red,
//               );
//             } else if (snapshot.hasData &&
//                 snapshot.connectionState == ConnectionState.done) {
//               CameraController _camera = snapshot.data!;
//               _camera.startImageStream((image) =>
//                   print(image)
//               );
//               return CameraPreview(snapshot.data!);
//             } else {
//               return CircularProgressIndicator();
//             }
//           }),
//     );
//   }
// }
