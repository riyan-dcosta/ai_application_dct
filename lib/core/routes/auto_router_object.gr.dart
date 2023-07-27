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
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    MethodChannelHomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MethodChannelHomePage(),
      );
    },
    SpeechToTextRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SpeechToTextPage(),
      );
    },
    STTLocaleDeciderRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const STTLocaleDeciderPage(),
      );
    },
  };
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
/// [SpeechToTextPage]
class SpeechToTextRoute extends PageRouteInfo<void> {
  const SpeechToTextRoute({List<PageRouteInfo>? children})
      : super(
          SpeechToTextRoute.name,
          initialChildren: children,
        );

  static const String name = 'SpeechToTextRoute';

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
