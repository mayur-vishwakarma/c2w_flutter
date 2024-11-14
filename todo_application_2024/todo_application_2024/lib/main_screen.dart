import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_application_2024/task_model.dart';

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
        date: "20 Nov 2024"),
    Task(
        title: "Lorem Ipsum is simply setting industry. ",
        description:
            "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,,,,Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
        date: "20 Nov 2024"),
    Task(
        title: "Lorem Ipsum is simply setting industry. ",
        description:
            "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
        date: "20 Nov 2024"),
  ];

  List<Color> tasksBGColor = [
    const Color.fromRGBO(250, 232, 232, 1),
    const Color.fromRGBO(232, 237, 250, 1),
    const Color.fromRGBO(250, 249, 232, 1),
    const Color.fromRGBO(250, 232, 250, 1),
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
          ),
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

    String newselectedDate = DateFormat('d MMM yyyy').format(selectedDate!);
    dateController.text = newselectedDate;
  }

  void showbottomSheet(bool isEdit, [Task? updatdeTask]) {
    showModalBottomSheet(
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
                          color: const Color.fromRGBO(0, 139, 148, 1)),
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
                            color: Color.fromRGBO(0, 139, 148, 1),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                            width: 0.5,
                            style: BorderStyle.solid,
                            color: Color.fromRGBO(0, 139, 148, 1),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                            width: 0.5,
                            style: BorderStyle.solid,
                            color: Color.fromRGBO(0, 139, 148, 1),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                            width: 0.5,
                            style: BorderStyle.solid,
                            color: Color.fromRGBO(0, 139, 148, 1),
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
                          color: const Color.fromRGBO(0, 139, 148, 1)),
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
                            color: Color.fromRGBO(0, 139, 148, 1),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                            width: 0.5,
                            style: BorderStyle.solid,
                            color: Color.fromRGBO(0, 139, 148, 1),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                            width: 0.5,
                            style: BorderStyle.solid,
                            color: Color.fromRGBO(0, 139, 148, 1),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                            width: 0.5,
                            style: BorderStyle.solid,
                            color: Color.fromRGBO(0, 139, 148, 1),
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
                          color: const Color.fromRGBO(0, 139, 148, 1)),
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
                            color: Color.fromRGBO(0, 139, 148, 1),
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
                            color: Color.fromRGBO(0, 139, 148, 1),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                            width: 0.5,
                            style: BorderStyle.solid,
                            color: Color.fromRGBO(0, 139, 148, 1),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                            width: 0.5,
                            style: BorderStyle.solid,
                            color: Color.fromRGBO(0, 139, 148, 1),
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
                              color: const Color.fromRGBO(0, 139, 148, 1),
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
      appBar: AppBar(
        title: Text(
          "To-do list",
          style: GoogleFonts.quicksand(
              fontSize: 26,
              fontWeight: FontWeight.w700,
              color: const Color.fromRGBO(255, 255, 255, 1)),
        ),
        backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
      ),
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: const Color.fromRGBO(0, 139, 148, 1),
        onPressed: () {
          showbottomSheet(false);
        },
        child: const Icon(
          Icons.add,
          size: 46,
          color: Color.fromRGBO(255, 255, 255, 1),
        ),
      ),
      body: ListView.builder(
        itemCount: task.length,
        itemBuilder: (context, index) {
          return Container(
            height: 115,
            padding: const EdgeInsets.only(left: 10, right: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: tasksBGColor[index % 4]),
            margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 52,
                      width: 52,
                      decoration: const BoxDecoration(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 0),
                              blurRadius: 5,
                              spreadRadius: 0,
                              color: Color.fromRGBO(0, 0, 0, 0.7),
                            )
                          ],
                          shape: BoxShape.circle),
                      child: SvgPicture.asset(
                        'assets/svg/iconimg.svg',
                        height: 19,
                        width: 24,
                        fit: BoxFit.scaleDown,
                        semanticsLabel: 'acmelogo',
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      task[index].date,
                      style: GoogleFonts.quicksand(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(132, 132, 132, 1)),
                    )
                  ],
                ),
                Expanded(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, top: 10),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          task[index].title,
                          style: GoogleFonts.quicksand(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromRGBO(0, 0, 0, 1)),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        SizedBox(
                          child: Text(
                            task[index].description,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.quicksand(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromRGBO(84, 84, 84, 1)),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            GestureDetector(
                              onTap: () {
                                titleController.text = task[index].title;
                                descriprionController.text =
                                    task[index].description;
                                dateController.text = task[index].date;
                                showbottomSheet(true, task[index]);
                              },
                              child: const Icon(
                                Icons.edit_outlined,
                                color: Color.fromRGBO(0, 139, 148, 1),
                                size: 18,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            GestureDetector(
                              onTap: () {
                                task.removeAt(index);
                                setState(() {});
                              },
                              child: const Icon(
                                Icons.delete_outline_outlined,
                                color: Color.fromRGBO(0, 139, 148, 1),
                                size: 18,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
