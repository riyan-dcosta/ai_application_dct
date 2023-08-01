import 'package:ai_application_dct/core/common/widgets/custom_button.dart';
import 'package:ai_application_dct/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TextToSpeechPage extends StatefulWidget {
  const TextToSpeechPage({super.key});

  @override
  State<TextToSpeechPage> createState() => _TextToSpeechPageState();
}

class _TextToSpeechPageState extends State<TextToSpeechPage> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            controller: _controller,
            minLines: 4,
            maxLines: 8,
            cursorColor: AppColor.emeraldGreen,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: AppColor.grey,
            ),
            decoration: const InputDecoration(
              filled: true,
              fillColor: AppColor.white,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: AppColor.submarineBlue,
                  width: 2,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: AppColor.accentColor,
                  width: 2,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          CustomButton(
            label: AppLocalizations.of(context)!.speak,
            height: 44,
            padding: EdgeInsets.all(4),
            margin: EdgeInsets.symmetric(vertical: 4),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
