class Collection<T> {
  final String name;
  final List<CollectionData> dataList;

  Collection({
    required this.name,
    required this.dataList,
  });
}

class CollectionData {
  final String key;
  final String value;
}
