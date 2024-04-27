import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:expense_manager/widgets/drawer.dart';
import 'package:expense_manager/models/expense_model.dart';

class TrashScreen extends StatefulWidget {
  const TrashScreen({super.key});

  @override
  State<TrashScreen> createState() => _TrashScreenState();
}

class _TrashScreenState extends State<TrashScreen> {
  List<Expense> expenseList = [
    Expense(
      iconUrl: "asset/image/trash.png",
      title: "Medicine",
      subtitle: "Medicines",
      amount: 500,
      date: '3 June',
      time: "11:50 AM",
    ),
    Expense(
      iconUrl: "asset/image/trash.png",
      title: "Food",
      subtitle: "Pani puri",
      amount: 650,
      date: '3 June',
      time: "11:50 AM",
    ),
    Expense(
      iconUrl: "asset/image/trash.png",
      title: "Shopping",
      subtitle: "Office Shoes",
      amount: 1500,
      date: '3 June',
      time: "11:50 AM",
    ),
    Expense(
      iconUrl: "asset/image/trash.png",
      title: "Fuel",
      subtitle: "Fuel for FZ",
      amount: 800,
      date: '3 June',
      time: "11:50 AM",
    ),
    Expense(
      iconUrl: "asset/image/trash.png",
      title: "Entertainment",
      subtitle: "Movie - hera-pheri",
      amount: 200,
      date: '3 June',
      time: "11:50 AM",
    ),
  ];

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
                    padding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
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
                          width: 5,
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
                    indent: 10,
                    endIndent: 10,
                    color: Color.fromRGBO(206, 206, 206, 1),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
