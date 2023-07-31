import 'package:ai_application_dct/core/constants/strings.dart';
import 'package:ai_application_dct/features/face_detection/presentation/pages/camera_image_stream.dart';
import 'package:ai_application_dct/features/nav_decider_pages/presentation/views/home_page.dart';
import 'package:ai_application_dct/features/nav_decider_pages/presentation/views/stt_tts_tab_page.dart';
import 'package:ai_application_dct/features/ocr/presentation/pages/doc_upload_page.dart';
import 'package:ai_application_dct/features/settings/presentation/pages/settings_page.dart';
import 'package:ai_application_dct/features/speech_to_text/presentation/pages/stt_screen.dart';
import 'package:ai_application_dct/features/text_to_speech/presentation/views/text_to_speech_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'go_router_object.g.dart';

class GoRouterObject {
  GoRouterObject._();

  static final router = GoRouter(
    initialLocation: PathString.homePage,
    routes: $appRoutes,
  );
  static final router2 = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomePage(),
        routes: [
          GoRoute(
              path: PathString.settingPage,
              builder: (context, state) => const SettingsPage()),
          GoRoute(
              path: 'doc_upload',
              builder: (context, state) => const DocUploadPage()),
          GoRoute(
            path: 'speech',
            builder: (context, state) => const SttTtsTabPage(),
            routes: [
              GoRoute(
                  path: 'english_to_arabic',
                  builder: (context, state) {
                    Map<String, dynamic> parameters = state.pathParameters;
                    (String, String) val =
                        (parameters['appTitle'], parameters['localeID']);
                    return STTPage(appBarTitle: val.$1, localeId: val.$2);
                  }),
              GoRoute(
                  path: 'arabic_to_english/:appTitle/:localeID',
                  builder: (context, state) {
                    Map<String, dynamic> parameters = state.pathParameters;
                    (String, String) val =
                        (parameters['appTitle'], parameters['localeID']);
                    return STTPage(appBarTitle: val.$1, localeId: val.$2);
                  }),
            ],
          ),
          GoRoute(
              path: 'face_detection',
              builder: (context, state) => const CameraImageStreamPage()),
        ],
      ),
    ],
  );
}

final router = GoRouter(
  initialLocation: PathString.homePage,
  routes: $appRoutes,
);

@TypedGoRoute<HomeRoute>(path: PathString.homePage, routes: [
  TypedGoRoute<SettingsRoute>(path: PathString.settingPage),
  TypedGoRoute<SpeechRoute>(path: PathString.speechPage, routes: [
    TypedGoRoute<SpeechToTextRoute>(path: PathString.speechToText),
  ]),
  TypedGoRoute<FaceDetectionRoute>(path: PathString.faceDetectionPage),
])
class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const HomePage();
}

class SettingsRoute extends GoRouteData {
  const SettingsRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SettingsPage();
}

class SpeechRoute extends GoRouteData {
  const SpeechRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SttTtsTabPage();
}

class SpeechToTextRoute extends GoRouteData {
  const SpeechToTextRoute({required this.appTitle, required this.localeID});

  final String appTitle;
  final String localeID;

  @override
  Widget build(BuildContext context, GoRouterState state) => STTPage(
        appBarTitle: appTitle,
        localeId: localeID,
      );
}

class FaceDetectionRoute extends GoRouteData {
  const FaceDetectionRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const CameraImageStreamPage();
}
