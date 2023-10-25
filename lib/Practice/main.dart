import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:ostad_flutter_project/Practice/style.dart';
import 'package:responsive_grid/responsive_grid.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Screen(),
    );
  }
}
class Screen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: BootstrapContainer(
          fluid: true,
            children: [
              BootstrapRow(
                height: 100,
                  children: [
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
                        color: Colors.green,
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
                        color: Colors.green,
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
                        color: Colors.green,
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

