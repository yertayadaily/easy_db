import 'collection_repository.dart';
import 'collection_repository_interface.dart';
import 'file_repository_impl.dart';

abstract class Db {
  CollectionRepository collection(String collection);
}

class EasyDb extends Db {
  static final EasyDb _instance = EasyDb._();

  static EasyDb get instance => _instance;

  EasyDb._();

  @override
  CollectionRepository collection(String collection) {
    FileRepositoryImpl.instance.read();

    return CollectionRepositoryImpl.setCollection(collection);
  }
}
