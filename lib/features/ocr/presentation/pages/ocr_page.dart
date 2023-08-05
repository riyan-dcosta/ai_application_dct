import 'dart:developer';

import 'package:ai_application_dct/core/config/routes/go_router.dart';
import 'package:ai_application_dct/features/ocr/presentation/pod/ocr_pod.dart';
import 'package:ai_application_dct/features/ocr/presentation/widgets/ocr_doc_type_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ai_application_dct/core/constants/colors.dart';

class OcrPage extends ConsumerWidget {
  const OcrPage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Optical character recognition"),
        centerTitle: true,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OCRDocTypeWidget(
              docType: "Passport",
              iconPath: "assets/images/passport.png",
            ),
            OCRDocTypeWidget(
              docType: "ID Card",
              iconPath: "assets/images/id-card.png",
            ),
            OCRDocTypeWidget(
              docType: "PDF",
              iconPath: "assets/images/pdf.png",
            ),
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () => goToUploadPage(context, ref),
              icon: const Icon(
                Icons.upload_file_outlined,
                size: 40,
                color: AppColor.deepOceanBlue,
              ),
            ),
            if (ref.watch(docTypeProvider) != UploadDocType.pdf)
              IconButton(
                onPressed: () => goToCameraPage(context, ref),
                icon: const Icon(
                  Icons.camera_alt_outlined,
                  size: 40,
                  color: AppColor.deepOceanBlue,
                ),
              ),
          ],
        ),
      ),
    );
  }

  void goToUploadPage(BuildContext context, WidgetRef ref) {
    if (ref.watch(docTypeProvider) != UploadDocType.notSelected) {
      const UploadDocRoute().go(context);
    } else {
      showSnackBar(context);
    }
  }

  Future<void> goToCameraPage(BuildContext context, WidgetRef ref) async {
    if (ref.watch(docTypeProvider) != UploadDocType.notSelected) {
      bool? isFrontSideCaptured = await DocCameraRoute(
        isFrontSide: true,
        docType: ref.watch(docTypeProvider),
      ).push<bool>(context);

      log(isFrontSideCaptured.toString(), name: "FrontSideCapture");

      if (isFrontSideCaptured ?? false) {
        await Future.delayed(Duration(milliseconds: 500));
        bool? isBackSideCaptured = await DocCameraRoute(
          isFrontSide: false,
          docType: ref.watch(docTypeProvider),
        ).push<bool>(context);

        log(isBackSideCaptured.toString(), name: "BackSideCapture");

        if (isBackSideCaptured ?? false) {
          log("Navigate to next action", name: "CaptureSuccess");
          // Navigate to next action
        }
      }
    } else {
      showSnackBar(context);
    }
  }

  void showSnackBar(BuildContext context) =>
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Select any document type to proceed"),
        ),
      );
}
