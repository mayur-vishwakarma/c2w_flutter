import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:to_do_list/todo_model/employee_model.dart';

dynamic database;

class DBHelper {
  static Future<void> createDataBase() async {
    database = await openDatabase(
      join(await getDatabasesPath(), "EmployeeDB"),
      version: 1,
      onCreate: (db, version) {
        db.execute(
            "CREATE TABLE EMPLOYEES(EMPID INTEGER PRIMARY KEY, EMPNAME TEXT, SALARY REAL, COMPANYNAME TEXT,LOC TEXT);");
      },
    );
  }

  static Future<void> insert(Employee obj) async {
    final localdb = await database;
    localdb.insert(
      "EMPLOYEES",
      obj.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  static Future<List<Employee>> getAllData() async {
    final localdb = await database;
    List<Map<String, dynamic>> employeeList = await localdb.query("EMPLOYEES");
    return List.generate(
      employeeList.length,
      (i) {
        return Employee(
          empId: employeeList[i]['empId'],
          empName: employeeList[i]['empName'],
          salary: employeeList[i]["salary"],
          companyName: employeeList[i]["companyName"],
          loc: employeeList[i]["loc"],
        );
      },
    );
  }
}
