import 'dart:developer';

import 'package:ai_application_dct/core/common/widgets/custom_button.dart';
import 'package:ai_application_dct/features/ocr/presentation/pod/ocr_pod.dart';
import 'package:ai_application_dct/features/ocr/presentation/widgets/upload_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UploadDocPage extends ConsumerWidget {
  const UploadDocPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final docType = ref.watch(docTypeProvider);
    final bool isPdf = docType == UploadDocType.pdf;
    final bool isPassport = docType == UploadDocType.passport;
    final frontSideOfDocProvider =
        (isPassport ? passportFrontSideProvider : idCardFrontSideProvider);
    final backSideOfDocProvider =
        (isPassport ? passportBackSideProvider : idCardBackSideProvider);

    bool shouldEnableButton() {
      if ((isPdf && ref.watch(pdfDocProvider).isNotEmpty) ||
          (ref.watch(frontSideOfDocProvider).isNotEmpty &&
              ref.watch(backSideOfDocProvider).isNotEmpty)) {
        return true;
      } else {
        return false;
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Upload ${docType.toString()}"),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 12),
              UploadWidget(
                docType: docType,
                isFrontSide: true,
                isUploaded: isPdf
                    ? ref.watch(pdfDocProvider).isNotEmpty
                    : ref.watch(frontSideOfDocProvider).isNotEmpty,
              ),
              if (!isPdf) ...[
                SizedBox(height: 28),
                UploadWidget(
                  docType: docType,
                  isFrontSide: false,
                  isUploaded: ref.watch(backSideOfDocProvider).isNotEmpty,
                ),
              ],
              SizedBox(height: 12),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomButton(
        onPressed: shouldEnableButton()
            ? () {
                if (isPdf && ref.watch(pdfDocProvider).isNotEmpty) {
                  log("Nav from pdf");
                } else if (ref.watch(frontSideOfDocProvider).isNotEmpty &&
                    ref.watch(backSideOfDocProvider).isNotEmpty) {
                  log("Nav from image upload");
                } else {
                  log("Cannot Nav");
                }
              }
            : () {},
        label: "Next",
        isEnabled: shouldEnableButton(),
      ),
    );
  }
}
