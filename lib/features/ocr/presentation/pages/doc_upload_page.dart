import 'package:ai_application_dct/features/ocr/presentation/widgets/pdf_upload_widget.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class DocUploadPage extends StatelessWidget {
  const DocUploadPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Upload Documents"),
        centerTitle: true,
      ),
      body: const Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PdfUploadWidget(docTypeText: 'Upload Passport'),
                SizedBox(height: 28),
                PdfUploadWidget(docTypeText: 'Upload ID Card'),
                SizedBox(height: 28),
                PdfUploadWidget(docTypeText: 'Upload PDF'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
