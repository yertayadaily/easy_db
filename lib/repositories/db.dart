import 'collection_repository.dart';
import 'collection_repository_interface.dart';
import 'file_repository_impl.dart';

abstract class Db {
  CollectionRepository collection(String collection);

  // Clear db

  Future<void> flush();

  /// Start web server
  /// Show all data as json

  Future<void> startWebServer();

  Future<Map<String, dynamic>> export();

  Future<void> import(List<Map<String, dynamic>> data);
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

  @override
  Future<void> flush() {
    // TODO: implement flush
    throw UnimplementedError();
  }

  @override
  Future<void> startWebServer() {
    // TODO: implement startWebServer
    throw UnimplementedError();
  }

  @override
  Future<Map<String, dynamic>> export() {
    // TODO: implement export
    throw UnimplementedError();
  }

  @override
  Future<void> import(List<Map<String, dynamic>> data) {
    // TODO: implement import
    throw UnimplementedError();
  }
}
