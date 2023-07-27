import 'package:ai_application_dct/core/routes/auto_router_object.dart';
import 'package:ai_application_dct/features/nav_decider_pages/presentation/widgets/custom_button.dart';
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
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              label: 'Speech',
              routeName: SttTtsTabRoute(),
            ),
            CustomButton(
              label: 'OCR',
              routeName: DocUploadRoute(),
            ),
          ],
        ),
      ),
    );
  }
}
