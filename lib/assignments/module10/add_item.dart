import 'package:flutter/material.dart';
import 'package:ostad_flutter_project/assignments/module10/popUp.dart';
import 'package:ostad_flutter_project/assignments/module10/todo_list.dart';

class AddItem extends StatefulWidget {
  const AddItem({super.key});

  @override
  State<AddItem> createState() => _AddItemState();
}

class _AddItemState extends State<AddItem> {
  TextEditingController titleControl = TextEditingController();
  TextEditingController descriptionControl = TextEditingController();

  TextEditingController editTitleControl = TextEditingController();
  TextEditingController editDescriptionControl = TextEditingController();

  List<ToDo> todoList = [];

  void showCustomModalBottomSheet(ToDo todo) {
    editTitleControl.text = todo.title;
    editDescriptionControl.text = todo.description;

    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return SingleChildScrollView(
            child: Column(
              children: [
                TextField(
                  controller: editTitleControl,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Title",
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextField(
                  controller: editDescriptionControl,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Description",
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                  onPressed: () {
                    String updatedTitle = editTitleControl.text;
                    String updatedDescription = editDescriptionControl.text;
                    if (updatedTitle.isNotEmpty &&
                        updatedDescription.isNotEmpty) {
                      setState(() {
                        todo.title = updatedTitle;
                        todo.description = updatedDescription;
                      });
                      editTitleControl.clear();
                      editDescriptionControl.clear();
                      Navigator.pop(context);
                    }
                  },
                  child: const Text("Edit Done"),
                ),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Column(
        children: [
          TextField(
            controller: titleControl,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Add Title",
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          TextField(
            controller: descriptionControl,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Add description",
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          ElevatedButton(
            onPressed: () {
              String title = titleControl.text;
              String description = descriptionControl.text;
              if (title.isNotEmpty && description.isNotEmpty) {
                setState(() {
                  todoList.add(ToDo(title: title, description: description));
                });
                titleControl.clear();
                descriptionControl.clear();
              } else if (title.isEmpty || description.isEmpty) {
                PopUpDialog.show(context);
              }
            },
            child: const Text("Add"),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: todoList.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onLongPress: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: const Text("Alert"),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          Navigator.pop(context);
                                          showCustomModalBottomSheet(
                                              todoList[index]);
                                        },
                                        child: const Text(
                                          "Edit",
                                          style: TextStyle(color: Colors.blue),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            todoList.removeAt(index);
                                          });
                                          Navigator.of(context).pop();
                                        },
                                        child: const Text(
                                          "Delete",
                                          style: TextStyle(color: Colors.blue),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            );
                          });
                    },
                    child: Card(
                      child: ListTile(
                        leading: const CircleAvatar(),
                        title: Text(todoList[index].title),
                        subtitle: Text(todoList[index].description),
                        trailing: const Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
