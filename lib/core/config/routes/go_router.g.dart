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
              path: 'speech_to_text',
              factory: $SpeechToTextRouteExtension._fromState,
            ),
          ],
        ),
        GoRouteData.$route(
          path: 'ocr_page',
          factory: $OcrRouteExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: 'upload_document',
              factory: $UploadDocRouteExtension._fromState,
            ),
          ],
        ),
        GoRouteData.$route(
          path: 'face_detection',
          factory: $FaceDetectionRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'integrate_camera_module',
          factory: $IntegrateCameraModuleRouteExtension._fromState,
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
        '/speech/speech_to_text',
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
        '/ocr_page',
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
        '/ocr_page/upload_document',
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
        '/face_detection',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $IntegrateCameraModuleRouteExtension on IntegrateCameraModuleRoute {
  static IntegrateCameraModuleRoute _fromState(GoRouterState state) =>
      const IntegrateCameraModuleRoute();

  String get location => GoRouteData.$location(
        '/integrate_camera_module',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
