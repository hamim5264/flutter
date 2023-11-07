import 'package:flutter/material.dart';
import 'package:ostad_flutter_project/flutter_module/module_11(Live_Class_Project)/Screens/add_new_product_screen.dart';
import 'package:ostad_flutter_project/flutter_module/module_11(Live_Class_Project)/Screens/product.dart';

class ProductItem extends StatelessWidget {
  const ProductItem(
      {super.key, required this.product, required this.onPressedDelete});

  final Product product;
  final Function(String) onPressedDelete;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        showDialog(
            context: context,
            builder: (context) {
              return productActionDialog(context);
            });
      },
      leading: Image.network(
        product.image,
        width: 80,
      ),
      title: Text(product.productName),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Code: ${product.productCode}"),
          Text("Total Price: ${product.totalPrice}"),
          Text("Quantity: ${product.quantity}"),
        ],
      ),
      trailing: Text("\$${product.unitPrice}"),
    );
  }

  AlertDialog productActionDialog(BuildContext context) {
    return AlertDialog(
      title: const Text("Select Action"),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AddNewProductScreen(
                    product: product,
                  ),
                ),
              );
            },
            leading: const Icon(Icons.edit),
            title: const Text("Edit"),
          ),
          const Divider(
            height: 0,
          ),
          ListTile(
            onTap: () {
              Navigator.pop(context);
              onPressedDelete(product.id);
            },
            leading: const Icon(Icons.delete),
            title: const Text("Delete"),
          ),
        ],
      ),
    );
  }
}
