import 'package:ai_application_dct/core/constants/colors.dart';
import 'package:flutter/material.dart';

import '../../config/theme/theme.dart';

class CustomButton extends StatefulWidget {
  final String label;
  final EdgeInsets padding;
  final EdgeInsets margin;
  final double height;
  final double? width;
  final VoidCallback onPressed;
  final bool isEnabled;

  const CustomButton({
    required this.label,
    required this.onPressed,
    this.padding = const EdgeInsets.all(16),
    this.margin = const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
    this.isEnabled = true,
    this.height = 68,
    this.width,
    super.key,
  });

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  bool isPressed = false;

  // @override
  // Widget build(BuildContext context) {
  //   return Container(
  //     margin: widget.margin,
  //     // padding: widget.padding ?? EdgeInsets.all(16),
  //     // constraints: BoxConstraints(maxWidth: 400),
  //     // width: widget.width,
  //     // height: widget.height ?? 68,
  //     // decoration: BoxDecoration(
  //     //   boxShadow: isPressed
  //     //       ? []
  //     //       : [
  //     //           BoxShadow(
  //     //             color: Color(0xFF53D46B),
  //     //             offset: Offset(4, 4),
  //     //           )
  //     //         ],
  //     // ),
  //     child: ElevatedButton(
  //       style: ButtonStyle(
  //           padding: MaterialStatePropertyAll(widget.padding),
  //           backgroundColor: const MaterialStatePropertyAll(AppColor.bigStone),
  //           elevation: const MaterialStatePropertyAll(4),
  //           // shadowColor: MaterialStatePropertyAll(AppColor.emeraldGreen),
  //           shape: MaterialStatePropertyAll(
  //             LinearBorder(
  //               side: BorderSide(color: AppColor.emeraldGreen, width: 4),
  //               end: LinearBorderEdge(size: 0.9, alignment: 1),
  //               bottom: LinearBorderEdge(size: 0.9, alignment: 1)
  //             ),
  //           )),
  //       onPressed: () {
  //         Future.delayed(const Duration(milliseconds: 500), () {
  //           widget.onPressed();
  //         });
  //
  //         setState(() {
  //           isPressed = true;
  //         });
  //
  //         Future.delayed(const Duration(milliseconds: 150), () {
  //           setState(() {
  //             isPressed = false;
  //           });
  //         });
  //       },
  //       child: Center(
  //         child: Text(
  //           widget.label,
  //           style: TextStyle(
  //             fontWeight: FontWeight.w700,
  //             fontSize: 20,
  //             color: Colors.white,
  //             shadows: [
  //               Shadow(
  //                 color: Colors.black.withOpacity(0.4),
  //                 offset: const Offset(2, 1),
  //                 blurRadius: 2,
  //               )
  //             ],
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  // }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Future.delayed(const Duration(milliseconds: 500), () {
          widget.onPressed();
        });

        setState(() {
          isPressed = true;
        });

        Future.delayed(const Duration(milliseconds: 150), () {
          setState(() {
            isPressed = false;
          });
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        margin: widget.margin,
        padding: widget.padding,
        constraints: const BoxConstraints(maxWidth: 400),
        width: widget.width,
        height: widget.height,
        transform: isPressed ? Matrix4.translationValues(2, 2, 0) : null,
        decoration: BoxDecoration(
          color: widget.isEnabled ? AppColor.accentColor : AppColor.grey,
          boxShadow: isPressed
              ? []
              : [
                  BoxShadow(
                    color:
                        widget.isEnabled ? AppColor.emeraldGreen : AppColor.mud,
                    offset: Offset(4, 4),
                  ),
                  BoxShadow(
                    color:
                        widget.isEnabled ? AppColor.emeraldGreen : AppColor.mud,
                    offset: Offset(0, 4),
                  ),
                  BoxShadow(
                    color:
                        widget.isEnabled ? AppColor.emeraldGreen : AppColor.mud,
                    offset: Offset(4, 0),
                  ),
                ],
        ),
        child: Center(
          child: Text(
            widget.label,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 20,
              color: widget.isEnabled
                  ? AppColor.white
                  : AppColor.scaffoldBackgroundColor,
            ),
          ),
        ),
      ),
    );
  }
}
