import 'package:easy_db/repositories/db.dart';

void main() async {
  final db = EasyDb.instance.collection('posts');

  db.setString('awdawdawd', 'App');
}
