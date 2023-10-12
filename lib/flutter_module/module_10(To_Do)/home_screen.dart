import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ostad_flutter_project/flutter_module/module_10(To_Do)/add_new_todo_modal.dart';
import 'package:ostad_flutter_project/flutter_module/module_10(To_Do)/update_todo_modal.dart';
import 'package:ostad_flutter_project/flutter_module/module_10(To_Do)/todo.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<ToDo> todoList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ToDo's"),
        centerTitle: true,
        leading: const Icon(Icons.list_alt),
        elevation: 0,
      ),
      body: ListView.separated(
        itemCount: todoList.length,
        itemBuilder: (context, index) {
          final ToDo todo = todoList[index];
          final String formateddate =
              DateFormat("hh:mm a dd-MM-yyyy").format(todo.createdDateTime);
          return ListTile(
            tileColor: todo.status == "done" ? Colors.orange : null,
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text("Actions!"),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ListTile(
                          leading: const Icon(
                            Icons.edit,
                            color: Colors.red,
                          ),
                          title: const Text("Update"),
                          onTap: () {
                            Navigator.pop(context);
                            showModalBottomSheet(
                              context: context,
                              builder: (context) {
                                return UpdateTodoModal(
                                    todo: todo,
                                    onTodoUpdate: (String updatedDetailsText) {
                                      updateTodo(index, updatedDetailsText);
                                    });
                              },
                            );
                          },
                        ),
                        const Divider(
                          height: 0,
                        ),
                        ListTile(
                          leading: const Icon(
                            Icons.delete,
                            color: Colors.red,
                          ),
                          title: const Text("Delete"),
                          onTap: () {
                            deleteTodo(index);
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ),
                  );
                },
              );
            },
            onLongPress: () {
              String currentStatus =
                  todo.status == "pending" ? "done" : "pending";
              updateTodoStatus(index, currentStatus);
            },
            leading: CircleAvatar(
              child: Text("${index + 1}"),
            ),
            title: Text(todo.details),
            subtitle: Text(formateddate),
            trailing: Text(todo.status.toUpperCase()),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const Divider(
            height: 4,
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return AddNewTodoModal(onAddtap: (ToDo task) {
                  addTodo(task);
                });
              });
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  void addTodo(ToDo todo) {
    todoList.add(todo);
    setState(() {});
  }

  void deleteTodo(int index) {
    todoList.removeAt(index);
    setState(() {});
  }

  void updateTodo(int index, String toDoDetails) {
    todoList[index].details = toDoDetails;
    setState(() {});
  }

  void updateTodoStatus(int index, String status) {
    todoList[index].status = status;
    setState(() {});
  }
}
