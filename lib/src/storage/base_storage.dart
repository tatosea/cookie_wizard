import 'dart:io';

abstract class BaseStorage {
  void save(Uri uri, List<Cookie> cookies);

  Cookie get(Uri uri);

  List<Cookie> getAll();

  void clear(Uri uri);

  void clearAll();
}
