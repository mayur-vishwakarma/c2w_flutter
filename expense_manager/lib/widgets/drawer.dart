import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:expense_manager/widgets/drawer_buttons.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 216,
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Expense Manager",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromRGBO(0, 0, 0, 1),
                  ),
                ),
                Text(
                  'Saves all your Transactions',
                  style: GoogleFonts.poppins(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(0, 0, 0, .5),
                  ),
                ),
              ],
            ),
          ),
          const DrawerButtons(
            buttonName: "Transaction",
            icondata: Icons.money_outlined,
          ),
          const DrawerButtons(
            buttonName: "Graphs",
            icondata: Icons.pie_chart_outline_outlined,
          ),
          const DrawerButtons(
            buttonName: "Category",
            icondata: Icons.category,
          ),
          const DrawerButtons(
            buttonName: "Trash",
            icondata: Icons.delete_outline_outlined,
          ),
          const DrawerButtons(
            buttonName: 'About Us',
            icondata: Icons.person,
          ),
        ],
      ),
    );
  }
}
