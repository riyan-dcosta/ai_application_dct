import 'package:ai_application_dct/features/face_detection/presentation/pages/camera_image_stream.dart';
import 'package:ai_application_dct/features/nav_decider_pages/presentation/views/home_page.dart';
import 'package:ai_application_dct/features/nav_decider_pages/presentation/views/stt_tts_tab_page.dart';
import 'package:ai_application_dct/features/ocr/presentation/pages/doc_upload_page.dart';
import 'package:ai_application_dct/features/speech_to_text/presentation/pages/stt_screen.dart';
import 'package:go_router/go_router.dart';

class GoRouterObject {
  GoRouterObject._();

  static final router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomePage(),
        routes: [
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
