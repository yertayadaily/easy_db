import 'dart:convert';
import 'dart:io';

import 'package:easy_db/repositories/file_repository.dart';

class FileRepositoryImpl extends FileRepository {
  final List<Map<dynamic, dynamic>> _cachedData = [];

  @override
  Future<List<Map>> read() async {
    if (_cachedData.isNotEmpty) {
      return _cachedData;
    }

    final File file = File('db.json');
    final savedData = await file.readAsString();

    return jsonDecode(savedData);
  }

  @override
  Future<void> write(Map data) async {
    _cachedData.add(data);

    await File('db.json').writeAsString(jsonEncode(_cachedData));
  }
}
