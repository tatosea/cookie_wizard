import 'dart:io';

import 'src.dart';

abstract class CookieWizard {
  CookieWizard(BaseStorage storage);

  void saveCookie(Uri uri, List<Cookie> cookies);

  Cookie loadCookie(Uri uri);

  List<Cookie> loadAllCookie();

  void clear();

  void clearAll();
}
