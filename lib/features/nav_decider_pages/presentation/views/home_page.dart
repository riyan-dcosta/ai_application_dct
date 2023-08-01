import 'package:ai_application_dct/core/routes/auto_router_object.dart';
import 'package:ai_application_dct/core/common/widgets/custom_button.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

@RoutePage()
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
            onPressed: () => context.router.push(const SettingsRoute()),
            icon: Icon(
              Icons.settings_outlined,
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              label: AppLocalizations.of(context)!.speech,
              onPressed: () {
                context.router.push(const SttTtsTabRoute());
              },
            ),
            CustomButton(
              label: AppLocalizations.of(context)!.ocr,
              onPressed: () {
                context.router.push(const DocUploadRoute());
              },
            ),
            CustomButton(
              label: AppLocalizations.of(context)!.faceDetection,
              onPressed: () {
                context.router.push(const CameraImageStreamRoute());
              },
            ),
          ],
        ),
      ),
    );
  }
}
