import 'package:ai_application_dct/core/config/theme/theme.dart';
import 'package:ai_application_dct/features/ocr/presentation/widgets/ocr_doc_type_selector.dart';
import 'package:ai_application_dct/features/ocr/presentation/widgets/upload_doc_widget_v2.dart';
import 'package:flutter/material.dart';

class DocUploadPageV2 extends StatelessWidget {
  const DocUploadPageV2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Optical character recognition"),
        centerTitle: true,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OCRDocTypeSelector(
              docType: "Passport",
              iconPath: "assets/images/passport.png",
            ),
            OCRDocTypeSelector(
              docType: "ID Card",
              iconPath: "assets/images/id-card.png",
            ),
            OCRDocTypeSelector(
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
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => UploadDocWidgetV2(),
                  ),
                );
              },
              icon: const Icon(
                Icons.upload_file_outlined,
                size: 40,
                color: AppColor.accentColor,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.camera_alt_outlined,
                size: 40,
                color: AppColor.accentColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
