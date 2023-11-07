class Product {
  final String id;
  final String productName;
  final String productCode;
  final String image;
  final String unitPrice;
  final String quantity;
  final String totalPrice;

  Product(this.id, this.productName, this.productCode, this.image,
      this.unitPrice, this.quantity, this.totalPrice);

  ///namedConstructor & model/pogo class
  factory Product.fromJson(Map<String, dynamic> productJson) {
    return Product(
      productJson["_id"],
      productJson["ProductName"] ?? "",
      productJson["ProductCode"] ?? "",
      productJson["Img"] ?? "",
      productJson["UnitPrice"] ?? "",
      productJson["Qty"] ?? "",
      productJson["TotalPrice"] ?? "",
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "ProductName": productName,
      "ProductCode": productCode,
      "Img": image,
      "UnitPrice": unitPrice,
      "Qty": quantity,
      "TotalPrice": totalPrice,
    };
  }
}
