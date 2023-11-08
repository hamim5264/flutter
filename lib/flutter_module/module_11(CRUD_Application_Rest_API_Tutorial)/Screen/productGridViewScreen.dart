import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ostad_flutter_project/flutter_module/module_11(CRUD_Application_Rest_API_Tutorial)/RestAPI/restClient.dart';
import 'package:ostad_flutter_project/flutter_module/module_11(CRUD_Application_Rest_API_Tutorial)/Screen/productCreateScreen.dart';
import 'package:ostad_flutter_project/flutter_module/module_11(CRUD_Application_Rest_API_Tutorial)/Screen/productUpdateScreen.dart';
import 'package:ostad_flutter_project/flutter_module/module_11(CRUD_Application_Rest_API_Tutorial)/Style/style.dart';

class ProductGridViewScreen extends StatefulWidget {
  const ProductGridViewScreen({super.key});

  @override
  State<ProductGridViewScreen> createState() => _ProductGridViewScreenState();
}

class _ProductGridViewScreenState extends State<ProductGridViewScreen> {
  List productList = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    callData();
  }

  callData() async {
    isLoading = true;
    var data = await productGridViewListRequest();
    setState(() {
      productList = data;
      isLoading = false;
    });
  }

  ///delete item
  deleteItem(id) async {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text(
              "Delete!",
              style: TextStyle(color: Colors.orange),
            ),
            content: const Text("Once you delete, you can't get it back."),
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OutlinedButton(
                    onPressed: () async {
                      Navigator.pop(context);
                      setState(() {
                        isLoading = true;
                      });
                      await productDeleteRequest(id);
                      await callData();
                    },
                    child: const Text(
                      "Yes",
                      style: TextStyle(color: colorRed),
                    ),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      "NO",
                      style: TextStyle(color: colorGreen),
                    ),
                  ),
                ],
              ),
            ],
          );
        });
  }

  gotoUpdate(context, productItem) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ProductUpdateScreen(productItem),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product List"),
        backgroundColor: colorGreen,
      ),
      body: Stack(
        children: [
          screenBackground(context),
          Container(
            child: isLoading
                ? const Center(
                    child: CircularProgressIndicator(
                      color: colorGreen,
                    ),
                  )
                : RefreshIndicator(
                    color: colorDarkBlue,
                    onRefresh: () async {
                      await callData();
                    },
                    child: GridView.builder(
                        itemCount: productList.length,
                        gridDelegate: productGridViewStyle(),
                        itemBuilder: (context, index) {
                          return Card(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Expanded(
                                    child: Image.network(
                                  productList[index]["Img"],
                                  fit: BoxFit.fill,
                                )),
                                Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(5, 5, 5, 8),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(productList[index]
                                              ["ProductName"]),
                                          Text(productList[index]
                                              ["ProductCode"]),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 7,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                              "Price: ${productList[index]["UnitPrice"]}\$"),
                                          Text(
                                              "Qt: ${productList[index]["Qty"]}"),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          OutlinedButton(
                                            onPressed: () {
                                              gotoUpdate(
                                                  context, productList[index]);
                                            },
                                            child: const Icon(
                                              CupertinoIcons
                                                  .ellipsis_vertical_circle,
                                              size: 18,
                                              color: colorGreen,
                                            ),
                                          ),
                                          OutlinedButton(
                                            onPressed: () {
                                              deleteItem(
                                                  productList[index]["_id"]);
                                            },
                                            child: const Icon(
                                              CupertinoIcons.delete,
                                              size: 18,
                                              color: colorRed,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                  ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: colorGreen,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ProductCreateScreen(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
