// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'go_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $homeRoute,
    ];

RouteBase get $homeRoute => GoRouteData.$route(
      path: '/',
      factory: $HomeRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'settings',
          factory: $SettingsRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'speech',
          factory: $SpeechRouteExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: 'speech-to-text',
              factory: $SpeechToTextRouteExtension._fromState,
            ),
          ],
        ),
        GoRouteData.$route(
          path: 'ocr-page',
          factory: $OcrRouteExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: 'upload-document',
              factory: $UploadDocRouteExtension._fromState,
            ),
            GoRouteData.$route(
              path: 'doc-camera-page',
              factory: $DocCameraRouteExtension._fromState,
            ),
          ],
        ),
        GoRouteData.$route(
          path: 'face-detection',
          factory: $FaceDetectionRouteExtension._fromState,
        ),
      ],
    );

extension $HomeRouteExtension on HomeRoute {
  static HomeRoute _fromState(GoRouterState state) => const HomeRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SettingsRouteExtension on SettingsRoute {
  static SettingsRoute _fromState(GoRouterState state) => const SettingsRoute();

  String get location => GoRouteData.$location(
        '/settings',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SpeechRouteExtension on SpeechRoute {
  static SpeechRoute _fromState(GoRouterState state) => const SpeechRoute();

  String get location => GoRouteData.$location(
        '/speech',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SpeechToTextRouteExtension on SpeechToTextRoute {
  static SpeechToTextRoute _fromState(GoRouterState state) => SpeechToTextRoute(
        appTitle: state.uri.queryParameters['app-title']!,
        localeID: state.uri.queryParameters['locale-i-d']!,
      );

  String get location => GoRouteData.$location(
        '/speech/speech-to-text',
        queryParams: {
          'app-title': appTitle,
          'locale-i-d': localeID,
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $OcrRouteExtension on OcrRoute {
  static OcrRoute _fromState(GoRouterState state) => const OcrRoute();

  String get location => GoRouteData.$location(
        '/ocr-page',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $UploadDocRouteExtension on UploadDocRoute {
  static UploadDocRoute _fromState(GoRouterState state) =>
      const UploadDocRoute();

  String get location => GoRouteData.$location(
        '/ocr-page/upload-document',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $DocCameraRouteExtension on DocCameraRoute {
  static DocCameraRoute _fromState(GoRouterState state) =>
      const DocCameraRoute();

  String get location => GoRouteData.$location(
        '/ocr-page/doc-camera-page',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $FaceDetectionRouteExtension on FaceDetectionRoute {
  static FaceDetectionRoute _fromState(GoRouterState state) =>
      const FaceDetectionRoute();

  String get location => GoRouteData.$location(
        '/face-detection',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
