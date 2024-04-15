abstract class CollectionRepository<T> {
  String getString(String key);

  Future<void> setString(String key, String value);
}
