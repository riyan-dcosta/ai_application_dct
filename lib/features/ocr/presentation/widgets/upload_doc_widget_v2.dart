import 'package:ai_application_dct/core/common/widgets/custom_button.dart';
import 'package:ai_application_dct/core/config/theme/theme.dart';
import 'package:ai_application_dct/features/ocr/presentation/pod/doc_upload_pod.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UploadDocWidgetV2 extends ConsumerWidget {
  const UploadDocWidgetV2({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final docType = ref.watch(docTypeProvider);
    final bool isPdf = docType == UploadDocType.pdf;

    return Scaffold(
      appBar: AppBar(
        title: Text("Upload "),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 12),
              UploadWidget(
                description:
                    "Upload ${!isPdf ? "Front Side of" : ""} ${docType.toString()}",
                docTypes: !isPdf ? ['jpg', 'png', 'jpeg'] : ['pdf'],
              ),
              if (!isPdf) ...[
                SizedBox(height: 28),
                UploadWidget(
                  description: "Upload Back Side of ${docType.toString()}",
                  docTypes: ['jpg', 'png', 'jpeg'],
                ),
              ],
              SizedBox(height: 12),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomButton(
        onPressed: () {},
        label: "Next",
        isEnabled: false,
      ),
    );
  }
}

class UploadWidget extends StatelessWidget {
  final String description;
  final List<String> docTypes;

  const UploadWidget({
    super.key,
    required this.description,
    required this.docTypes,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        FilePickerResult? result = await FilePicker.platform.pickFiles(
          type: FileType.custom,
          allowedExtensions: docTypes,
        );
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
          height: 280,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColor.white,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.upload_file_outlined,
                size: 44,
                color: AppColor.grey,
              ),
              SizedBox(height: 12),
              Text(
                description,
                style: TextStyle(
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
