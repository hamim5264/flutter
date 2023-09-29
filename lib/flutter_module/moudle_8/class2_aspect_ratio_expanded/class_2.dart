import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(RDApp());
}
class RDApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Responsive Design"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          ///Ratio:= width : height
          ///Ratio:= 16/16
          ///100/100
          // AspectRatio(
          //     aspectRatio: 16/4,
          //   child: Container(
          //     color: Colors.red,
          //     child: Image.network('https://plus.unsplash.com/premium_photo-1686978705258-6149c33ba0a7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDF8Q0R3dXdYSkFiRXd8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
          //     //fit: BoxFit.cover,
          //     ),
          //   ),
          // ),
          // Container(
          //   width: MediaQuery.sizeOf(context).width,
          //   height: MediaQuery.sizeOf(context).width,
          //   color: Colors.black,
          //   child: FractionallySizedBox(
          //     widthFactor: 0.5, ///0-1
          //     heightFactor: 0.5,
          //     child: Container(
          //       color: Colors.red,
          //     ),
          //   ),
          // ),

          // Flexible(
          //   fit: FlexFit.loose,
          //     flex: 1,
          //     child: Container(
          //       color: Colors.red,
          //       width: MediaQuery.sizeOf(context).width,
          //     ),
          // ),
          // Flexible(
          //   fit: FlexFit.loose,
          //     flex: 5,
          //     child: Container(
          //       color: Colors.black,
          //       width: MediaQuery.sizeOf(context).width,
          //     ),
          // ),
          // Flexible(
          //   flex: 2,
          //     child: Row(
          //       children: [
          //         Flexible(
          //             child: Container(
          //               color: Colors.blueAccent,
          //             ),
          //         ),
          //         Flexible(
          //           flex: 5,
          //             child: Container(
          //               color: Colors.red,
          //             ),
          //         ),
          //       ],
          //     ),
          // ),
          // Flexible(
          //   fit: FlexFit.loose,
          //     flex: 3,
          //     child: Container(
          //       color: Colors.orange,
          //       width: MediaQuery.sizeOf(context).width,
          //     ),
          // ),
          Container(
            height: 50,
            color: Colors.green,
            width: MediaQuery.sizeOf(context).width,

          ),
          Expanded(
            flex: 10,
              child: Container(
                color: Colors.red,
                width: double.infinity,
                alignment: Alignment.center,
                child: SizedBox(
                  width: 200,
                  height: 20,
                  child: FittedBox(child: Text("Flutter is a popular open-source mobile app development")),
                ),
              ),
          ),
          Expanded(
            flex: 3,
              child: Container(
                color: Colors.black,
              ),
          ),

        ],
      ),
    );
  }

}