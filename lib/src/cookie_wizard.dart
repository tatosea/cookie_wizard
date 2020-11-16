import 'dart:io';

import 'package:cookie_wizard/src/storage/in_memory_storage.dart';
import 'package:cookie_wizard/src/storage/local_storage.dart';

import 'src.dart';

class CookieWizard {
  BaseStorage _storage;

  CookieWizard({
    BaseStorage storage,
  }) {
    if (storage != null) {
      _storage = storage;
      return;
    }
    if (Platform.isAndroid) {
      _storage = LocalStorage();
    } else if (Platform.isIOS) {
      _storage = LocalStorage();
    } else {
      _storage = InMemoryStorage();
    }
  }

  void saveCookie(Uri uri, List<Cookie> cookies) {
    _storage.save(uri, cookies);
  }

  Cookie loadCookie(Uri uri) {
    return _storage.get(uri);
  }

  List<Cookie> loadAllCookie() {
    return _storage.getAll();
  }

  Map<String, String> extract(
    Uri uri, {
    List<String> cookiesName,
  }) {}

  void clear(Uri uri) {
    _storage.clear(uri);
  }

  void clearAll() {
    _storage.clearAll();
  }
}
