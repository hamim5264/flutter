import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';

void main (){
  runApp(app());
}
class app extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: screen(),
      debugShowCheckedModeBanner: true,
    );
  }

}
class screen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BootStrap"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: BootstrapContainer(
          fluid: false,
          children: [
            BootstrapRow(
              height: 100,
                children: [
              BootstrapCol(
                  sizes: 'col-xl-1 col-lg-2 col-md-3 col-sm-4 col-6',
                  child: Container(
                    height: 100,
                    color: Colors.green,
                  ),
              ),
                  BootstrapCol(
                    sizes: 'col-xl-1 col-lg-2 col-md-3 col-sm-4 col-6',
                    child: Container(
                      height: 100,
                      color: Colors.red,
                    ),
                  ),
                  BootstrapCol(
                    sizes: 'col-xl-1 col-lg-2 col-md-3 col-sm-4 col-6',
                    child: Container(
                      height: 100,
                      color: Colors.black,
                    ),
                  ),
                  BootstrapCol(
                    sizes: 'col-xl-1 col-lg-2 col-md-3 col-sm-4 col-6',
                    child: Container(
                      height: 100,
                      color: Colors.blue,
                    ),
                  ),
                  BootstrapCol(
                    sizes: 'col-xl-1 col-lg-2 col-md-3 col-sm-4 col-6',
                    child: Container(
                      height: 100,
                      color: Colors.orange,
                    ),
                  ),
                  BootstrapCol(
                    sizes: 'col-xl-1 col-lg-2 col-md-3 col-sm-4 col-6',
                    child: Container(
                      height: 100,
                      color: Colors.yellowAccent,
                    ),
                  ),
                  BootstrapCol(
                    sizes: 'col-xl-1 col-lg-2 col-md-3 col-sm-4 col-6',
                    child: Container(
                      height: 100,
                      color: Colors.purple,
                    ),
                  ),
                  BootstrapCol(
                    sizes: 'col-xl-1 col-lg-2 col-md-3 col-sm-4 col-6',
                    child: Container(
                      height: 100,
                      color: Colors.green,
                    ),
                  ),
                  BootstrapCol(
                    sizes: 'col-xl-1 col-lg-2 col-md-3 col-sm-4 col-6',
                    child: Container(
                      height: 100,
                      color: Colors.black,
                    ),
                  ),
                  BootstrapCol(
                    sizes: 'col-xl-1 col-lg-2 col-md-3 col-sm-4 col-6',
                    child: Container(
                      height: 100,
                      color: Colors.red,
                    ),
                  ),
                  BootstrapCol(
                    sizes: 'col-xl-1 col-lg-2 col-md-3 col-sm-4 col-6',
                    child: Container(
                      height: 100,
                      color: Colors.blue,
                    ),
                  ),
                  BootstrapCol(
                    sizes: 'col-xl-1 col-lg-2 col-md-3 col-sm-4 col-6',
                    child: Container(
                      height: 100,
                      color: Colors.yellowAccent,
                    ),
                  ),

            ],
            ),

        ],
        ),

      ),
    );
  }

}