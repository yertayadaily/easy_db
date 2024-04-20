import 'dart:convert';
import 'dart:io';

import 'package:easy_db/repositories/file_repository.dart';

class FileRepositoryImpl extends FileRepository {
  static final FileRepository _instance = FileRepositoryImpl._();

  List<Map<String, dynamic>> _cachedData = [];

  static FileRepository get instance => _instance;

  FileRepositoryImpl._();

  @override
  Future<List<Map>> read() async {
    final File file = File('db.json');
    final savedData = await file.readAsString();

    final List data = jsonDecode(savedData);

    _cachedData = data.map<Map<String, dynamic>>((e) => jsonDecode(e)).toList();

    return _cachedData;
  }

  @override
  Future<void> write(Map<String, dynamic> data) async {
    _cachedData.add(data);

    await File('db.json').writeAsString(jsonEncode(_cachedData));
  }
}
