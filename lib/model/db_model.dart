import "package:sqflite/sqflite.dart"
import "package:path/path.dart"
import "./todo_model.dart"

class DatabaseConnection {
  Database? _database;
  Future<Database> get database async {
   final dbPath  = await getDatabasesPath();
   const dbName = "todo.db";
    final path = join(dbPath, dbName);
    _database = await openDatabase(path, version: 1,onCreate:_createDB);
  }
}