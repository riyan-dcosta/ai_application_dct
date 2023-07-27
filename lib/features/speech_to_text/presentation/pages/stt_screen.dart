import 'package:ai_application_dct/features/speech_to_text/presentation/pod/stt_pod.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class STTPage extends ConsumerWidget {
  final String appBarTitle;
  final String localeId;
  const STTPage({
    required this.appBarTitle,
    required this.localeId,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(
      sttPodProvider,
      (previous, next) {
        next.maybeWhen(
          permissionDenied: () => ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: const Text("Please Allow Permissions to continue"),
              backgroundColor: Theme.of(context).colorScheme.error,
              behavior: SnackBarBehavior.floating,
            ),
          ),
          orElse: () => null,
        );
      },
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(appBarTitle),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer(
              builder: (context, ref, _) {
                return ref.watch(sttPodProvider).maybeMap(
                      success: (state) => Text(state.speechText),
                      listening: (_) => Text("Listening..."),
                      orElse: () => SizedBox.shrink(),
                    );
              },
            ),
            SizedBox(height: 20),
            // ElevatedButton(
            //   onPressed: () async {
            //     var locales = await _speechToText.locales();
            //     var localeNames = <String>[];
            //     locales.forEach((element) {
            //       // log(element.name);
            //       if (element.name == 'Arabic (Qatar)') {
            //         log(element.localeId, name: 'Id Arab');
            //       } else if (element.name == 'English (India)') {
            //         log(element.localeId, name: 'Id Eng');
            //       }
            //     });
            //   },
            //   child: Text("get locales"),
            // ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Consumer(
        builder: (context, ref, child) {
          return FloatingActionButton(
            onPressed: () {
              if (ref.read(sttProvider).isNotListening) {
                ref.read(sttPodProvider.notifier).startListening(localeId);
              } else {
                ref.read(sttPodProvider.notifier).stopListening();
              }
            },
            child: ref.watch(sttPodProvider).maybeMap(
                  listening: (_) => const Icon(Icons.stop),
                  orElse: () => const Icon(Icons.mic),
                ),
          );
        },
      ),
    );
  }
}
