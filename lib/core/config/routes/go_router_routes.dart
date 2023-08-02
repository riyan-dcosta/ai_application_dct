part of 'go_router.dart';

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

class OcrRoute extends GoRouteData {
  const OcrRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const OcrPage();
}

class UploadDocRoute extends GoRouteData {
  const UploadDocRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const UploadDocPage();
}

class FaceDetectionRoute extends GoRouteData {
  const FaceDetectionRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const CameraImageStreamPage();
}
