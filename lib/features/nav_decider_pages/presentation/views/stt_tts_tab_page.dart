import 'package:ai_application_dct/core/constants/colors.dart';
import 'package:ai_application_dct/features/speech_to_text/presentation/pages/stt_locale_decider_screen.dart';
import 'package:ai_application_dct/features/text_to_speech/presentation/views/text_to_speech_page.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

@RoutePage()
class SttTtsTabPage extends StatefulWidget {
  const SttTtsTabPage({super.key});

  @override
  State<SttTtsTabPage> createState() => _SttTtsTabPageState();
}

class _SttTtsTabPageState extends State<SttTtsTabPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.speech),
        centerTitle: true,
        bottom: TabBar(
          controller: _tabController,
          labelColor: AppColor.white,
          unselectedLabelColor: AppColor.submarineBlue,
          indicatorColor: AppColor.emeraldGreen,
          tabs: [
            Tab(
              child: Text(AppLocalizations.of(context)!.speechToText),
            ),
            Tab(
              child: Text(AppLocalizations.of(context)!.textToSpeech),
            )
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          STTLocaleDeciderPage(),
          TextToSpeechPage(),
        ],
      ),
    );
  }
}
