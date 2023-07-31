import 'package:ai_application_dct/core/common/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AI Application'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              label: 'Speech',
              onPressed: () {
                // context.router.push(const SttTtsTabRoute());
                context.go('/speech');
              },
            ),
            CustomButton(
              label: 'OCR',
              onPressed: () {
                context.go('/doc_upload');
              },
            ),
            CustomButton(
              label: 'Face Detection',
              onPressed: () {
                context.go('/face_detection');
              },
            ),
          ],
        ),
      ),
    );
  }
}
