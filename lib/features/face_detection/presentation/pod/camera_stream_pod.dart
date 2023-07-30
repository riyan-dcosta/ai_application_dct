import 'package:camera/camera.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

// part 'camera_stream_pod.g.dart';

@riverpod
Future<List<CameraDescription>> getCameraDescription(Ref ref) async {
  return await availableCameras();
}

// @riverpod
// class InitializeCamera extends _$InitializeCamera {
//   @override
//   FutureOr<CameraController> build() async {
// // late CameraDescription _cameraDescription;
// // final _cameraDesc = await getCameraDescriptionProvider;
// // _cameraDesc.when(
// //   data: (data) => ,
// //   error: (err, stack) => ,
// //   loading: () => ,
// // );
// // //     .firstWhere((element) =>
// // // element.lensDirection == CameraLensDirection.front),
// // // ResolutionPreset.low);
// //
// // final cameraController = CameraController();
// //
// // await cameraController.initialize();
// // return CameraController(CameraDescription(), ResolutionPreset.low);
//   return Future(()=>null);
//   }
// }
