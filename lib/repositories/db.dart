import 'collection_repository.dart';
import 'collection_repository_interface.dart';

abstract class Db {
  CollectionRepository collection(String collection);
}

class EasyDb extends Db {
  static final EasyDb _instance = EasyDb._();

  static EasyDb get instance => _instance;

  EasyDb._();

  @override
  CollectionRepository collection(String collection) {
    return CollectionRepositoryImpl.setCollection(collection);
  }
}
