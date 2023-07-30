import 'package:camera/camera.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

// part 'face_detection_pod.g.dart';

part 'face_detection_pod.freezed.dart';

// class InitializeCameraDescription {
//   InitializeCameraDescription.initialize();
//
//   static Future<CameraDescription> getFrontCameraDescription() async {
//     List<CameraDescription> availableCamera = await availableCameras();
//     return availableCamera.firstWhere(
//         (element) => element.lensDirection == CameraLensDirection.front);
//   }
// }

@freezed
class CameraInformation with _$CameraInformation {
  const factory CameraInformation({
    required Future<String> path,
  }) = _CameraInformation;
}
