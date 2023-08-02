import 'package:ai_application_dct/core/common/widgets/custom_button.dart';
import 'package:ai_application_dct/core/util/camera/camera_module.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class IntegrateCameraModule extends StatefulWidget {
  const IntegrateCameraModule({super.key});

  @override
  State<IntegrateCameraModule> createState() => _IntegrateCameraModuleState();
}

class _IntegrateCameraModuleState extends State<IntegrateCameraModule> {
  CameraController? cameraController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Camera Integration Test"),
      ),
      body: Stack(
        fit: StackFit.loose,
        children: [
          CameraModule(
            controllerDef: (CameraController? controller) {
              cameraController = controller;
              setState(() {});
            },
          ),
          cameraController != null
              ? AspectRatio(
                  aspectRatio: 1 / cameraController!.value.aspectRatio,
                  child: ColorFiltered(
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.7), BlendMode.srcOut),
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
                            height: 350,
                            width: 350,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.green, width: 4),
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(
                                MediaQuery.of(context).size.width / 2,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              : const SizedBox.shrink()
        ],
      ),
      //  body: Column(
      //   crossAxisAlignment: CrossAxisAlignment.stretch,
      //   children: [
      //     Stack(
      //       fit: StackFit.expand,
      //       children: [
      //         ColorFiltered(
      //           colorFilter: ColorFilter.mode(
      //               Colors.black.withOpacity(0.7), BlendMode.srcOut),
      //           child: Stack(
      //             fit: StackFit.expand,
      //             children: [
      //               Container(
      //                 decoration: const BoxDecoration(
      //                   color: Colors.black,
      //                   backgroundBlendMode: BlendMode.dstOut,
      //                 ), // This one will handle background + difference out
      //               ),
      //               Align(
      //                 alignment: Alignment.center,
      //                 child: Container(
      //                   // padding: const EdgeInsets.all(16),
      //                   // margin: const EdgeInsets.all(16),
      //                   // height: MediaQuery.of(context).size.width,
      //                   // width: MediaQuery.of(context).size.width,
      //                   height: 350,
      //                   width: 350,
      //                   decoration: BoxDecoration(
      //                     border:
      //                     Border.all(color: Colors.green, width: 4),
      //                     color: Colors.red,
      //                     borderRadius: BorderRadius.circular(
      //                       MediaQuery.of(context).size.width / 2,
      //                     ),
      //                   ),
      //                 ),
      //               ),
      //             ],
      //           ),
      //         )
      //       ],
      //     ),
      //     Expanded(
      //         child: Row(
      //           children: [
      //             Flexible(
      //               fit: FlexFit.tight,
      //               flex: 1,
      //               child: CircleAvatar(
      //                 radius: 40,
      //                 // foregroundImage: recentImage,
      //               ),
      //             ),
      //             Expanded(
      //               flex: 2,
      //               child: Container(
      //                 padding: const EdgeInsets.all(4.0),
      //                 alignment: Alignment.center,
      //                 child: CustomButton(
      //                   onPressed: (){},
      //                   // onPressed: onTakePictureButtonPressed,
      //                   label: "Capture Image",
      //                   margin: const EdgeInsets.all(2.0),
      //                   padding: const EdgeInsets.all(2.0),
      //                 ),
      //               ),
      //             ),
      //             Flexible(
      //               fit: FlexFit.tight,
      //               flex: 1,
      //               child: Container(
      //                 padding: const EdgeInsets.all(4.0),
      //                 alignment: Alignment.center,
      //                 child: IconButton(
      //                   style: ButtonStyle(
      //                       iconSize: MaterialStateProperty.all(40)),
      //                   onPressed: () {
      //                     // isBackCamera = !isBackCamera;
      //                     // reInitializeCamera();
      //                     // setState(() {});
      //                   },
      //                   icon: Icon(true
      //                       ? Icons.camera_rear
      //                       : Icons.camera_front),
      //                 ),
      //               ),
      //             ),
      //           ],
      //         )),
      //   ],
      // ),
    );
  }
}
