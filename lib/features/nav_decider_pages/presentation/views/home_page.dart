import 'package:ai_application_dct/core/common/widgets/custom_button.dart';
import 'package:ai_application_dct/core/config/routes/go_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.aiApplication),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                const SettingsRoute().go(context);
              },
              icon: const Icon(Icons.settings_outlined))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              label: AppLocalizations.of(context)!.speech,
              onPressed: () {
                const SpeechRoute().go(context);
              },
            ),
            CustomButton(
              label: AppLocalizations.of(context)!.ocr,
              onPressed: () {
                const OcrRoute().go(context);
                // context.go('/doc_upload');
              },
            ),
            CustomButton(
              label: AppLocalizations.of(context)!.faceDetection,
              onPressed: () async {
                bool? resp = await const IntegrateCameraModuleRoute()
                    .push<bool>(context);
                print("camera closed $resp");
              },
            ),
          ],
        ),
      ),
    );
  }
}
