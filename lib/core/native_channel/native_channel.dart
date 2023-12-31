// @ConfigurePigeon(PigeonOptions(
//   dartOut: 'lib/src/messages.g.dart',
//   dartOptions: DartOptions(),
//   cppOptions: CppOptions(namespace: 'pigeon_example'),
//   cppHeaderOut: 'windows/runner/messages.g.h',
//   cppSourceOut: 'windows/runner/messages.g.cpp',
//   kotlinOut:
//   'android/app/src/main/kotlin/dev/flutter/pigeon_example_app/Messages.g.kt',
//   kotlinOptions: KotlinOptions(),
//   javaOut: 'android/app/src/main/java/io/flutter/plugins/Messages.java',
//   javaOptions: JavaOptions(),
//   swiftOut: 'ios/Runner/Messages.g.swift',
//   swiftOptions: SwiftOptions(),
//   objcHeaderOut: 'macos/Runner/messages.g.h',
//   objcSourceOut: 'macos/Runner/messages.g.m',
//   // Set this to a unique prefix for your plugin or application, per Objective-C naming conventions.
//   objcOptions: ObjcOptions(prefix: 'PGN'),
//   copyrightHeader: 'pigeons/copyright.txt',
//   dartPackageName: 'pigeon_example_package',
// ))

import 'package:pigeon/pigeon.dart';
enum Code { one, two }

class MessageData {
  MessageData({required this.code, required this.data});

  String? name;
  String? description;
  Code code;
  Map<String?, String?> data;
}

@HostApi()
abstract class ExampleHostApi {
  String getHostLanguage();

  @async
  bool sendMessage(MessageData messageData);
}
