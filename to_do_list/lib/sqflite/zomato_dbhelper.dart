import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class ZomotoModel {
  final int? orderId;
  final String customerName;
  final String hotelName;
  final String food;
  final double bill;

  ZomotoModel({
    this.orderId,
    required this.customerName,
    required this.hotelName,
    required this.food,
    required this.bill,
  });

  Map<String, dynamic> zomatoMap() {
    return {
      'orderId': orderId,
      'customerName': customerName,
      'hotelName': hotelName,
      'food': food,
      'bill': bill,
    };
  }

  @override
  String toString() {
    return '{orderId: $orderId, customerName: $customerName, HotelName: $hotelName, Food:$food, BillAmount:$bill}';
  }
}

dynamic database;

Future<void> insertOrderData(ZomotoModel obj) async {
  final db = await database;
  await db.insert(
    "OrderFood",
    obj.zomatoMap(),
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
}

Future<List<ZomotoModel>> getAllOrders() async {
  final db = await database;
  List<Map<String, dynamic>> orderList = await db.query("OrderFood");

  return List.generate(orderList.length, (i) {
    return ZomotoModel(
      orderId: orderList[i]['orderId'],
      customerName: orderList[i]['customerName'],
      hotelName: orderList[i]['hotelName'],
      food: orderList[i]['food'],
      bill: orderList[i]['bill'],
    );
  });
}

Future<void> updateOrder(ZomotoModel obj) async {
  final db = await database;
  await db.update(
    "OrderFood",
    obj.zomatoMap(),
    where: 'orderId=?',
    whereArgs: [obj.orderId],
  );
}

Future<void> deleteOrder(int data) async {
  final db = await database;
  await db.delete(
    "OrderFood",
    where: 'orderId=?',
    whereArgs: [data],
  );
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  database = await openDatabase(
    join(await getDatabasesPath(), "ZomatoDB2.db"),
    version: 1,
    onCreate: (db, version) async {
      await db.execute(
          '''CREATE TABLE OrderFood(orderId INTEGER PRIMARY KEY AUTOINCREMENT,
        customerName TEXT,
        hotelName TEXT,
        food TEXT,
        bill REAL)''');
    },
  );

  ZomotoModel order1 = ZomotoModel(
    customerName: "mayur",
    hotelName: "swami",
    food: "manchurian",
    bill: 150.0,
  );

  // ZomotoModel order2 = ZomotoModel(
  //   customerName: "Dhanu",
  //   hotelName: "Gokul",
  //   food: "Paneer tikka",
  //   bill: 550.0,
  // );

  // ZomotoModel order3 = ZomotoModel(
  //   customerName: "Kunal",
  //   hotelName: "Sudama",
  //   food: "Paneer chingari",
  //   bill: 1100.0,
  // );

  // await insertOrderData(order1);
  // await insertOrderData(order2);
  //await insertOrderData(order3);

  //print(await getAllOrders());
  deleteOrder(3);

  //print(await getAllOrders());
  order1 = ZomotoModel(
    customerName: "manish",
    hotelName: "swami",
    food: "dosa",
    bill: 800.0,
  );
  updateOrder(order1);
  //print(await getAllOrders());
}
