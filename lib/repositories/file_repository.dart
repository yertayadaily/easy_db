abstract class FileRepository {
  Future<List<Map>> read();

  Future<void> write(Map data);
}
