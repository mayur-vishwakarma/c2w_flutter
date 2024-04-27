import 'package:expense_manager/models/graph_category.dart';
import 'package:expense_manager/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pie_chart/pie_chart.dart';

class GraphScreen extends StatefulWidget {
  const GraphScreen({super.key});

  @override
  State<GraphScreen> createState() => _GraphScreenState();
}

class _GraphScreenState extends State<GraphScreen> {
  List<GraphCategory> categoryList = [
    GraphCategory(
      imgUrl: "asset/image/food.png",
      category: 'Food',
      amount: 650.00,
    ),
    GraphCategory(
      imgUrl: "asset/image/fuel.png",
      category: 'Fuel',
      amount: 600.00,
    ),
    GraphCategory(
      imgUrl: "asset/image/medicine.png",
      category: 'Medicine',
      amount: 500.00,
    ),
    GraphCategory(
      imgUrl: "asset/image/enter.png",
      category: 'Entertainment',
      amount: 475.00,
    ),
    GraphCategory(
      imgUrl: "asset/image/shopping.png",
      category: 'Shopping',
      amount: 325.00,
    ),
  ];

  Map<String, double> dataMap = {
    'Food': 650.00,
    "Fuel": 600.00,
    "Medicine": 500.00,
    "Entertainment": 475.00,
    "Shopping": 325.00,
  };

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: const MyDrawer(),
        appBar: AppBar(
          title: Text(
            "Graphs",
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: const Color.fromRGBO(33, 33, 33, 1),
            ),
          ),
        ),
        body: Container(
          padding: const EdgeInsets.all(20),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              PieChart(
                dataMap: dataMap,
                chartRadius: 180,
                chartValuesOptions:
                    const ChartValuesOptions(showChartValues: false),
                centerWidget: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Total",
                      style: GoogleFonts.poppins(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(0, 0, 0, 1),
                      ),
                    ),
                    Text(
                      "₹ 2550.00",
                      style: GoogleFonts.poppins(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromRGBO(0, 0, 0, 1),
                      ),
                    ),
                  ],
                ),
                legendOptions: LegendOptions(
                  showLegendsInRow: false,
                  legendTextStyle: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(0, 0, 0, 1),
                  ),
                ),
                colorList: const [
                  Color.fromRGBO(214, 3, 3, 0.7),
                  Color.fromRGBO(0, 148, 255, 0.7),
                  Color.fromRGBO(0, 174, 91, 0.7),
                  Color.fromRGBO(100, 62, 255, 0.7),
                  Color.fromRGBO(241, 38, 196, 0.7),
                ],
                chartType: ChartType.ring,
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(
                thickness: 0.2,
                color: Color.fromRGBO(0, 0, 0, 0.5),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 300,
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: categoryList.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        children: [
                          Image.asset(
                            categoryList[index].imgUrl,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            categoryList[index].category,
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(0, 0, 0, 1),
                            ),
                          ),
                          const Spacer(),
                          Text(
                            "₹ ${categoryList[index].amount}",
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(0, 0, 0, 1),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Icon(
                            Icons.arrow_forward_ios_sharp,
                            color: Color.fromRGBO(0, 0, 0, 0.5),
                            size: 6,
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Total",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(0, 0, 0, 1),
                    ),
                  ),
                  Text(
                    "₹ 2,550.00",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(0, 0, 0, 1),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
