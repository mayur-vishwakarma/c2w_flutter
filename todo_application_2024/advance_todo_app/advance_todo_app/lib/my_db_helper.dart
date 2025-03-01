import 'dart:async';

import 'package:advance_todo_app/models/task_model.dart';
import 'package:path/path.dart';
// import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

dynamic database;

class MyDBHelper {
  static Future<Database> openConnection() async {
    return openDatabase(
      join(await getDatabasesPath(), "tododb20.db"),
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''create table todo1(
            taskId integer primary key autoincrement ,
            title text,
            description text,
            date text,
            ischecked int
            );''');
      },
    );
  }

  static Future<List<Task>> getAllTask() async {
    Database localdb = await database;
    List<Map<String, dynamic>> templist = await localdb.query('todo1');
    return List.generate(
      templist.length,
      (i) {
        return Task(
            taskId: templist[i]['taskId'],
            title: templist[i]['title'],
            description: templist[i]['description'],
            date: templist[i]['date']);
      },
    );
  }

  Future<void> addTask(Task tObj) async {
    Database localdb = await database;
    await localdb.insert('todo1', tObj.tomap(),
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<void> updateTask(Task tObj) async {
    Database localDb = await database;
    await localDb.update(
      'todo1',
      tObj.tomap(),
      where: 'taskId=?',
      whereArgs: [tObj.taskId],
    );
  }

  void deleteTask(Task tObj) async {
    Database localDb = await database;
    await localDb.delete(
      'todo1',
      where: 'taskId=?',
      whereArgs: [tObj.taskId],
    );
  }
}
