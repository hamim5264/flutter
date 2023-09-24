import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

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
        title: Text("Grid Implimentation"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: ResponsiveGridRow(
          children: [
          ResponsiveGridCol(
            lg: 12,
              child: Container(
                height: 200,
                color: Colors.red,
              ),
          ),
            ResponsiveGridCol(
              xl: 3,md: 4,lg: 3,sm: 6,xs: 12,
              child: Container(
                height: 100,
                color: Colors.black,
            ),
            ),
            ResponsiveGridCol(
              xl: 3,md: 4,lg: 3,sm: 6,xs: 12,
              child: Container(
                height: 100,
                color: Colors.pink,
              ),
            ),
            ResponsiveGridCol(
              xl: 3,md: 4,lg: 3,sm: 6,xs: 12,
              child: Container(
                height: 100,
                color: Colors.orange,
              ),
            ),
            ResponsiveGridCol(
              xl: 3,md: 4,lg: 3,sm: 6,xs: 12,
              child: Container(
                height: 100,
                color: Colors.blue,
              ),
            ),
            ResponsiveGridCol(
              xl: 3,md: 4,lg: 3,sm: 6,xs: 12,
              child: Container(
                height: 100,
                color: Colors.green,
              ),
            ),
            ResponsiveGridCol(
              xl: 3,md: 4,lg: 3,sm: 6,xs: 12,
              child: Container(
                height: 100,
                color: Colors.black,
              ),
            ),
        ],
        ),
      ),
    );
  }

}