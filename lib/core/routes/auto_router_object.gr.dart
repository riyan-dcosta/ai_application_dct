// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'auto_router_object.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    CameraImageStreamRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CameraImageStreamPage(),
      );
    },
    FaceDetectionRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const FaceDetectionPage(),
      );
    },
    MethodChannelHomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MethodChannelHomePage(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    SttTtsTabRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SttTtsTabPage(),
      );
    },
    DocUploadRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DocUploadPage(),
      );
    },
    STTLocaleDeciderRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const STTLocaleDeciderPage(),
      );
    },
    STTRoute.name: (routeData) {
      final args = routeData.argsAs<STTRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: STTPage(
          appBarTitle: args.appBarTitle,
          localeId: args.localeId,
          key: args.key,
        ),
      );
    },
    TextToSpeechRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TextToSpeechPage(),
      );
    },
    SettingsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SettingsPage(),
      );
    },
  };
}

/// generated route for
/// [CameraImageStreamPage]
class CameraImageStreamRoute extends PageRouteInfo<void> {
  const CameraImageStreamRoute({List<PageRouteInfo>? children})
      : super(
          CameraImageStreamRoute.name,
          initialChildren: children,
        );

  static const String name = 'CameraImageStreamRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [FaceDetectionPage]
class FaceDetectionRoute extends PageRouteInfo<void> {
  const FaceDetectionRoute({List<PageRouteInfo>? children})
      : super(
          FaceDetectionRoute.name,
          initialChildren: children,
        );

  static const String name = 'FaceDetectionRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MethodChannelHomePage]
class MethodChannelHomeRoute extends PageRouteInfo<void> {
  const MethodChannelHomeRoute({List<PageRouteInfo>? children})
      : super(
          MethodChannelHomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'MethodChannelHomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SttTtsTabPage]
class SttTtsTabRoute extends PageRouteInfo<void> {
  const SttTtsTabRoute({List<PageRouteInfo>? children})
      : super(
          SttTtsTabRoute.name,
          initialChildren: children,
        );

  static const String name = 'SttTtsTabRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [DocUploadPage]
class DocUploadRoute extends PageRouteInfo<void> {
  const DocUploadRoute({List<PageRouteInfo>? children})
      : super(
          DocUploadRoute.name,
          initialChildren: children,
        );

  static const String name = 'DocUploadRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [STTLocaleDeciderPage]
class STTLocaleDeciderRoute extends PageRouteInfo<void> {
  const STTLocaleDeciderRoute({List<PageRouteInfo>? children})
      : super(
          STTLocaleDeciderRoute.name,
          initialChildren: children,
        );

  static const String name = 'STTLocaleDeciderRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [STTPage]
class STTRoute extends PageRouteInfo<STTRouteArgs> {
  STTRoute({
    required String appBarTitle,
    required String localeId,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          STTRoute.name,
          args: STTRouteArgs(
            appBarTitle: appBarTitle,
            localeId: localeId,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'STTRoute';

  static const PageInfo<STTRouteArgs> page = PageInfo<STTRouteArgs>(name);
}

class STTRouteArgs {
  const STTRouteArgs({
    required this.appBarTitle,
    required this.localeId,
    this.key,
  });

  final String appBarTitle;

  final String localeId;

  final Key? key;

  @override
  String toString() {
    return 'STTRouteArgs{appBarTitle: $appBarTitle, localeId: $localeId, key: $key}';
  }
}

/// generated route for
/// [TextToSpeechPage]
class TextToSpeechRoute extends PageRouteInfo<void> {
  const TextToSpeechRoute({List<PageRouteInfo>? children})
      : super(
          TextToSpeechRoute.name,
          initialChildren: children,
        );

  static const String name = 'TextToSpeechRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SettingsPage]
class SettingsRoute extends PageRouteInfo<void> {
  const SettingsRoute({List<PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
