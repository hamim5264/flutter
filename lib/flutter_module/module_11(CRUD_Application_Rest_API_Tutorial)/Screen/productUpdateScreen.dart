import 'package:flutter/material.dart';
import 'package:ostad_flutter_project/flutter_module/module_11(CRUD_Application_Rest_API_Tutorial)/RestAPI/restClient.dart';
import 'package:ostad_flutter_project/flutter_module/module_11(CRUD_Application_Rest_API_Tutorial)/Screen/productGridViewScreen.dart';
import 'package:ostad_flutter_project/flutter_module/module_11(CRUD_Application_Rest_API_Tutorial)/Style/style.dart';

class ProductUpdateScreen extends StatefulWidget {
  const ProductUpdateScreen(this.productItem, {super.key});

  final Map productItem;

  @override
  State<ProductUpdateScreen> createState() => _ProductUpdateScreenState();
}

class _ProductUpdateScreenState extends State<ProductUpdateScreen> {
  Map<String, String> formValues = {
    "Img": "",
    "ProductCode": "",
    "ProductName": "",
    "Qty": "",
    "TotalPrice": "",
    "UnitPrice": "",
  };

  bool loading = false;

  @override
  void initState() {
    super.initState();
    setState(() {
      formValues.update("Img", (value) => widget.productItem["Img"]);
      formValues.update(
          "ProductCode", (value) => widget.productItem["ProductCode"]);
      formValues.update(
          "ProductName", (value) => widget.productItem["ProductName"]);
      formValues.update(
          "TotalPrice", (value) => widget.productItem["TotalPrice"]);
      formValues.update(
          "UnitPrice", (value) => widget.productItem["UnitPrice"]);
      formValues.update("Qty", (value) => widget.productItem["Qty"]);
    });
  }

  inputOnChange(mapKey, textValue) {
    setState(() {
      formValues.update(mapKey, (value) => textValue);
    });
  }

  ///Form validation check and update
  formOnSubmit() async {
    if (formValues["Img"]!.isEmpty) {
      errorToast("Image Link Required!");
    } else if (formValues["ProductCode"]!.isEmpty) {
      errorToast("Product Code Required!");
    } else if (formValues["ProductName"]!.isEmpty) {
      errorToast("Product Name Required!");
    } else if (formValues["Qty"]!.isEmpty) {
      errorToast("Quantity Required!");
    } else if (formValues["TotalPrice"]!.isEmpty) {
      errorToast("Total Price Required!");
    } else if (formValues["UnitPrice"]!.isEmpty) {
      errorToast("Unit Price Required!");
    } else {
      ///update

      setState(() {
        loading = true;
      });
      await productUpdateRequest(formValues, widget.productItem["_id"]);
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => const ProductGridViewScreen(),
          ),
          (route) => false);
      setState(() {
        loading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Update Product"),
        backgroundColor: colorGreen,
      ),
      body: Stack(
        ///background graphics
        children: [
          screenBackground(context),
          Container(
            child: loading
                ? const Center(
                    child: CircularProgressIndicator(
                      color: colorGreen,
                    ),
                  )
                : SingleChildScrollView(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        TextFormField(
                          initialValue: formValues["ProductName"],
                          decoration: appInputDecoration("Product Name"),
                          onChanged: (textValue) {
                            inputOnChange("ProductName", textValue);
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          initialValue: formValues["ProductCode"],
                          decoration: appInputDecoration("Product Code"),
                          onChanged: (textValue) {
                            inputOnChange("ProductCode", textValue);
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          initialValue: formValues["Img"],
                          decoration: appInputDecoration("Product Image Url"),
                          onChanged: (textValue) {
                            inputOnChange("Img", textValue);
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          initialValue: formValues["UnitPrice"],
                          decoration: appInputDecoration("Unit Price"),
                          onChanged: (textValue) {
                            inputOnChange("UnitPrice", textValue);
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          initialValue: formValues["TotalPrice"],
                          decoration: appInputDecoration("Total Price"),
                          onChanged: (textValue) {
                            inputOnChange("TotalPrice", textValue);
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        appDropDownStyle(
                          DropdownButton(
                            value: formValues["Qty"],
                            items: const [
                              DropdownMenuItem(
                                value: "",
                                child: Text("Select Quantity"),
                              ),
                              DropdownMenuItem(
                                value: "1 pcs",
                                child: Text("1 pcs"),
                              ),
                              DropdownMenuItem(
                                value: "2 pcs",
                                child: Text("2 pcs"),
                              ),
                              DropdownMenuItem(
                                value: "3 pcs",
                                child: Text("3 pcs"),
                              ),
                              DropdownMenuItem(
                                value: "4 pcs",
                                child: Text("4 pcs"),
                              ),
                            ],
                            onChanged: (textValue) {
                              inputOnChange("Qty", textValue);
                            },
                            underline: Container(),
                            isExpanded: true,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          child: ElevatedButton(
                            style: appButtonStyle(),
                            onPressed: () {
                              formOnSubmit();
                            },
                            child: successButtonChild("Update"),
                          ),
                        ),
                      ],
                    ),
                  ),
          )
        ],
      ),
    );
  }
}
