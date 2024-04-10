import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart' as path;
import 'package:final_todo_app/todo_model/todo_model.dart';

dynamic db;

class DataBase {
  static Future<Database> getdata() async {
    return openDatabase(
      path.join(await getDatabasesPath(), "TODODB5.db"),
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''CREATE TABLE TODO(id INTEGER PRIMARY KEY ,
            title TEXT,
            description TEXT,
            date TEXT,
            done BOOLEAN)''');
      },
    );
  }

  static Future<void> insertIntoDataBase(ToDoModel obj) async {
    final localdb = await db;
    await localdb.insert(
      "TODO",
      obj.toJson(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  static Future<void> updateIntoDataBase(ToDoModel obj) async {
    final localdb = await db;
    localdb.update(
      "TODO",
      obj.toJson(),
      where: 'id = ?',
      whereArgs: [obj.id],
    );
  }

  static Future<void> deleteFromDataBase(ToDoModel obj) async {
    final localdb = await db;
    await localdb.delete(
      "TODO",
      where: 'id = ?',
      whereArgs: [obj.id],
    );
  }

  static Future<List<ToDoModel>> getallData() async {
    final localdb = await db;
    List<Map<String, dynamic>> tasklist = await localdb.query("TODO");
    return List.generate(tasklist.length, (i) {
      return ToDoModel(
        id: tasklist[i]['id'],
        title: tasklist[i]['title'],
        description: tasklist[i]["description"],
        date: tasklist[i]["date"],
      );
    });
  }
}
