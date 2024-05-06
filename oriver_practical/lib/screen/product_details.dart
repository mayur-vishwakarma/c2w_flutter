import "package:flutter/material.dart";
import "package:oriver_practical/controllers/productprovider.dart";
import "package:oriver_practical/models/product_model.dart";
import "package:oriver_practical/screen/product_details_screen.dart";
import "package:provider/provider.dart";

class GetProductDetails extends StatefulWidget {
  const GetProductDetails({super.key});

  @override
  State<GetProductDetails> createState() => _GetProductDetailsState();
}

class _GetProductDetailsState extends State<GetProductDetails> {
  TextEditingController imgUrlController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController priceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.amber.shade50,
        appBar: AppBar(
          backgroundColor: Colors.amber.shade300,
          title: const Text(
            "Product Detail",
            style: TextStyle(fontSize: 20),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  controller: imgUrlController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                      borderSide: BorderSide(
                        color: Colors.black87,
                        width: 1.5,
                      ),
                    ),
                    hintText: "Enter Product Image Url",
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                      borderSide: BorderSide(
                        color: Colors.black87,
                        width: 1.5,
                      ),
                    ),
                    hintText: "Enter Product Name",
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  controller: priceController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                      borderSide: BorderSide(
                        color: Colors.black87,
                        width: 1.5,
                      ),
                    ),
                    hintText: "Enter Product Price",
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    Product pObj = Product(
                      wishlist: false,
                      imgUrl: imgUrlController.text.toString(),
                      name: nameController.text.toString(),
                      price: priceController.text.toString(),
                    );
                    Provider.of<ProductProvider>(context, listen: false)
                        .addproduct(pObj);

                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (ctx) {
                          return const ProductDetailsScreen();
                        },
                      ),
                    );
                  },
                  child: const Text("Submit"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
