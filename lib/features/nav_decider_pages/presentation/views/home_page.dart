import 'package:ai_application_dct/core/routes/auto_router_object.dart';
import 'package:ai_application_dct/core/common/widgets/custom_button.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
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
                context.router.push(const SttTtsTabRoute());
              },
            ),
            CustomButton(
              label: 'OCR',
              onPressed: () {
                context.router.push(const DocUploadRoute());
              },
            ),
            CustomButton(
              label: 'Face Detection',
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
