import 'package:ai_application_dct/features/nav_decider_pages/presentation/views/home_page.dart';
import 'package:ai_application_dct/features/method_channel/presentation/pages/method_channel_home.dart';
import 'package:ai_application_dct/features/nav_decider_pages/presentation/views/stt_tts_tab_page.dart';
import 'package:ai_application_dct/features/speech_to_text/presentation/pages/stt_locale_decider_screen.dart';
import 'package:ai_application_dct/features/speech_to_text/presentation/views/speech_to_text_page.dart';
import 'package:ai_application_dct/features/text_to_speech_page/presentation/views/text_to_speech_page.dart';
import 'package:auto_route/auto_route.dart';

part 'auto_router_object.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, initial: true),
        AutoRoute(page: SpeechToTextRoute.page),
        AutoRoute(page: MethodChannelHomeRoute.page),
        AutoRoute(page: STTLocaleDeciderRoute.page),
        AutoRoute(page: SttTtsTabRoute.page),
      ];
}
