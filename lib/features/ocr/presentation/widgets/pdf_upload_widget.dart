import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';

class PdfUploadWidget extends StatefulWidget {
  final String docTypeText;

  const PdfUploadWidget({
    super.key,
    required this.docTypeText,
  });

  @override
  State<PdfUploadWidget> createState() => _PdfUploadWidgetState();
}

class _PdfUploadWidgetState extends State<PdfUploadWidget> {
  String? docFilePath;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        docFilePath == null
            ? Text(widget.docTypeText)
            : PdfPreview(path: docFilePath!),
        SizedBox(width: 20),
        GestureDetector(
          onTap: () async {
            FilePickerResult? result = await FilePicker.platform.pickFiles(
              type: FileType.custom,
              allowedExtensions: ['pdf'],
            );

            if (result != null) {
              setState(() {
                docFilePath = result.files.single.path!;
              });
            }
          },
          child: const CircleAvatar(
            child: Icon(Icons.upload),
          ),
        ),
        SizedBox(width: 8),
        if (docFilePath != null)
          const CircleAvatar(
            radius: 12,
            backgroundColor: Colors.greenAccent,
            child: Icon(
              Icons.check,
              size: 16,
            ),
          ),
      ],
    );
  }
}

class PdfPreview extends StatelessWidget {
  final String path;
  const PdfPreview({required this.path, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 200,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            offset: Offset(2, 2),
            blurRadius: 3,
          )
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: PDFView(
          key: Key(path),
          filePath: path,
        ),
      ),
    );
  }
}
