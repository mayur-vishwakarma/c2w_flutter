import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TodoApplication(),
    );
  }
}

class TodoApplication extends StatefulWidget {
  const TodoApplication({super.key});

  @override
  State<TodoApplication> createState() => _TodoApplicationState();
}

class _TodoApplicationState extends State<TodoApplication> {
  TextEditingController titleController = TextEditingController();
  TextEditingController descController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  DateTime? pickedDate;

  void showBottomSheet() {
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
                                  color: Color.fromRGBO(0, 139, 148, 1),
                                  width: 2),
                              borderRadius: BorderRadius.circular(10)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Color.fromRGBO(0, 139, 148, 1),
                                  width: 2),
                              borderRadius: BorderRadius.circular(10)),
                          labelText: "Title",
                          labelStyle: const TextStyle(
                              color: Color.fromRGBO(0, 139, 148, 1)),
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
                                  color: Color.fromRGBO(0, 139, 148, 1),
                                  width: 2),
                              borderRadius: BorderRadius.circular(10)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Color.fromRGBO(0, 139, 148, 1),
                                  width: 2),
                              borderRadius: BorderRadius.circular(10)),
                          labelText: "Description",
                          labelStyle: const TextStyle(
                              color: Color.fromRGBO(0, 139, 148, 1)),
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
                                  color: Color.fromRGBO(0, 139, 148, 1),
                                  width: 2),
                              borderRadius: BorderRadius.circular(10)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Color.fromRGBO(0, 139, 148, 1),
                                  width: 2),
                              borderRadius: BorderRadius.circular(10)),
                          labelText: "Date",
                          labelStyle: const TextStyle(
                              color: Color.fromRGBO(0, 139, 148, 1)),
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
                            color: const Color.fromRGBO(0, 139, 148, 1),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: TextButton(
                            onPressed: () {
                              if (titleController.text.isEmpty ||
                                  descController.text.isEmpty ||
                                  dateController.text.isEmpty) {
                                return;
                              } else {
                                tasklist.add(ToDoModel(
                                    title: titleController.text,
                                    description: descController.text,
                                    date: dateController.text));
                                dateController.clear();
                                titleController.clear();
                                descController.clear();
                                Navigator.pop(context);
                                
                              }
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
        });
  }

  final List<Color> cardColorList = const [
    Color.fromRGBO(250, 232, 232, 1),
    Color.fromRGBO(232, 237, 250, 1),
    Color.fromRGBO(250, 249, 232, 1),
    Color.fromRGBO(250, 232, 250, 1)
  ];

  List tasklist = [
    ToDoModel(
        title: "Buy Fruits",
        description: "grapes, apple, banana, mango, chiku",
        date: 'Mar 12,2024'),
    ToDoModel(
        title: "Buy Vegetables",
        description:
            "leafy veggies, lady finger, tomato, potato, paneer, mushroom",
        date: 'Feb 12,2024'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromRGBO(0, 139, 148, 1),
        shape: const CircleBorder(),
        elevation: 5,
        onPressed: showBottomSheet,
        child: const Icon(
          Icons.add,
          size: 40,
          color: Color.fromRGBO(255, 255, 255, 1.0),
        ),
      ),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
        centerTitle: true,
        title: Text(
          "To-do list",
          style: GoogleFonts.quicksand(
              fontSize: 30, fontWeight: FontWeight.w700, color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: tasklist.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Container(
              width: 330,
              height: 112,
              decoration: BoxDecoration(
                border: Border.all(width: 2),
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                color: cardColorList[index % cardColorList.length],
                boxShadow: const [
                  BoxShadow(
                      offset: Offset(5, 5),
                      color: Color.fromRGBO(2, 167, 177, 0.2),
                      blurRadius: 5,
                      spreadRadius: 1),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Container(
                              height: 52,
                              width: 52,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 20,
                                        color: Color.fromRGBO(0, 0, 0, 0.2)),
                                  ]),
                              child: Image.network(
                                  "https://uxwing.com/wp-content/themes/uxwing/download/editing-user-action/edit-round-line-icon.png")),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Text(
                                  tasklist[index].title,
                                  style: GoogleFonts.quicksand(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  tasklist[index].description,
                                  style: GoogleFonts.quicksand(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          Text(
                            tasklist[index].date,
                            style: GoogleFonts.quicksand(
                                fontSize: 10, fontWeight: FontWeight.w500),
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {},
                            child: const Icon(
                              Icons.edit,
                              color: Color.fromRGBO(0, 139, 148, 1),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          GestureDetector(
                            onTap: () {
                              tasklist.remove(index);
                            },
                            child: const Icon(
                              Icons.delete_outline,
                              color: Color.fromRGBO(0, 139, 148, 1),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class ToDoModel {
  String title;
  String description;
  String date;

  ToDoModel({
    required this.title,
    required this.description,
    required this.date,
  });
}
