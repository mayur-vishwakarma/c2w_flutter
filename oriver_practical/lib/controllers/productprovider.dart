import "package:flutter/material.dart";
import 'package:oriver_practical/models/product_model.dart';

class ProductProvider extends ChangeNotifier {
  Product? product;
  void addproduct(Product pObj) {
    notifyListeners();
  }

  void addToFav() {
    notifyListeners();
  }

  void addQty() {
    notifyListeners();
  }

  void subQty() {
    notifyListeners();
  }
}
