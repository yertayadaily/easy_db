import 'dart:convert';
import 'dart:io';

import 'package:easy_db/repositories/file_repository.dart';

class FileRepositoryImpl extends FileRepository {
  static final FileRepository _instance = FileRepositoryImpl._();

  List<Map> _cachedData = [];

  static FileRepository get instance => _instance;

  FileRepositoryImpl._();

  @override
  Future<List<Map>> read() async {
    final File file = File('db.json');
    final savedData = await file.readAsString();

    final data = jsonDecode(savedData);

    _cachedData = data.map<Map>((e) => e).toList();

    return _cachedData;
  }

  @override
  Future<void> write(Map data) async {
    _cachedData.add(data);

    await File('db.json').writeAsString(jsonEncode(_cachedData));
  }
}
