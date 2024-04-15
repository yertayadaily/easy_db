import 'package:easy_db/repositories/db.dart';

void main() async {
  final db = EasyDb.instance.collection('posts');

  db.setString('key1', 'App');
  db.setString('key2', 'Ok');
  db.setString('key3', 'Data');
}
