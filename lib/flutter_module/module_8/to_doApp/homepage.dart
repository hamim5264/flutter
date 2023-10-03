import 'package:flutter/material.dart';
import 'package:ostad_flutter_project/flutter_module/moudle_8/to_doApp/style.dart';

class ToDoScreen extends StatefulWidget {
  @override
  State<ToDoScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<ToDoScreen> {

  List ToDoList = [];
  String item = "";

  myInputonChnage(content) {
    setState(() {
      item = content;
    });
  }

  Additem() {
    setState(() {
      ToDoList.add({"item": item});
    });
  }

  RemoveItem(index) {
    setState(() {
      ToDoList.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("To Do App"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            Expanded(
              flex: 12,
              child: Row(
                children: [
                  Expanded(
                    flex: 70,
                    child: TextField(
                      onChanged: (content) {
                        myInputonChnage(content);
                      },
                      decoration: AppInputDecoration("List Item"),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Container(),
                  ),
                  Expanded(
                    flex: 30,
                    child: ElevatedButton(
                      onPressed: () {
                        Additem();
                      },
                      child: Text(
                        "Add",
                        style: TextStyle(fontSize: 15),
                      ),
                      style: AppButton(),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 78,
              child: ListView.builder(
                  itemCount: ToDoList.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: sizeBox50(Row(
                        children: [
                          Expanded(
                            flex: 80,
                            child: Text(ToDoList[index]["item"].toString()),
                          ),
                          Expanded(
                            flex: 20,
                            child: TextButton(
                                onPressed: () {
                                  RemoveItem(index);
                                },
                                child: Icon(Icons.delete)),
                          ),
                        ],
                      )),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
