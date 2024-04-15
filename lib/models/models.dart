abstract class CollectionData<T> {
  final String key;
  final T value;
  final String collectionName;

  CollectionData({
    required this.key,
    required this.value,
    required this.collectionName,
  });
}

class StringData extends CollectionData<String> {
  StringData({
    required super.key,
    required super.value,
    required super.collectionName,
  });
}

class BooleanData extends CollectionData<bool> {
  BooleanData({
    required super.key,
    required super.value,
    required super.collectionName,
  });
}
