import 'package:final_todo_app/Screens/splash_screen.dart';
import 'package:flutter/material.dart';
import "package:google_fonts/google_fonts.dart";
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:intl/intl.dart';
import 'package:final_todo_app/sqflite/todo_dbhelper.dart';
import 'package:final_todo_app/todo_model/todo_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AdvanceToDoApplication extends StatefulWidget {
  const AdvanceToDoApplication({super.key});

  @override
  State<AdvanceToDoApplication> createState() => _AdvanceToDoApplicationState();
}

class _AdvanceToDoApplicationState extends State<AdvanceToDoApplication> {
  List tasklist = [];

  TextEditingController titleController = TextEditingController();
  TextEditingController descController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  DateTime? pickedDate;
  String? username;

  @override
  void initState() {
    getallDatafromDataBase();
    super.initState();
  }

  void getallDatafromDataBase() async {
    var pref = await SharedPreferences.getInstance();
    username = pref.getString(SplashScreen.prefkey);
    db = await DataBase.getdata();
    final data = await DataBase.getallData();
    setState(() {
      tasklist = data;
    });
  }

  void submit(bool doEdit, [ToDoModel? obj]) async {
    if (titleController.text.trim().isNotEmpty &&
        descController.text.trim().isNotEmpty &&
        dateController.text.trim().isNotEmpty) {
      if (!doEdit) {
        final newTask = ToDoModel(
          title: titleController.text.trim(),
          description: descController.text.trim(),
          date: dateController.text.trim(),
        );
        await DataBase.insertIntoDataBase(newTask);
      } else {
        obj!.id = obj.id;
        obj.title = titleController.text.trim();
        obj.description = descController.text.trim();
        obj.date = dateController.text.trim();

        await DataBase.updateIntoDataBase(obj);
      }
      clearController();
    }
    getallDatafromDataBase();
    setState(() {});
  }

  void clearController() {
    titleController.clear();
    descController.clear();
    dateController.clear();
  }

  void deleteTask(ToDoModel obj) async {
    await DataBase.deleteFromDataBase(obj);
    getallDatafromDataBase();
    setState(() {});
  }

  void editTask(ToDoModel obj) {
    titleController.text = obj.title;
    descController.text = obj.description;
    dateController.text = obj.date;

    showBottomSheet(true, obj);
  }

