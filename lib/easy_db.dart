abstract class Collection<T> {
  Future<T> setString();

  Future<void> getString(String key);
}

class CollectionImpl extends Collection {
  @override
  Future<String> getString(String key) {
    // TODO: implement getString
    throw UnimplementedError();
  }

  @override
  Future<void> setString() {
    // TODO: implement setString
    throw UnimplementedError();
  }
}
