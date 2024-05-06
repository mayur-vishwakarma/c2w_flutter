class Product {
  String imgUrl;
  String name;
  String price;
  bool wishlist = false;
  int qty = 0;

  Product({
    required this.imgUrl,
    required this.name,
    required this.price,
    this.wishlist = false,
    this.qty = 1,
  });
}
