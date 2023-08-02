import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:hive/hive.dart';
import 'package:ai_application_dct/core/util/pref_util.dart';

Future<void> initDependencies() async {
  final appDocDir = await path_provider.getApplicationDocumentsDirectory();
  Hive.init(appDocDir.path);
  await Pref.start();
}
