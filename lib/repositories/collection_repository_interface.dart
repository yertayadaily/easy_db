abstract class CollectionRepository<T> {
  // Return String data, if key not exists return empty string

  String getString(String key);

  // Set new data, if @key exists update data

  Future<void> setString(String key, String value);
}
