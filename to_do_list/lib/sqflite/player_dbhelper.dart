import 'package:to_do_list/todo_model/player_model.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

dynamic database;

class DbHelper {
  Future<void> createDataBase() async {
    database = await openDatabase(
      join(await getDatabasesPath(), "PLAYERSDB"),
      version: 1,
      onCreate: (db, version) async {
        await db.execute(
            "CREATE TABLE PLAYER(NAME TEXT , JERNO INTEGER PRIMARY KEY, RUN INTEGER,AVG REAL);");
      },
    );
  }

  Future<void> insert(Player obj) async {
    final localDB = await database;
    localDB.insert(
      "PLAYERDB",
      obj.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<List<Player>> getPlayersData() async {
    final localdb = await database;
    List<Map<String, dynamic>> playersList = await localdb.query("PLAYERSDB");
    return List.generate(playersList.length, (i) {
      return Player(
        name: playersList[i]["name"],
        jerNo: playersList[i]['jerNo'],
        runs: playersList[i]["runs"],
        avg: playersList[i]['avg'],
      );
    });
  }
}
