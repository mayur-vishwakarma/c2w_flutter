import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:to_do_list/todo_model/todo_model.dart';

dynamic db;

class Databasee {
  static Future<void> getdata() async {
    db = openDatabase(
      join(await getDatabasesPath(), "TODOdb.db"),
      version: 1,
      onCreate: (db, version) async {
        await db.execute(
            "CREATE TABLE TODO(id INT PRIMARY KEY AUTOINCREMENT,title TEXT, description TEXT,Date TEXT);");
      },
    );
  }

  static Future<void> insert(ToDoModel obj) async {
    final localdb = await db;
    await localdb.insert("TODO", obj.toJson(),
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  static Future<void> update(ToDoModel obj) async {
    final localdb = await db;
    localdb.update(
      "TODO",
      obj.toJson(),
      id: ['id=?'],
      whereArgs: [obj.id],
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  static Future<void> delete(ToDoModel obj) async {
    final localdb = await db;
    await localdb.delete(
      "TODO",
      where: 'id=?',
      whereArgs: [obj.id],
    );
  }

  static Future<List<ToDoModel>> getallData() async {
    final localdb = await db;
    List<Map<String, dynamic>> listOfTODO = await localdb.query("TODO");
    return List.generate(listOfTODO.length, (i) {
      return ToDoModel(
        title: listOfTODO[i]['title'],
        description: listOfTODO[i]["description"],
        date: listOfTODO[i]["date"],
      );
    });
  }
}
