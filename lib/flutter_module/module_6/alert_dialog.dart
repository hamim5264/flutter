import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      title: "Alert",
      debugShowCheckedModeBanner: true,
    );
  }
}

class Home extends StatelessWidget {
  mySnackbar(message, context) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message),backgroundColor: Colors.green,));
  }

  myAlert(context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return Expanded(
            child: AlertDialog(
              title: Text("Alert!"),
              content: Text("Do you want to delete?"),
              actions: [
                TextButton(
                    onPressed: () {
                      mySnackbar("Successfully Deleted Message", context);
                      Navigator.of(context).pop();
                    },
                    child: Text("Yes")),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text("No")),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Dialog"),
        centerTitle: true,
        backgroundColor: Colors.red,
        elevation: 10,
        toolbarHeight: 70,
        leading: Icon(Icons.add_alert),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    textStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    padding: EdgeInsets.all(10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    )),
                onPressed: () {
                  myAlert(context);
                },
                child: Text("Click"))
          ],
        ),
      ),
    );
  }
}
