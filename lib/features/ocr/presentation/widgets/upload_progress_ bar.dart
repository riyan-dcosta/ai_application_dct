import 'package:ai_application_dct/core/constants/colors.dart';
import 'package:ai_application_dct/features/ocr/presentation/widgets/upload_doc_pageview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UploadProgressBar extends ConsumerWidget {
  final String stepName;
  final int stepNum;
  final StateProvider<bool> listenTo;

  const UploadProgressBar({
    super.key,
    required this.stepName,
    required this.stepNum,
    required this.listenTo,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool isDone = ref.watch(listenTo);
    bool isCurrent = stepNum <= ref.watch(pageViewIndexProvider);

    return Row(
      children: [
        CircleAvatar(
          radius: 10,
          backgroundColor: isDone
              ? AppColor.emeraldGreen
              : isCurrent
                  ? AppColor.deepOceanBlue
                  : AppColor.submarineBlue,
          child: isDone
              ? const Icon(
                  Icons.check,
                  size: 14,
                  color: AppColor.deepOceanBlue,
                )
              : Text(
                  "$stepNum",
                  style: const TextStyle(
                    color: AppColor.white,
                    fontSize: 12,
                  ),
                ),
        ),
        SizedBox(width: 8),
        Text(
          stepName,
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 16,
            color: isCurrent ? AppColor.deepOceanBlue : AppColor.submarineBlue,
          ),
        ),
      ],
    );
  }
}
