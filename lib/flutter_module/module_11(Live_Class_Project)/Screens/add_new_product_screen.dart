import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:ostad_flutter_project/flutter_module/module_11(Live_Class_Project)/Screens/product.dart';

class AddNewProductScreen extends StatefulWidget {
  final Product? product;

  const AddNewProductScreen({super.key, this.product});

  @override
  State<AddNewProductScreen> createState() => _AddNewProductScreenState();
}

class _AddNewProductScreenState extends State<AddNewProductScreen> {
  final TextEditingController _titleTEController = TextEditingController();
  final TextEditingController _codeTEController = TextEditingController();
  final TextEditingController _quantityTEController = TextEditingController();
  final TextEditingController _priceTEController = TextEditingController();
  final TextEditingController _totalPriceTEController = TextEditingController();
  final TextEditingController _imageTEController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool addInProgress = false;

  Future<void> addNewProduct() async {
    addInProgress = true;
    setState(() {});
    final Map<String, String> inputMap = {
      "Img": _imageTEController.text.trim(),
      "ProductCode": _codeTEController.text.trim(),
      "ProductName": _titleTEController.text.trim(),
      "Qty": _quantityTEController.text.trim(),
      "TotalPrice": _totalPriceTEController.text.trim(),
      "UnitPrice": _priceTEController.text.trim(),
    };
    print(inputMap);

    final Response response = await post(
        Uri.parse("https://crud.teamrabbil.com/api/v1/CreateProduct"),
        headers: {
          "Content-Type": "application/json",
        },
        body: jsonEncode(inputMap));
    if (response.statusCode == 200) {
      _titleTEController.clear();
      _imageTEController.clear();
      _codeTEController.clear();
      _quantityTEController.clear();
      _priceTEController.clear();
      _titleTEController.clear();
      _totalPriceTEController.clear();
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Product has been added")));
    } else if (response.statusCode == 400) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Code should be unique")));
    }
    print(response.statusCode);
    addInProgress = false;
    setState(() {});
  }

  Future<void> updateProduct() async {
    addInProgress = true;
    setState(() {});

    final Product product = Product(
      "",
      _titleTEController.text.trim(),
      _codeTEController.text.trim(),
      _imageTEController.text.trim(),
      _priceTEController.text.trim(),
      _quantityTEController.text.trim(),
      _totalPriceTEController.text.trim(),
    );
    // final Map<String, String> inputMap = {
    //   "Img": _imageTEController.text.trim(),
    //   "ProductCode": _codeTEController.text.trim(),
    //   "ProductName": _titleTEController.text.trim(),
    //   "Qty": _quantityTEController.text.trim(),
    //   "TotalPrice": _totalPriceTEController.text.trim(),
    //   "UnitPrice": _priceTEController.text.trim(),
    // };
    //print(inputMap);

    final Response response = await post(
        Uri.parse(
            "https://crud.teamrabbil.com/api/v1/UpdateProduct/${widget.product!.id}"),
        headers: {
          "Content-Type": "application/json",
        },
        body: jsonEncode(product.toJson()));
    if (response.statusCode == 200) {
      _titleTEController.clear();
      _imageTEController.clear();
      _codeTEController.clear();
      _quantityTEController.clear();
      _priceTEController.clear();
      _titleTEController.clear();
      _totalPriceTEController.clear();
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Product has been updated")));
    } else if (response.statusCode == 400) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Code should be unique")));
    }
    print(response.statusCode);
    addInProgress = false;
    setState(() {});
  }

  @override
  void initState() {
    if (widget.product != null) {
      _titleTEController.text = widget.product!.productName;
      _codeTEController.text = widget.product!.productCode;
      _imageTEController.text = widget.product!.image;
      _quantityTEController.text = widget.product!.quantity;
      _priceTEController.text = widget.product!.unitPrice;
      _totalPriceTEController.text = widget.product!.totalPrice;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add New Product"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: _titleTEController,
                  decoration: const InputDecoration(
                      label: Text("Title"), hintText: "Enter product title"),
                  validator: isValidate,
                ),
                TextFormField(
                  controller: _codeTEController,
                  decoration: const InputDecoration(
                      label: Text("Product Code"),
                      hintText: "Enter product Code"),
                  validator: isValidate,
                ),
                TextFormField(
                  controller: _imageTEController,
                  decoration: const InputDecoration(
                      label: Text("Product Image"),
                      hintText: "Enter product Image"),
                  validator: isValidate,
                ),
                TextFormField(
                  controller: _quantityTEController,
                  decoration: const InputDecoration(
                      label: Text("Quantity"),
                      hintText: "Enter product quantity"),
                  validator: isValidate,
                ),
                TextFormField(
                  controller: _priceTEController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      label: Text("Price"), hintText: "Enter product price"),
                  validator: isValidate,
                ),
                TextFormField(
                  controller: _totalPriceTEController,
                  decoration: const InputDecoration(
                      label: Text("Total price"),
                      hintText: "Enter total price"),
                  validator: isValidate,
                ),
                const SizedBox(
                  height: 24,
                ),
                SizedBox(
                  width: double.infinity,
                  child: addInProgress
                      ? const Center(
                          child: CircularProgressIndicator(),
                        )
                      : ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(vertical: 14),
                            textStyle: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              if (widget.product == null) {
                                addNewProduct();
                              } else {
                                updateProduct();
                              }
                            }
                          },
                          child: widget.product != null
                              ? const Text("Update")
                              : const Text("Add"),
                        ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  String? isValidate(String? value) {
    if (value?.trim().isNotEmpty ?? false) {
      return null;
    }
    return "Enter valid value";
  }

  @override
  void dispose() {
    _titleTEController.dispose();
    _codeTEController.dispose();
    _quantityTEController.dispose();
    _priceTEController.dispose();
    _totalPriceTEController.dispose();
    super.dispose();
  }
}
