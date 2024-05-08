import "package:flutter/material.dart";
import 'package:oriver_practical/models/product_model.dart';

class ProductProvider extends ChangeNotifier {
  List<Product> productList = [
    Product(
      imgUrl: "assets/images/1.jpg",
      name: "Expense Manager",
      price: "350",
    ),
    Product(
      imgUrl: "assets/images/1.jpg",
      name: "house Manager",
      price: "800",
    ),
    Product(
      imgUrl: "assets/images/1.jpg",
      name: "Mobile Manager",
      price: "900",
    ),
  ];

  List<Product> wishlist = [];

  void addtoWishlist(Product pobj) {
    wishlist.add(pobj);
    notifyListeners();
  }

  void removeFromWishlist(int index) {
    wishlist.removeAt(index);
    notifyListeners();
  }

  void addproduct(Product pObj) {
    productList.add(pObj);
    notifyListeners();
  }

  void addToFav(int index) {
    productList[index].wishlist = !productList[index].wishlist;
    notifyListeners();
  }

  void addQty(int index) {
    productList[index].qty = productList[index].qty + 1;

    notifyListeners();
  }

  void subQty(int index) {
    if (productList[index].qty > 1) {
      productList[index].qty = productList[index].qty - 1;
    }
    notifyListeners();
  }
}