  void showBottomSheet(bool doEdit, [ToDoModel? obj]) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (ctx) {
        return Padding(
          padding: EdgeInsets.only(
            top: 10,
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Create Task",
                style: GoogleFonts.quicksand(
                    fontWeight: FontWeight.w700, fontSize: 25),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextField(
                      controller: titleController,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color.fromRGBO(120, 53, 197, 1),
                                width: 2),
                            borderRadius: BorderRadius.circular(10)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color.fromRGBO(120, 53, 197, 1),
                                width: 2),
                            borderRadius: BorderRadius.circular(10)),
                        labelText: "Title",
                        labelStyle: const TextStyle(
                            color: Color.fromRGBO(120, 53, 197, 1)),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextField(
                      controller: descController,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color.fromRGBO(120, 53, 197, 1), width: 2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color.fromRGBO(120, 53, 197, 1), width: 2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        labelText: "Description",
                        labelStyle: const TextStyle(
                            color: Color.fromRGBO(120, 53, 197, 1)),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextField(
                      onTap: () async {
                        pickedDate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2023),
                            lastDate: DateTime(2025));
                        String formattedDate =
                            DateFormat.yMMMd().format(pickedDate!);
                        setState(() {
                          dateController.text = formattedDate;
                        });
                      },
                      readOnly: true,
                      controller: dateController,
                      decoration: InputDecoration(
                        suffixIcon: const Icon(Icons.calendar_month),
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color.fromRGBO(120, 53, 197, 1),
                                width: 2),
                            borderRadius: BorderRadius.circular(10)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color.fromRGBO(120, 53, 197, 1),
                                width: 2),
                            borderRadius: BorderRadius.circular(10)),
                        labelText: "Date",
                        labelStyle: const TextStyle(
                            color: Color.fromRGBO(120, 53, 197, 1)),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25.0, vertical: 10),
                      child: Container(
                        width: double.infinity,
                        height: 60,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(120, 53, 197, 1),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: TextButton(
                          onPressed: () {
                            if (!doEdit) {
                              submit(doEdit);
                            } else {
                              submit(doEdit, obj);
                            }
                            Navigator.pop(context);
                          },
                          child: Text(
                            'Submit',
                            style: GoogleFonts.quicksand(
                              fontSize: 25,
                              fontWeight: FontWeight.w700,
                              color: const Color.fromRGBO(255, 255, 255, 1),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
          backgroundColor: const Color.fromRGBO(128, 53, 197, 1),
          onPressed: () {
            showBottomSheet(false);
          },
          label: Text(
            "Add Task",
            style: GoogleFonts.quicksand(
                color: const Color.fromRGBO(255, 255, 255, 1)),
          )),
      backgroundColor: const Color.fromRGBO(120, 53, 197, 1),
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 25, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Good Morning",
                    style: GoogleFonts.quicksand(
                        fontSize: 20,
                        color: const Color.fromRGBO(255, 255, 255, 1)),
                  ),
                  Text(
                    '$username...',
                    style: GoogleFonts.quicksand(
                        fontSize: 30,
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        fontWeight: FontWeight.w700),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(top: 20),
                width: double.infinity,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                    color: Color.fromRGBO(197, 194, 194, 1)),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "CREATE TO  DO LIST",
                        style: GoogleFonts.quicksand(
                            fontSize: 15,
                            color: const Color.fromRGBO(0, 0, 0, 1),
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Expanded(
                        child: Container(
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30)),
                              color: Color.fromRGBO(255, 255, 255, 1)),
                          child: ListView.builder(
                              itemCount: tasklist.length,
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                if (tasklist.isEmpty) {
                                  return Center(
                                      child: Text(
                                    "No Pending task",
                                    style: GoogleFonts.quicksand(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ));
                                } else {
                                  return Slidable(
                                    endActionPane: ActionPane(
                                      extentRatio: 0.15,
                                      motion: const ScrollMotion(),
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 10),
                                          child: Column(
                                            children: [
                                              GestureDetector(
                                                onTap: () {
                                                  editTask(tasklist[index]);
                                                },
                                                child: Container(
                                                  height: 30,
                                                  width: 30,
                                                  decoration:
                                                      const BoxDecoration(
                                                          color:
                                                              Color.fromRGBO(
                                                                  120,
                                                                  53,
                                                                  197,
                                                                  1),
                                                          shape:
                                                              BoxShape.circle),
                                                  child: const Icon(
                                                    Icons.edit,
                                                    color: Color.fromRGBO(
                                                        255, 255, 255, 1),
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  deleteTask(tasklist[index]);
                                                },
                                                child: Container(
                                                  height: 30,
                                                  width: 30,
                                                  decoration:
                                                      const BoxDecoration(
                                                          color:
                                                              Color.fromRGBO(
                                                                  120,
                                                                  53,
                                                                  197,
                                                                  1),
                                                          shape:
                                                              BoxShape.circle),
                                                  child: const Icon(
                                                    Icons.delete_outline,
                                                    color: Color.fromRGBO(
                                                        255, 255, 255, 1),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                    child: Card(
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(15),
                                            child: Container(
                                              height: 52,
                                              width: 52,
                                              decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Color.fromRGBO(
                                                    187, 180, 180, 1),
                                              ),
                                              child: const Center(
                                                child: Icon(
                                                  Icons.edit,
                                                  color: Color.fromRGBO(
                                                      255, 255, 255, 1),
                                                ),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  tasklist[index].title,
                                                  style: GoogleFonts.quicksand(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                                const SizedBox(
                                                  height: 5,
                                                ),
                                                Text(
                                                  tasklist[index].description,
                                                  style: GoogleFonts.quicksand(
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                                const SizedBox(
                                                  height: 5,
                                                ),
                                                Text(
                                                  tasklist[index].date,
                                                  style: GoogleFonts.quicksand(
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                )
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10, vertical: 15),
                                            child: Checkbox(
                                              checkColor: Colors.white,
                                              activeColor: Colors.green,
                                              shape: const CircleBorder(),
                                              onChanged: (val) {
                                                setState(() {
                                                  tasklist[index].done =
                                                      !tasklist[index].done;
                                                });
                                              },
                                              value: tasklist[index].done,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                }
                              }),
                        ),
                      )
                    ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
