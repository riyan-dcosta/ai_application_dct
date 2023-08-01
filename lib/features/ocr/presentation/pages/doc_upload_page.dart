import 'package:ai_application_dct/features/ocr/presentation/pod/doc_upload_pod.dart';
import 'package:ai_application_dct/features/ocr/presentation/widgets/upload_doc_pageview.dart';
import 'package:ai_application_dct/features/ocr/presentation/widgets/upload_progress_ bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class DocUploadPage extends ConsumerWidget {
  const DocUploadPage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return WillPopScope(
      onWillPop: () async {
        ref
          ..read(passportUploadStatusProvider.notifier).state = false
          ..read(idCardUploadStatusProvider.notifier).state = false
          ..read(pdfUploadStatusProvider.notifier).state = false
          ..read(pageViewIndexProvider.notifier).state = 1;
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.uploadDocuments),
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
                      stepName: AppLocalizations.of(context)!.passport,
                      stepNum: 1,
                      listenTo: passportUploadStatusProvider,
                    ),
                    UploadProgressBar(
                      stepName: AppLocalizations.of(context)!.idCard,
                      stepNum: 2,
                      listenTo: idCardUploadStatusProvider,
                    ),
                    UploadProgressBar(
                      stepName: AppLocalizations.of(context)!.pdf,
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
