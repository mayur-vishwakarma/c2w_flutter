import 'package:flutter/material.dart';
import 'package:oriver_practical/controllers/productprovider.dart';
import 'package:oriver_practical/controllers/wishlistprovider.dart';
import 'package:provider/provider.dart';

class WishListScreen extends StatefulWidget {
  const WishListScreen({super.key});

  @override
  State<WishListScreen> createState() => _WishListScreenState();
}

class _WishListScreenState extends State<WishListScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Wishlist"),
        ),
        backgroundColor: Colors.white,
        body: Consumer<ProductProvider>(
          builder: (context, value, child) {
            return Padding(
              padding: const EdgeInsets.all(10),
              child: ListView.builder(
                itemCount:
                    Provider.of<WishlistProvider>(context).wishlist.length,
                itemBuilder: (context, index) {
                  return Card(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            child: Image.asset(
                              value.productList[index].imgUrl,
                              height: 200,
                              width: 200,
                              fit: BoxFit.fill,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(value.productList[index].name),
                          const SizedBox(
                            height: 5,
                          ),
                          Text("Rs. ${value.productList[index].price}"),
                          Container(
                            padding: const EdgeInsets.all(1),
                            child: Row(
                              children: [
                                IconButton(
                                  onPressed: () {
                                    value.addToFav(index);
                                    if (value.productList[index].wishlist) {
                                      Provider.of<WishlistProvider>(context,
                                              listen: false)
                                          .addtoWishlist(
                                              value.productList[index]);
                                    } else {
                                      Provider.of<WishlistProvider>(context,
                                              listen: false)
                                          .removeFromWishlist(index);
                                    }
                                  },
                                  icon: value.productList[index].wishlist
                                      ? const Icon(
                                          Icons.favorite,
                                          color: Colors.red,
                                        )
                                      : const Icon(
                                          Icons.favorite_border_outlined),
                                ),
                                const Spacer(),
                                IconButton(
                                  onPressed: () {
                                    value.addQty(index);
                                  },
                                  icon: const Icon(Icons.add),
                                ),
                                Text(value.productList[index].qty.toString()),
                                IconButton(
                                  onPressed: () {
                                    value.subQty(index);
                                  },
                                  icon: const Icon(Icons.remove),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
