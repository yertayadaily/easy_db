abstract class DataCollection<T> {
  Future<void> setString(String key, String value);

  Future<String> getString(String key);
}

class DataCollectionImpl extends DataCollection {
  @override
  Future<String> getString(String key) async {
    return '';
  }

  @override
  Future<void> setString(String key, String value) async {
    print("OK");
  }
}
