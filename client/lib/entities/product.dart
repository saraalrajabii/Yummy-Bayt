class Product {
  String productName;
  String description;
  // String price;

  Product(this.productName, this.description);

  Product.fromJson(Map<String, dynamic> json) {
    productName = json['productName'];
    description = json['description'];
    // price = json['price'];
  }
}
