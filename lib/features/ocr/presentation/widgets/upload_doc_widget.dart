import 'dart:io';

import 'package:ai_application_dct/core/common/widgets/custom_button.dart';
import 'package:ai_application_dct/core/config/theme/theme.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class UploadDocWidget extends StatefulWidget {
  final VoidCallback onTappingNext;
  final StateProvider<bool> listenToStatusOf;

  const UploadDocWidget({
    super.key,
    required this.onTappingNext,
    required this.listenToStatusOf,
  });

  @override
  State<UploadDocWidget> createState() => _UploadDocWidgetState();
}

class _UploadDocWidgetState extends State<UploadDocWidget> {
  File? docFile;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DottedBorder(
                  strokeWidth: 1.5,
                  radius: Radius.circular(10),
                  dashPattern: [8, 4],
                  strokeCap: StrokeCap.round,
                  borderType: BorderType.RRect,
                  color: Colors.grey,
                  child: Container(
                    width: 280,
                    height: 320,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: docFile == null
                        ? const Icon(
                            Icons.file_copy_outlined,
                            size: 44,
                            color: AppColor.grey,
                          )
                        : ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: PDFView(
                              key: Key(docFile!.path),
                              filePath: docFile!.path,
                            ),
                          ),
                  ),
                ),
                SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.camera_alt,
                      ),
                    ),
                    Consumer(
                      builder: (context, ref, _) {
                        return ElevatedButton(
                          onPressed: () async {
                            FilePickerResult? result =
                                await FilePicker.platform.pickFiles(
                              type: FileType.custom,
                              allowedExtensions: ['pdf'],
                            );

                            if (result != null) {
                              ref.read(widget.listenToStatusOf.notifier).state =
                                  true;
                              setState(() {
                                docFile = File(result.files.single.path!);
                              });
                            }
                          },
                          child: Icon(
                            Icons.upload,
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Consumer(builder: (context, ref, _) {
          bool isEnabled = ref.watch(widget.listenToStatusOf);
          return CustomButton(
            label: AppLocalizations.of(context)!.next,
            margin: EdgeInsets.only(bottom: 4, right: 4),
            onPressed: isEnabled ? widget.onTappingNext : () {},
            isEnabled: isEnabled,
          );
        }),
      ],
    );
  }
}
