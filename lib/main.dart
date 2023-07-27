import 'package:ai_application_dct/core/routes/auto_router_object.dart';
import 'package:ai_application_dct/features/face_detection/presentation/pod/face_detection_pod.dart';
import 'package:ai_application_dct/features/speech_to_text/presentation/pages/stt_locale_decider_screen.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ProviderScope(child: MainPage()));
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      // routerConfig: AppRouter().config(),
      routerConfig: AutoRouterSingleton.routeConfig,
      title: 'AI Application DCTech',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
