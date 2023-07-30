import 'package:ai_application_dct/core/constants/colors.dart';
import 'package:flutter/material.dart';

class NextOrContinueBtn extends StatelessWidget {
  final String label;
  final VoidCallback? onTap;
  final bool isEnabled;

  const NextOrContinueBtn(
      {super.key,
      required this.label,
      required this.onTap,
      required this.isEnabled});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 4),
        padding: EdgeInsets.all(16),
        constraints: BoxConstraints(maxWidth: 400),
        height: 68,
        decoration: BoxDecoration(
          color: isEnabled ? AppColor.accentColor : AppColor.submarineBlue,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 24,
              color: isEnabled ? AppColor.white : AppColor.grey,
            ),
          ),
        ),
      ),
    );
  }
}
