//holds all db queries
import 'package:flutter_todo_app/models/task.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {

  Future<Database> db() async {
    return openDatabase(
      join(await getDatabasesPath(), 'todo.db'),
      onCreate: (db,version) {
        return db.execute(
          "CREATE TABLE task(id INTEGER PRIMARY KEY, name TEXT, description TEXT)",
        );
      },
    );
  }

  Future<void> insertTask(Task task) async{
    Database _db = await db();
    await _db.insert('tasks', task.toMap(), conflictAlgorithm: ConflictAlgorithm.replace);

  }
}