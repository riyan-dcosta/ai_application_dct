class UserLocalDataSource {
  UserLocalDataSource() : userLocalDataSource = <String, Object?>{};
  final Map<String, Object?> userLocalDataSource;

  void write<T extends Object?>({required String name, T? value}) {
    userLocalDataSource[name] = value;
  }

  T? read<T extends Object?>({required String name}) {
    final value = userLocalDataSource[name];
    if (value is T) return value;
    return null;
  }
}
