import 'dart:_http';

import '../src.dart';

class InMemoryStorage implements BaseStorage {
  InMemoryStorage() : super();

  @override
  void clear(Uri uri) {
    // TODO: implement clear
  }

  @override
  void clearAll() {
    // TODO: implement clearAll
  }

  @override
  Cookie get(Uri uri) {
    // TODO: implement get
    throw UnimplementedError();
  }

  @override
  List<Cookie> getAll() {
    // TODO: implement getAll
    throw UnimplementedError();
  }

  @override
  void save(Uri uri, List<Cookie> cookies) {
    // TODO: implement save
  }
}
