import 'package:ai_application_dct/core/common/widgets/custom_button.dart';
import 'package:ai_application_dct/core/config/routes/go_router_object.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AI Application'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                const SettingsRoute().go(context);
                // context.go("/settings");
              },
              icon: const Icon(Icons.settings))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              label: 'Speech',
              onPressed: () {
                const SpeechRoute().go(context);
                // context.router.push(const SttTtsTabRoute());
                // context.go('/speech');
              },
            ),
            CustomButton(
              label: 'OCR',
              onPressed: () {
                // context.go('/doc_upload');
              },
            ),
            CustomButton(
              label: 'Face Detection',
              onPressed: () {
                // context.go('/face_detection');
              },
            ),
          ],
        ),
      ),
    );
  }
}
