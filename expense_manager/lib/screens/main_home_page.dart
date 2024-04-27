import 'package:expense_manager/widgets/bottomsheet_textfield.dart';
import 'package:expense_manager/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:expense_manager/models/expense_model.dart';

class MainHomePage extends StatefulWidget {
  const MainHomePage({super.key});

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  TextEditingController dateController = TextEditingController();
  TextEditingController amtController = TextEditingController();
  TextEditingController categoryController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  List<Expense> expenseList = [
    Expense(
      iconUrl: "asset/image/medicine.png",
      title: "Medicine",
      subtitle: "Medicines",
      amount: 500,
      date: '3 June',
      time: "11:50 AM",
    ),
    Expense(
      iconUrl: "asset/image/food.png",
      title: "Food",
      subtitle: "Pani puri",
      amount: 650,
      date: '3 June',
      time: "11:50 AM",
    ),
    Expense(
      iconUrl: "asset/image/shopping.png",
      title: "Shopping",
      subtitle: "Office Shoes",
      amount: 1500,
      date: '3 June',
      time: "11:50 AM",
    ),
    Expense(
      iconUrl: "asset/image/fuel.png",
      title: "Fuel",
      subtitle: "Fuel for FZ",
      amount: 800,
      date: '3 June',
      time: "11:50 AM",
    ),
    Expense(
      iconUrl: "asset/image/enter.png",
      title: "Entertainment",
      subtitle: "Movie - hera-pheri",
      amount: 200,
      date: '3 June',
      time: "11:50 AM",
    ),
  ];

  void addTransactionbottomSheet() {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return Form(
          child: Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Container(
              margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Date',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.poppins(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(33, 33, 33, 1),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  BottomSheetTextField(
                    hintText: "Enter Date",
                    controller: dateController,
                    validator: (val) {
                      if (val.trim() == null || val.trim().isEmpty) {
                        return "Please Enter Valid Date...";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Amount',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.poppins(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(33, 33, 33, 1),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  BottomSheetTextField(
                    hintText: "Enter Amount",
                    controller: amtController,
                    validator: (val) {
                      if (val.trim() == null || val.trim().isEmpty) {
                        return "Please Enter Valid Amount...";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Category',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.poppins(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(33, 33, 33, 1),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  BottomSheetTextField(
                    hintText: "Enter Category",
                    controller: dateController,
                    validator: (val) {
                      if (val.trim() == null || val.trim().isEmpty) {
                        return "Please Enter Category Date...";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Descrition',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.poppins(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(33, 33, 33, 1),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  BottomSheetTextField(
                    hintText: "Enter Description",
                    controller: dateController,
                    validator: (val) {
                      if (val.trim() == null || val.trim().isEmpty) {
                        return "Please Enter Description Date...";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 40,
                      width: 123,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(67),
                          color: const Color.fromRGBO(14, 161, 125, 1),
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 4,
                              offset: Offset(1, 2),
                              color: Color.fromRGBO(0, 0, 0, 0.2),
                            ),
                          ]),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Add",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(255, 255, 255, 1),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: const MyDrawer(),
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
          title: Row(
            children: [
              Text(
                "June 2022",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: const Color.fromRGBO(33, 33, 33, 1),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Icon(
                Icons.arrow_drop_down_sharp,
                size: 24,
                color: Color.fromRGBO(0, 0, 0, 1),
              ),
            ],
          ),
          actions: const [
            Icon(
              Icons.search,
              size: 24,
              color: Color.fromRGBO(0, 0, 0, 1),
            ),
            SizedBox(
              width: 15,
            )
          ],
        ),
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: ListView.builder(
            itemCount: expenseList.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(1),
                          child: Image.asset(
                            height: 41,
                            width: 41,
                            expenseList[index].iconUrl,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: double.infinity,
                                child: Row(
                                  children: [
                                    Text(
                                      expenseList[index].title,
                                      style: GoogleFonts.poppins(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color:
                                            const Color.fromRGBO(33, 33, 33, 1),
                                      ),
                                    ),
                                    const Spacer(),
                                    const SizedBox(width: 100),
                                    Image.asset("asset/image/sub.png"),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      expenseList[index].amount.toString(),
                                      style: GoogleFonts.poppins(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color:
                                            const Color.fromRGBO(33, 33, 33, 1),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Text(
                                expenseList[index].subtitle,
                                style: GoogleFonts.poppins(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromRGBO(33, 33, 33, 1),
                                ),
                              ),
                              SizedBox(
                                width: double.infinity,
                                child: Row(
                                  children: [
                                    const Spacer(),
                                    Text(
                                      "${expenseList[index].date} | ${expenseList[index].time}",
                                      style: GoogleFonts.poppins(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                        color:
                                            const Color.fromRGBO(33, 33, 33, 1),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const Divider(
                    thickness: 0.5,
                    color: Color.fromRGBO(206, 206, 206, 1),
                  )
                ],
              );
            },
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
          onPressed: () {
            addTransactionbottomSheet();
          },
          shape: const ContinuousRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(80),
            ),
          ),
          label: Row(
            children: [
              const Icon(
                size: 32,
                Icons.add_circle_outlined,
                color: Color.fromRGBO(14, 161, 125, 1),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                "Add Transaction",
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: const Color.fromRGBO(33, 33, 33, 1),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
