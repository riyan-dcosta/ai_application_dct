import 'package:ai_application_dct/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UploadProgressBar extends StatelessWidget {
  final String stepName;
  final int stepNum;
  final bool isCurrent;
  final StateProvider<bool> listenTo;

  const UploadProgressBar({
    super.key,
    required this.stepName,
    required this.stepNum,
    required this.isCurrent,
    required this.listenTo,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Consumer(builder: (context, ref, _) {
          bool isDone = ref.watch(listenTo);
          return CircleAvatar(
            radius: 10,
            backgroundColor: isDone
                ? AppColor.emeraldGreen
                : isCurrent
                    ? AppColor.accentColor
                    : AppColor.submarineBlue,
            child: isDone
                ? const Icon(
                    Icons.check,
                    size: 14,
                    color: AppColor.accentColor,
                  )
                : Text(
                    "$stepNum",
                    style: const TextStyle(
                      color: AppColor.white,
                      fontSize: 12,
                    ),
                  ),
          );
        }),
        SizedBox(width: 8),
        Text(
          stepName,
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 16,
            color: isCurrent ? AppColor.accentColor : AppColor.submarineBlue,
          ),
        ),
      ],
    );
  }
}
