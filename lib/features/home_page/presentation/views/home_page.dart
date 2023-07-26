

import 'package:ai_application_dct/core/routes/auto_router_object.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AI Application'),
      ),
      body: Column(
        children: [
          ElevatedButton(onPressed: (){
            context.router.push(const SpeechToTextRoute());
          }, child: const Text("Speech To Text Page"))
        ],
      ),
    );
  }
}
