import 'package:ai_application_dct/features/nav_decider_pages/presentation/views/home_page.dart';
import 'package:ai_application_dct/features/method_channel/presentation/pages/method_channel_home.dart';
import 'package:ai_application_dct/features/nav_decider_pages/presentation/views/stt_tts_tab_page.dart';
import 'package:ai_application_dct/features/ocr/presentation/pages/doc_upload_page.dart';
import 'package:ai_application_dct/features/speech_to_text/presentation/pages/stt_locale_decider_screen.dart';
import 'package:ai_application_dct/features/speech_to_text/presentation/pages/stt_screen.dart';
import 'package:ai_application_dct/features/text_to_speech_page/presentation/views/text_to_speech_page.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

part 'auto_router_object.gr.dart';

class AutoRouterSingleton {
  static final config = AppRouter().config();

  AutoRouterSingleton._();
}

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, initial: true),
        AutoRoute(page: MethodChannelHomeRoute.page),
        AutoRoute(page: STTLocaleDeciderRoute.page),
        AutoRoute(page: SttTtsTabRoute.page),
        AutoRoute(page: STTRoute.page),
        AutoRoute(page: DocUploadRoute.page),
      ];
}
