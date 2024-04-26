import 'package:expense_manager/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:expense_manager/models/category_model.dart';
import 'package:expense_manager/widgets/bottomsheet_textfield.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  TextEditingController imgUrlController = TextEditingController();
  TextEditingController categoryController = TextEditingController();
  List<Category> categoryList = [
    Category(
      title: "Food",
      imageUrl: "asset/image/food.png",
    ),
    Category(
      title: "Fuel",
      imageUrl: "asset/image/fuel.png",
    ),
    Category(
      title: "Medicine",
      imageUrl: "asset/image/medicine.png",
    ),
    Category(
      title: "Shopping",
      imageUrl: "asset/image/shopping.png",
    ),
  ];

  void addCategoryBottomSheet() {
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
                  Align(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 75,
                          width: 75,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromRGBO(140, 128, 128, 0.2),
                          ),
                          child: const Icon(
                            Icons.image_rounded,
                            size: 24,
                            color: Color.fromRGBO(125, 125, 125, 1),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Add",
                          style: GoogleFonts.poppins(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(33, 33, 33, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Image Url',
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
                    hintText: "Enter Image URL",
                    controller: imgUrlController,
                    validator: (val) {
                      if (val.trim() == null || val.trim().isEmpty) {
                        return "Please Enter Valid ImgUrl...";
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
                    controller: categoryController,
                    validator: (val) {
                      if (val.trim() == null || val.trim().isEmpty) {
                        return "Please Enter Valid Category...";
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

  void showAlertBox() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
          title: Text(
            textAlign: TextAlign.center,
            "Delete Category",
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: const Color.fromRGBO(33, 33, 33, 1),
            ),
          ),
          content: Text(
            textAlign: TextAlign.center,
            "Are you sure you want to delete the selected category?",
            style: GoogleFonts.poppins(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: const Color.fromRGBO(33, 33, 33, 1),
            ),
          ),
          actionsAlignment: MainAxisAlignment.center,
          actions: [
            Container(
              width: 100,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromRGBO(14, 161, 125, 1),
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 8,
                    color: Color.fromRGBO(0, 0, 0, 0.15),
                    offset: Offset(1, 2),
                  )
                ],
              ),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Delete",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: const Color.fromRGBO(255, 255, 255, 1),
                  ),
                ),
              ),
            ),
            Container(
              width: 100,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromRGBO(140, 128, 128, 0.2),
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(
                  "Cancel",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: const Color.fromRGBO(33, 33, 33, 1),
                  ),
                ),
              ),
            )
          ],
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
          title: Text(
            "Categories",
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: const Color.fromRGBO(0, 0, 0, 1),
            ),
          ),
        ),
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        body: Container(
          padding: const EdgeInsets.all(20),
          child: GridView.builder(
            itemCount: categoryList.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 20, mainAxisSpacing: 20, crossAxisCount: 2),
            itemBuilder: (context, index) {
              return GestureDetector(
                onLongPress: () {
                  showAlertBox();
                },
                child: Container(
                  width: 145,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: const Color.fromRGBO(255, 255, 255, 1),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 8,
                        color: Color.fromRGBO(0, 0, 0, 0.15),
                        offset: Offset(1, 2),
                      )
                    ],
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          categoryList[index].imageUrl,
                          height: 75,
                          width: 75,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          categoryList[index].title,
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(33, 33, 33, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
          onPressed: () {
            addCategoryBottomSheet();
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
                "Add Category",
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
