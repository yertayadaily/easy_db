abstract class CollectionData<T> {
  final String key;
  final T value;
  final String collectionName;

  CollectionData({
    required this.key,
    required this.value,
    required this.collectionName,
  });

  T fromJson();

  Map<String, dynamic> toJson() {
    return {
      'key': key,
      'value': value,
      'collectionName': collectionName,
    };
  }
}

class StringData extends CollectionData<String> {
  StringData({
    required super.key,
    required super.value,
    required super.collectionName,
  });

  @override
  String fromJson() {
    // TODO: implement fromJson
    throw UnimplementedError();
  }
}

class BooleanData extends CollectionData<bool> {
  BooleanData({
    required super.key,
    required super.value,
    required super.collectionName,
  });

  @override
  bool fromJson() {
    // TODO: implement fromJson
    throw UnimplementedError();
  }
}

class JsonData extends CollectionData<Map<String, dynamic>> {
  JsonData({
    required super.key,
    required super.value,
    required super.collectionName,
  });

  @override
  Map<String, dynamic> fromJson() {
    // TODO: implement fromJson
    throw UnimplementedError();
  }
}
