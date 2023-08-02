import 'package:hive/hive.dart';

class Pref {
  static late final Pref _instance;

  static const _prefBox = 'prefBox';
  static const _localeKey = 'locale';

  final Box<dynamic> _box;
  Pref._(this._box);

  static Future<void> start() async {
    final box = await Hive.openBox<dynamic>(_prefBox);
    _instance = Pref._(box);
  }

  static Pref get instance => _instance;

  T _getValue<T>(dynamic key, {required T defaultValue}) =>
      _box.get(key, defaultValue: defaultValue) as T;

  Future<void> _setValue<T>(dynamic key, T value) => _box.put(key, value);

  //Locale
  String getLocaleId() => _getValue(_localeKey, defaultValue: 'en');
  Future<void> setLocaleId(String localeId) => _setValue(_localeKey, localeId);
}
