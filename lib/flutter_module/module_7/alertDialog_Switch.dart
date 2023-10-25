import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: true,
    );
  }

}
class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Dialog"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Switch(value: true, onChanged: (bool value){}),
          Switch.adaptive(value: false, onChanged: (bool value){}),
          ElevatedButton(
              onPressed: (){
                showDialog(
                  barrierDismissible: false,
                    context: context,
                    builder: (context){
                      return AlertDialog(
                        title: Text("Alert!"),
                        content: Text("You are in danger."),
                        actions: [
                          TextButton(
                              onPressed: (){
                                Navigator.pop(context);
                              },
                              child: Text("Cencel")
                          ),
                          TextButton(onPressed: (){},
                              child: Text("OK"),
                          ),
                        ],
                      );
                    }
                );
              },
              child: Text("Show Dialog"),
          ),

          ElevatedButton(
            onPressed: () {
              showAboutDialog(
                  context: context,
                  applicationName: "PikaPie",
                  applicationVersion: '1.0.4',
                  children: [
                    Text('This application is good for regular uses!')
                  ]);
            },
            child: Text('show about'),
          ),

          ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                  isDismissible: false,
                  backgroundColor: Colors.grey.shade100,
                  barrierColor: Colors.black45,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                      )
                  ),
                  context: context, builder: (context) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Center(
                        child: Text('This is bottom sheet'),
                      )
                    ],
                  ),
                );
              });
            }, child: Text('show bottom sheet'),
          ),
        ],
      ),
    );
  }

}