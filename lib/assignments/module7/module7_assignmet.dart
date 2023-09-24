import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main (){
  runApp( myApp());
}
class myApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProductList(),
    );
  }
}
class ProductList extends StatefulWidget {
  const ProductList({super.key});
  @override
  State<ProductList> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<ProductList> {
  int counter1 = 0;
  int counter2 = 0;
  int counter3 = 0;
  int counter4 = 0;
  int counter5 = 0;
  int counter6 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product List"),
        centerTitle: true,
      ),
      body: Scrollbar(
        child: ListView(
          children: [
            ListTile(
              title: Text("Product 1"),
              subtitle: Text("\$10"),
              trailing: Column(
                children: [
                  Text("Counts: ${counter1.toString()}"),
                  ElevatedButton(
                      onPressed: (){
                        counter1 = counter1+1;
                        setState(() {});
                        if(counter1==5){
                          showDialog(
                              context: context,
                              builder: (context){
                                return AlertDialog(
                                  title: Text("Congratulations!"),
                                  content: Text("You have bought 5 Product 1"),
                                  actions: [
                                    TextButton(onPressed: (){
                                      Navigator.pop(context);
                                    },
                                      child: Text("OK"),
                                    ),
                                  ],
                                );
                              }
                          );

                        }
                      },
                      child: Text("Buy Now",),

                  ),
                ],
              ),
            ),
            ListTile(
              title: Text("Product 2"),
              subtitle: Text("\$12"),
              trailing: Column(
                children: [
                  Text("Counts: ${counter2.toString()}"),
                  ElevatedButton(onPressed: (){
                    counter2 = counter2+1;
                    setState(() {});
                    if(counter2==5){
                      showDialog(
                          context: context,
                          builder: (context){
                            return AlertDialog(
                              title: Text("Congratulations!"),
                              content: Text("You have bought 5 product 2"),
                              actions: [
                                TextButton(onPressed: (){
                                  Navigator.pop(context);
                                },
                                  child: Text("OK"),
                                ),
                              ],
                            );
                          }
                      );

                    }
                  },
                      child: Text("Buy Now",),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text("Product 3"),
              subtitle: Text("\$15"),
              trailing: Column(
                children: [
                  Text("Counts: ${counter3.toString()}"),
                  ElevatedButton(onPressed: (){
                    counter3 = counter3+1;
                    setState(() {});
                    if(counter3==5){
                      showDialog(
                          context: context,
                          builder: (context){
                            return AlertDialog(
                              title: Text("Congratulations!"),
                              content: Text("You have bought 5 product 3"),
                              actions: [
                                TextButton(onPressed: (){
                                  Navigator.pop(context);
                                },
                                  child: Text("OK"),
                                ),
                              ],
                            );
                          }
                      );

                    }

                  },
                      child: Text("Buy Now",),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text("Product 4"),
              subtitle: Text("\$15.8"),
              trailing: Column(
                children: [
                  Text("Counts: ${counter4.toString()}"),
                  ElevatedButton(onPressed: (){
                    counter4 = counter4+1;
                    setState(() {});
                    if(counter4==5){
                      showDialog(
                          context: context,
                          builder: (context){
                            return AlertDialog(
                              title: Text("Congratulations!"),
                              content: Text("You have bought 5 product 4"),
                              actions: [
                                TextButton(onPressed: (){
                                  Navigator.pop(context);
                                },
                                  child: Text("OK"),
                                ),
                              ],
                            );
                          }
                      );

                    }
                  },
                      child: Text("Buy Now",),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text("Product 5"),
              subtitle: Text("\$20"),
              trailing: Column(
                children: [
                  Text("Counts: ${counter5.toString()}"),
                  ElevatedButton(onPressed: (){
                    counter5 = counter5+1;
                    setState(() {});
                    if(counter5==5){
                      showDialog(
                          context: context,
                          builder: (context){
                            return AlertDialog(
                              title: Text("Congratulations!"),
                              content: Text("You have bought 5 product 5"),
                              actions: [
                                TextButton(onPressed: (){
                                  Navigator.pop(context);
                                },
                                  child: Text("OK"),
                                ),
                              ],
                            );
                          }
                      );

                    }
                  },
                      child: Text("Buy Now",),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text("Product 6"),
              subtitle: Text("\$30"),
              trailing: Column(
                children: [
                  Text("Counts: ${counter6.toString()}"),
                  ElevatedButton(onPressed: (){
                    counter6 = counter6+1;
                    setState(() {});
                    if(counter6==5){
                      showDialog(
                          context: context,
                          builder: (context){
                            return AlertDialog(
                              title: Text("Congratulations!"),
                              content: Text("You have bought 5 product 6"),
                              actions: [
                                TextButton(onPressed: (){
                                  Navigator.pop(context);
                                },
                                  child: Text("OK"),
                                ),
                              ],
                            );
                          }
                      );

                    }
                  },
                      child: Text("Buy Now",)),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(
            builder: (context)=> CartPage(total: counter1,)
        ),
        );
      },
        child: Icon(Icons.shopping_cart),
      ),
    );
  }
}
class CartPage extends StatelessWidget{
  int total;

  CartPage({super.key, required this.total});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
        centerTitle: true,
      ),
      body: Center(
        child: Text("Total Products: ${total}"),
      ),

    );
  }
}

