import 'package:ai_application_dct/core/constants/strings.dart';
import 'package:ai_application_dct/features/face_detection/presentation/pages/camera_image_stream.dart';
import 'package:ai_application_dct/features/nav_decider_pages/presentation/views/home_page.dart';
import 'package:ai_application_dct/features/nav_decider_pages/presentation/views/stt_tts_tab_page.dart';
import 'package:ai_application_dct/features/ocr/presentation/pages/doc_upload_page.dart';
import 'package:ai_application_dct/features/settings/presentation/pages/settings_page.dart';
import 'package:ai_application_dct/features/speech_to_text/presentation/pages/stt_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'go_router_object.g.dart';

class GoRouterObject {
  GoRouterObject._();

  static final router = GoRouter(
    initialLocation: PathString.homePage,
    routes: $appRoutes,
  );
}

@TypedGoRoute<HomeRoute>(path: PathString.homePage, routes: [
  TypedGoRoute<SettingsRoute>(path: PathString.settingPage),
  TypedGoRoute<SpeechRoute>(path: PathString.speechPage, routes: [
    TypedGoRoute<SpeechToTextRoute>(path: PathString.speechToText),
  ]),
  TypedGoRoute<DocUploadRoute>(path: PathString.uploadDocument),
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

class DocUploadRoute extends GoRouteData {
  const DocUploadRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const DocUploadPage();
}

class FaceDetectionRoute extends GoRouteData {
  const FaceDetectionRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const CameraImageStreamPage();
}
