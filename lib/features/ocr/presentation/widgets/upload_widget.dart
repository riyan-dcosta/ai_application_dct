import 'dart:io';

import 'package:ai_application_dct/core/config/theme/theme.dart';
import 'package:ai_application_dct/features/ocr/presentation/pod/ocr_pod.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UploadWidget extends ConsumerWidget {
  final UploadDocType docType;
  final bool isFrontSide;
  final bool isUploaded;

  const UploadWidget({
    super.key,
    required this.docType,
    required this.isFrontSide,
    required this.isUploaded,
  });

  @override
  Widget build(BuildContext context, ref) {
    final bool isPdf = docType == UploadDocType.pdf;
    final bool isPassport = docType == UploadDocType.passport;
    final frontSideOfDocProvider =
        (isPassport ? passportFrontSideProvider : idCardFrontSideProvider);
    final backSideOfDocProvider =
        (isPassport ? passportBackSideProvider : idCardBackSideProvider);

    return GestureDetector(
      onTap: () async {
        FilePickerResult? result = await FilePicker.platform.pickFiles(
          type: FileType.custom,
          allowedExtensions: isPdf ? ['pdf'] : ['jpg', 'png', 'jpeg'],
        );

        if (result == null) return;

        final docFile = File(result.files.single.path!);
        if (isPdf) {
          ref.read(pdfDocProvider.notifier).state = docFile.path;
        } else {
          isFrontSide
              ? ref.read(frontSideOfDocProvider.notifier).state =
                  docFile.readAsBytesSync()
              : ref.read(backSideOfDocProvider.notifier).state =
                  docFile.readAsBytesSync();
        }
      },
      child: DottedBorder(
        strokeWidth: 1.5,
        radius: Radius.circular(10),
        dashPattern: [8, 4],
        strokeCap: StrokeCap.round,
        borderType: BorderType.RRect,
        color: AppColor.grey,
        child: Container(
          width: 280,
          height: isPdf ? 320 : 280,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColor.white,
          ),
          child: isUploaded
              ? ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: isPdf
                      ? PDFView(
                          key: Key(ref.watch(pdfDocProvider)),
                          filePath: ref.watch(pdfDocProvider),
                        )
                      : isFrontSide
                          ? Image.memory(
                              ref.watch(frontSideOfDocProvider),
                              fit: BoxFit.cover,
                            )
                          : Image.memory(
                              ref.watch(backSideOfDocProvider),
                              fit: BoxFit.cover,
                            ),
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.upload_file_outlined,
                      size: 44,
                      color: AppColor.grey,
                    ),
                    SizedBox(height: 12),
                    Text(
                      "Upload ${isPdf ? "" : isFrontSide ? "Front Side of" : "Back Side of"} ${docType.toString()}",
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
