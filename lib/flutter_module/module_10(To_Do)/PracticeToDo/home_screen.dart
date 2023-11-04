import 'package:flutter/material.dart';
import 'package:ostad_flutter_project/flutter_module/module_10(To_Do)/PracticeToDo/todo.dart';
import 'package:ostad_flutter_project/flutter_module/module_10(To_Do)/PracticeToDo/updated_todo.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController titleTEcontroller = TextEditingController();
  final TextEditingController descriptionTEcontroller = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  List<ToDo> todolist = [];

  void _submit() {
    setState(() {
      titleTEcontroller.clear();
      descriptionTEcontroller.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: const [
          Icon(
            Icons.search,
            color: Colors.blue,
          )
        ],
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: titleTEcontroller,
                decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(),
                    hintText: "Add Title"),
                validator: (String? value) {
                  if (value?.isEmpty ?? true) {
                    return 'enter value';
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: descriptionTEcontroller,
                decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(),
                    hintText: "Add Description"),
                validator: (String? value) {
                  if (value?.isEmpty ?? true) {
                    return 'Enter Value';
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(),
            ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ToDo todo = ToDo(
                      title: titleTEcontroller.text.trim(),
                      descriptions: descriptionTEcontroller.text.trim(),
                    );
                    addTodo(todo);
                  }
                  _submit();
                },
                child: const Text("Add")),
            Expanded(
              child: ListView.separated(
                itemCount: todolist.length,
                itemBuilder: (context, index) {
                  ToDo todo = todolist[index];
                  return ListTile(
                    tileColor: Colors.white10,
                    leading: const CircleAvatar(),
                    title: Text(todo.title),
                    subtitle: Text(todo.descriptions),
                    trailing: IconButton(
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: const Text("Alert"),
                                  content: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      TextButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                          showModalBottomSheet(
                                              context: context,
                                              builder: (context) {
                                                return UpdatedTodo(
                                                  todo: todo,
                                                  onEditTitle:
                                                      (String newTodoTitle) {
                                                    updatedTodoTitle(
                                                        index, newTodoTitle);
                                                  },
                                                  onEditDescriptions: (String
                                                      newTodoDescription) {
                                                    updatedTodoDescription(
                                                        index,
                                                        newTodoDescription);
                                                  },
                                                );
                                              });
                                        },
                                        child: const Text(
                                          "Edit",
                                          style: TextStyle(color: Colors.blue),
                                        ),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          deleteTodo(index);
                                          Navigator.pop(context);
                                        },
                                        child: const Text(
                                          "Delete",
                                          style: TextStyle(color: Colors.blue),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              });
                        },
                        icon: const Icon(Icons.arrow_forward)),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const Divider(
                    height: 4,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  void addTodo(ToDo todo) {
    todolist.add(todo);
    setState(() {});
  }

  void deleteTodo(int index) {
    todolist.removeAt(index);
    setState(() {});
  }

  void updatedTodoTitle(int index, String newTitle) {
    todolist[index].title = newTitle;
    setState(() {});
  }

  void updatedTodoDescription(int index, String newDescription) {
    todolist[index].descriptions = newDescription;
    setState(() {});
  }
}
