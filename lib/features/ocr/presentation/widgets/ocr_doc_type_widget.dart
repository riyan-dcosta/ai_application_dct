import 'package:ai_application_dct/core/constants/colors.dart';
import 'package:ai_application_dct/features/ocr/presentation/pod/ocr_pod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class OCRDocTypeWidget extends ConsumerWidget {
  final String docType;
  final String iconPath;

  const OCRDocTypeWidget({
    super.key,
    required this.docType,
    required this.iconPath,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        ref.read(docTypeProvider.notifier).state =
            docType.toUploadDocTypeEnum();
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
        padding: const EdgeInsets.all(16),
        height: 120,
        constraints: const BoxConstraints(
          maxWidth: 450,
        ),
        decoration: BoxDecoration(
          color: ref.watch(docTypeProvider) == docType.toUploadDocTypeEnum()
              ? AppColor.emeraldGreen
              : AppColor.mud,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Expanded(
              child: RichText(
                text: TextSpan(
                  text: "$docType\n",
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                    TextSpan(
                      text:
                          "Processing scenario for obtaining ${docType.toLowerCase()} data",
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Image.asset(
              iconPath,
              height: 56,
              color: AppColor.white,
            )
          ],
        ),
      ),
    );
  }
}
