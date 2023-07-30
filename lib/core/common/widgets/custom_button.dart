import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final String label;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final double? height;
  final double? width;
  final VoidCallback onPressed;

  const CustomButton({
    required this.label,
    required this.onPressed,
    this.padding,
    this.margin,
    this.height,
    this.width,
    super.key,
  });

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Future.delayed(Duration(milliseconds: 500), () {
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
        margin:
            widget.margin ?? EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        padding: widget.padding ?? EdgeInsets.all(16),
        constraints: BoxConstraints(maxWidth: 400),
        width: widget.width,
        height: widget.height ?? 68,
        decoration: BoxDecoration(
          color: Color(0xFF0D2231),
          boxShadow: isPressed
              ? []
              : [
                  BoxShadow(
                    color: Color(0xFF53D46B),
                    offset: Offset(4, 4),
                  )
                ],
        ),
        child: Center(
          child: Text(
            widget.label,
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 20,
                color: Colors.white,
                shadows: [
                  Shadow(
                    color: Colors.black.withOpacity(0.4),
                    offset: Offset(2, 1),
                    blurRadius: 2,
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
