import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqlite_api.dart';
import 'package:to_do_list/sqflite/employee_dbhelper.dart';
import 'package:to_do_list/todo_model/todo_model.dart';

dynamic db;

class Databasee {
  Future<void> getdata() async {
    db = openDatabase(
      join(await getDatabasesPath(), "TODOdb.db"),
      version: 1,
      onCreate: (db, version) async {
        await db.execute(
            "CREATE TABLE TODO(title TEXT, description TEXT,Date TEXT);");
      },
    );
  }

  Future<void> insert(ToDoModel obj) async {
    final localdb = await db;
    await localdb.insert("TODOdb", obj.toJson(),
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<void> update(ToDoModel obj) async {
    final localdb = await db;
    localdb.update(
      "TODOdb",
      obj.toJson(),
      id: ['id=?'],
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<void> delete() async {
    final localdb = await db;
    await localdb.delete(
      "TODOdb",
      id: ['id=?'],
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<List<ToDoModel>> getallData() async {
    final localdb = await db;
    List<Map<String, dynamic>> listOfTODO = await localdb.query("TODOdb");
    return List.generate(listOfTODO.length, (i) {
      return ToDoModel(
        title: listOfTODO[i]['title'],
        description: listOfTODO[i]["description"],
        date: listOfTODO[i]["date"],
      );
    });
  }
}
