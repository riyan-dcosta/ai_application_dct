import 'package:ai_application_dct/features/ocr/presentation/pod/doc_upload_pod.dart';
import 'package:ai_application_dct/features/ocr/presentation/widgets/upload_doc_pageview.dart';
import 'package:ai_application_dct/features/ocr/presentation/widgets/upload_progress_ bar.dart';
import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class DocUploadPage extends ConsumerWidget {
  const DocUploadPage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return WillPopScope(
      onWillPop: () async {
        ref
          ..read(passportUploadStatusProvider.notifier).state = false
          ..read(idCardUploadStatusProvider.notifier).state = false
          ..read(pdfUploadStatusProvider.notifier).state = false;
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Upload Documents"),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Stack(
            children: [
              const Align(
                alignment: Alignment.center,
                child: UploadDocPageView(),
              ),
              Positioned(
                top: 8,
                left: 0,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    UploadProgressBar(
                      stepName: 'Passport',
                      stepNum: 1,
                      listenTo: passportUploadStatusProvider,
                    ),
                    UploadProgressBar(
                      stepName: 'Id Card',
                      stepNum: 2,
                      listenTo: idCardUploadStatusProvider,
                    ),
                    UploadProgressBar(
                      stepName: 'Pdf',
                      stepNum: 3,
                      listenTo: pdfUploadStatusProvider,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
