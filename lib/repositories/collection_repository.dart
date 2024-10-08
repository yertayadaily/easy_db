import 'package:easy_db/models/models.dart';
import 'package:easy_db/repositories/file_repository_impl.dart';
import 'collection_repository_interface.dart';

class CollectionRepositoryImpl extends CollectionRepository {
  static CollectionRepository setCollection(String collectionName) =>
      _instance(collectionName);

  static CollectionRepository _instance(String collectionName) {
    return CollectionRepositoryImpl._(collectionName);
  }

  CollectionRepositoryImpl._(this.collectionName);

  final String collectionName;
  final List<CollectionData> data = [];

  @override
  String getString(String key) {
    return '';
  }

  @override
  Future<void> setString(String key, String value) async {
    FileRepositoryImpl.instance.write({
      key: value,
      'type': 'string',
      'collection': collectionName,
    });
  }
}
