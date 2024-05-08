import 'package:flutter/material.dart';
import 'package:oriver_practical/controllers/productprovider.dart';
import 'package:oriver_practical/controllers/wishlistprovider.dart';

import 'package:oriver_practical/screen/product_details_screen.dart';

import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) {
            return ProductProvider();
          },
        ),
        ChangeNotifierProvider(
          create: (context) {
            return WishlistProvider();
          },
        )
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ProductDetailsScreen(),
      ),
    );
  }
}
