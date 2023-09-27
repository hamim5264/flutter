import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ostad_flutter_project/flutter_module/module_7/stateful_sum_app/style.dart';

void main (){
  runApp(myApp());
}
class myApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Sum App",
      debugShowCheckedModeBanner: true,
      home: HomeScreen(),
    );
  }

}
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenUI();
}

class _HomeScreenUI extends State<HomeScreen> {
  Map<String, double> Fromvalue = {
    "num1": 0,
    "num2": 0,
  };
  double SUM=0;
  @override
  Widget build(BuildContext context) {

    myInputChange (InputKey, InputValue){
      setState(() {
        Fromvalue.update(InputKey, (value) => double.parse(InputValue));
      });
    }
    AddAllNumber (){
      setState(() {
        SUM = Fromvalue["num1"]! + Fromvalue["num2"]!;
      });
    }
    return Scaffold(
      appBar: AppBar(
        title: Text("Sum App"),
        centerTitle: true,
      ),
      body: Padding(
          padding: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(SUM.toString(),
              style: HeadTextStyle(),),
            SizedBox(
              height: 20,
            ),
            TextField(
              onChanged: (value){
                myInputChange("num1", value);
              },
              decoration: AppInputStyle("Fisrt Number:"),

            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              onChanged: (value){
                myInputChange("num2", value);
              },
              decoration: AppInputStyle("Secound Number:"),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: (){
                    AddAllNumber();
                  },
                  child: Text("Total"),
                style: AppButtonStyle(),

              ),
            ),
          ],
        ),
      ),
    );
  }
}
