import 'collection.dart';

abstract class Db {
  DataCollection collection(String collection);
}

class EasyDb extends Db {
  static final EasyDb _instance = EasyDb._();

  static EasyDb get instance => _instance;

  EasyDb._();

  @override
  DataCollection collection(String collection) {
    // TODO: implement _collection
    throw UnimplementedError();
  }
}
