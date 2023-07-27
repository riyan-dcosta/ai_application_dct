import 'package:ai_application_dct/features/speech_to_text/presentation/pages/stt_locale_decider_screen.dart';
import 'package:ai_application_dct/features/text_to_speech_page/presentation/views/text_to_speech_page.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

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
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text("Speech"),
        centerTitle: true,
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(
              child: Text('Speech to Text'),
            ),
            Tab(
              child: Text('Text to Speech'),
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
