import 'package:easy_db/easy_db.dart';

abstract class DbRepository {
  Collection collection(String collection);
}

class DbRepositoryImpl extends DbRepository {
  final Collection _collection;

  DbRepositoryImpl(this._collection);

  @override
  Collection collection(String collection) {
    return _collection;
  }
}
