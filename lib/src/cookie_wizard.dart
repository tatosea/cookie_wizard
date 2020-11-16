import 'dart:io';

import 'src.dart';

class CookieWizard {
  CookieWizard(BaseStorage storage);

  void saveCookie(Uri uri, List<Cookie> cookies) {}

  Cookie loadCookie(Uri uri) {}

  List<Cookie> loadAllCookie() {}

  Map<String, String> extract(
    Uri uri, {
    List<String> cookiesName,
  }) {}

  void clear() {}

  void clearAll() {}
}
