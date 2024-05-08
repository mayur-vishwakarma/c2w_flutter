import 'package:flutter/material.dart';
import 'package:oriver_practical/models/product_model.dart';

class WishlistProvider extends ChangeNotifier {
  List<Product> wishlist = [];

  void addtoWishlist(Product pobj) {
    wishlist.add(pobj);
    notifyListeners();
  }

  void removeFromWishlist(int index) {
    wishlist.removeAt(index);

    notifyListeners();
  }
}
