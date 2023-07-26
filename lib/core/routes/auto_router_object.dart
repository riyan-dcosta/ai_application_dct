import 'package:ai_application_dct/features/home_page/presentation/views/home_page.dart';
import 'package:ai_application_dct/features/speech_to_text/presentation/views/speech_to_text_page.dart';
import 'package:auto_route/auto_route.dart';

part 'auto_router_object.gr.dart';

// class AutoRouterSingleton {
//   static final routeConfig = AppRouter();
//
//   AutoRouterSingleton._();
// }

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, initial: true),
        AutoRoute(page: SpeechToTextRoute.page),
      ];
}
