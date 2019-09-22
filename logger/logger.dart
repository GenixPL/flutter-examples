class Log {
  Log._privateConstructor();

  static const int _log_lvl = 1;

  static d(String tag, String msg) {
    if (_log_lvl > 0) {
      print('$tag: $msg');
    }
  }
}