import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
          title: Text("Flexible"),
          centerTitle: true,
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Flexible(
              fit: FlexFit.tight,
                child: Container(color: Colors.orange,),
            ),
            Flexible(
              fit: FlexFit.tight,
              child: Container(color: Colors.black,),
            ),
            Flexible(
              fit: FlexFit.tight,
              child: Container(color: Colors.green,),
            ),
            Flexible(
              fit: FlexFit.tight,
              child: Container(color: Colors.blue,),
            ),

          ],
        )
    );
  }

}