import 'package:flutter/material.dart';
import 'package:ostad_flutter_project/flutter_module/module_10(To_Do)/PracticeToDo/todo.dart';

class UpdatedTodo extends StatefulWidget {
  const UpdatedTodo({
    super.key,
    required this.todo,
    required this.onEditTitle,
    required this.onEditDescriptions,
  });

  final ToDo todo;
  final Function(String) onEditTitle;
  final Function(String) onEditDescriptions;

  @override
  State<UpdatedTodo> createState() => _UpdatedTodoState();
}

class _UpdatedTodoState extends State<UpdatedTodo> {
  late TextEditingController titleTEcontroller;
  late TextEditingController descriptionTEcontroller;

  @override
  void initState() {
    super.initState();
    titleTEcontroller = TextEditingController(text: widget.todo.title);
    descriptionTEcontroller =
        TextEditingController(text: widget.todo.descriptions);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            controller: titleTEcontroller,
            decoration: const InputDecoration(
              enabledBorder: OutlineInputBorder(),
              focusedBorder: OutlineInputBorder(),
            ),
            validator: (String? value) {
              if (value?.isEmpty ?? true) {
                return 'Enter value';
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
            ),
            validator: (String? value) {
              if (value?.isEmpty ?? true) {
                return 'Enter value';
              }
              return null;
            },
          ),
        ),
        const SizedBox(),
        ElevatedButton(
            onPressed: () {
              widget.onEditTitle(titleTEcontroller.text.trim());
              widget.onEditDescriptions(descriptionTEcontroller.text.trim());
              Navigator.pop(context);
            },
            child: const Text("Edit Done")),
      ],
    );
  }
}
