import 'package:advance_todo_app/task_model.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:intl/intl.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  TextEditingController titleController = TextEditingController();
  TextEditingController descriprionController = TextEditingController();
  TextEditingController dateController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  List<Task> task = [
    Task(
        title: "Lorem Ipsum is simply setting industry. ",
        description:
            "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
        date: "20 Nov 2024",
        ischecked: false),
    Task(
        title: "Lorem Ipsum is simply setting industry. ",
        description:
            "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,,,,Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
        date: "20 Nov 2024",
        ischecked: false),
    Task(
        title: "Lorem Ipsum is simply setting industry. ",
        description:
            "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
        date: "20 Nov 2024",
        ischecked: false),
  ];

  void submitForm(bool isEdit, [Task? updateTask]) {
    if (_formKey.currentState!.validate()) {
      if (isEdit && updateTask != null) {
        updateTask.title = titleController.text.trim();
        updateTask.description = descriprionController.text.trim();
        updateTask.date = dateController.text.trim();
      } else {
        task.add(
          Task(
              title: titleController.text.trim(),
              description: descriprionController.text.trim(),
              date: dateController.text.trim(),
              ischecked: false),
        );
      }

      FocusScope.of(context).unfocus();
      Navigator.pop(context);

      titleController.clear();
      descriprionController.clear();
      dateController.clear();

      setState(() {});
    }
  }

  void selectDate() async {
    DateTime? selectedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime(2026));

    selectedDate ??= DateTime.now();

    String newselectedDate = DateFormat('d MMM yyyy').format(selectedDate);
    dateController.text = newselectedDate;
  }

  void showSnackBars() {
    ScaffoldMessenger.of(context).clearSnackBars();
    setState(() {});
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          "Task Completed...",
          style: GoogleFonts.quicksand(
            color: const Color.fromRGBO(0, 0, 0, 1),
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: Colors.green.shade600,
      ),
    );
  }

  void showbottomSheet(bool isEdit, [Task? updatdeTask]) {
    showModalBottomSheet(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
                left: 15,
                right: 15,
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Form(
              key: _formKey,
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Create Task",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.quicksand(
                            color: const Color.fromRGBO(0, 0, 0, 1),
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Title",
                      style: GoogleFonts.quicksand(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(89, 57, 241, 1)),
                    ),
                    TextFormField(
                      controller: titleController,
                      validator: (val) {
                        if (val == null || val.isEmpty) {
                          return "Title Cannot Be Empty";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                            width: 0.5,
                            style: BorderStyle.solid,
                            color: Color.fromRGBO(89, 57, 241, 1),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                            width: 0.5,
                            style: BorderStyle.solid,
                            color: Color.fromRGBO(89, 57, 241, 1),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                            width: 0.5,
                            style: BorderStyle.solid,
                            color: Color.fromRGBO(89, 57, 241, 1),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                            width: 0.5,
                            style: BorderStyle.solid,
                            color: Color.fromRGBO(89, 57, 241, 1),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Description",
                      style: GoogleFonts.quicksand(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(89, 57, 241, 1),
                      ),
                    ),
                    TextFormField(
                      controller: descriprionController,
                      validator: (val) {
                        if (val == null || val.isEmpty) {
                          return "Decription Cannot Be Empty";
                        }

                        return null;
                      },
                      decoration: InputDecoration(
                        disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                            width: 0.5,
                            style: BorderStyle.solid,
                            color: Color.fromRGBO(89, 57, 241, 1),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                            width: 0.5,
                            style: BorderStyle.solid,
                            color: Color.fromRGBO(89, 57, 241, 1),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                            width: 0.5,
                            style: BorderStyle.solid,
                            color: Color.fromRGBO(89, 57, 241, 1),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                            width: 0.5,
                            style: BorderStyle.solid,
                            color: Color.fromRGBO(89, 57, 241, 1),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Date",
                      style: GoogleFonts.quicksand(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(89, 57, 241, 1)),
                    ),
                    TextFormField(
                      controller: dateController,
                      validator: (val) {
                        if (val == null || val.isEmpty) {
                          return "Date Cannot Be Empty";
                        }
                        return null;
                      },
                      onTap: () {
                        selectDate();
                      },
                      readOnly: true,
                      decoration: InputDecoration(
                        disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                            width: 0.5,
                            style: BorderStyle.solid,
                            color: Color.fromRGBO(89, 57, 241, 1),
                          ),
                        ),
                        suffixIcon: const Icon(
                          Icons.calendar_month_outlined,
                          color: Color.fromRGBO(0, 0, 0, 0.7),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                            width: 0.5,
                            style: BorderStyle.solid,
                            color: Color.fromRGBO(89, 57, 241, 1),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                            width: 0.5,
                            style: BorderStyle.solid,
                            color: Color.fromRGBO(89, 57, 241, 1),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                            width: 0.5,
                            style: BorderStyle.solid,
                            color: Color.fromRGBO(89, 57, 241, 1),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            submitForm(isEdit, updatdeTask);
                          },
                          child: Container(
                            height: 50,
                            width: 330,
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(89, 57, 241, 1),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: const [
                                BoxShadow(
                                    blurRadius: 10,
                                    spreadRadius: 1,
                                    color: Color.fromRGBO(0, 0, 0, 0.1),
                                    offset: Offset(0, 0))
                              ],
                            ),
                            child: Center(
                              child: Text(
                                "Submit",
                                style: GoogleFonts.inter(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    color:
                                        const Color.fromRGBO(255, 255, 255, 1)),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(111, 81, 255, 1),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 45, left: 29),
            child: Text(
              "Good Morning",
              style: GoogleFonts.quicksand(
                  fontSize: 22,
                  fontWeight: FontWeight.w400,
                  color: const Color.fromRGBO(255, 255, 255, 1)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 29),
            child: Text(
              "Mayur...",
              style: GoogleFonts.quicksand(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  color: const Color.fromRGBO(255, 255, 255, 1)),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(top: 15),
              decoration: const BoxDecoration(
                color: Color.fromRGBO(217, 217, 217, 1),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Center(
                    child: Text(
                      "CREATE TO DO LIST",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.quicksand(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(0, 0, 0, 1)),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          const SizedBox(height: 20),
                          ListView.builder(
                            itemCount: task.length,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return Slidable(
                                direction: Axis.horizontal,
                                closeOnScroll: true,
                                endActionPane: ActionPane(
                                  motion: const ScrollMotion(),
                                  extentRatio: 0.13,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              FocusScope.of(context).unfocus();
                                            });
                                            titleController.text =
                                                task[index].title;
                                            descriprionController.text =
                                                task[index].description;
                                            dateController.text =
                                                task[index].date;
                                            showbottomSheet(true, task[index]);
                                          },
                                          child: Container(
                                            margin: const EdgeInsets.symmetric(
                                                vertical: 2, horizontal: 10),
                                            height: 30,
                                            width: 32,
                                            decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Color.fromRGBO(
                                                  89, 57, 241, 1),
                                            ),
                                            child: const Icon(
                                              size: 20,
                                              Icons.edit_outlined,
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 1),
                                            ),
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              FocusScope.of(context).unfocus();
                                            });
                                            task.remove(task[index]);
                                            setState(() {});
                                          },
                                          child: Container(
                                            margin: const EdgeInsets.symmetric(
                                                vertical: 2, horizontal: 10),
                                            height: 30,
                                            width: 32,
                                            decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Color.fromRGBO(
                                                  89, 57, 241, 1),
                                            ),
                                            child: const Icon(
                                              size: 20,
                                              Icons.delete_outline,
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 1),
                                            ),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                child: Container(
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 3),
                                  decoration: const BoxDecoration(
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                      boxShadow: [
                                        BoxShadow(
                                            blurRadius: 20,
                                            spreadRadius: 0,
                                            offset: Offset(0, 4),
                                            color:
                                                Color.fromRGBO(0, 0, 0, 0.08))
                                      ]),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 10),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 52,
                                        width: 52,
                                        decoration: const BoxDecoration(
                                            color: Color.fromRGBO(
                                                217, 217, 217, 1),
                                            shape: BoxShape.circle),
                                        child: SvgPicture.asset(
                                          fit: BoxFit.scaleDown,
                                          'assets/svg/iconimg.svg',
                                          height: 19,
                                          width: 24,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              task[index].title,
                                              style: GoogleFonts.quicksand(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.w500,
                                                  color: const Color.fromRGBO(
                                                      0, 0, 0, 1)),
                                            ),
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              task[index].description,
                                              style: GoogleFonts.quicksand(
                                                  fontSize: 9,
                                                  fontWeight: FontWeight.w500,
                                                  color: const Color.fromRGBO(
                                                      0, 0, 0, 0.7)),
                                            ),
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              task[index].date,
                                              style: GoogleFonts.quicksand(
                                                fontSize: 8,
                                                fontWeight: FontWeight.w400,
                                                color: const Color.fromRGBO(
                                                    0, 0, 0, 0.7),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      GestureDetector(
                                        onTap: () async {
                                          task[index].ischecked =
                                              !task[index].ischecked;
                                          setState(() {});
                                          if (task[index].ischecked) {
                                            await Future.delayed(
                                                const Duration(seconds: 2));
                                            task.remove(task[index]);
                                            showSnackBars();
                                          }
                                        },
                                        child: Icon(
                                          color: task[index].ischecked
                                              ? const Color.fromRGBO(
                                                  0, 255, 0, 1)
                                              : const Color.fromRGBO(
                                                  1, 1, 1, 1),
                                          Icons.check_circle,
                                          size: 15,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: const Color.fromRGBO(89, 57, 241, 1),
        onPressed: () {
          showbottomSheet(false);
        },
        child: const Icon(
          Icons.add,
          size: 46,
          color: Color.fromRGBO(255, 255, 255, 1),
        ),
      ),
    );
  }
}