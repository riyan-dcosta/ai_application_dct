import 'package:ai_application_dct/features/ocr/presentation/pod/doc_upload_pod.dart';
import 'package:ai_application_dct/features/ocr/presentation/widgets/upload_doc_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final pageViewIndexProvider = StateProvider((ref) => 1);

class UploadDocPageView extends StatefulWidget {
  const UploadDocPageView({super.key});

  @override
  State<UploadDocPageView> createState() => _UploadDocPageViewState();
}

class _UploadDocPageViewState extends State<UploadDocPageView> {
  late final PageController _pageController;

  @override
  void initState() {
    super.initState();

    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      return PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          UploadDocWidget(
            onTappingNext: () {
              ref.read(pageViewIndexProvider.notifier).state = 2;
              _pageController.nextPage(
                duration: Duration(milliseconds: 500),
                curve: Curves.ease,
              );
            },
            listenToStatusOf: passportUploadStatusProvider,
          ),
          UploadDocWidget(
            onTappingNext: () {
              ref.read(pageViewIndexProvider.notifier).state = 3;
              _pageController.nextPage(
                duration: Duration(milliseconds: 500),
                curve: Curves.ease,
              );
            },
            listenToStatusOf: idCardUploadStatusProvider,
          ),
          UploadDocWidget(
            onTappingNext: () {
              //Next Step
            },
            listenToStatusOf: pdfUploadStatusProvider,
          ),
        ],
      );
    });
  }
}
