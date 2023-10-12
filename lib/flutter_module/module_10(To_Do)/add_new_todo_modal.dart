import 'package:flutter/material.dart';
import 'package:ostad_flutter_project/flutter_module/module_10(To_Do)/todo.dart';

class AddNewTodoModal extends StatefulWidget {
  const AddNewTodoModal({super.key, required this.onAddtap});

  final Function(ToDo) onAddtap;

  @override
  State<AddNewTodoModal> createState() => _AddnewTodoModalState();
}

class _AddnewTodoModalState extends State<AddNewTodoModal> {
  final TextEditingController todoTEController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
          key: _formKey,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Add New ToDo",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.close)),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              TextFormField(
                maxLines: 4,
                controller: todoTEController,
                decoration: const InputDecoration(
                    hintText: "Enter Your ToDo Here",
                    enabledBorder: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder()),
                validator: (String? value) {
                  if (value?.isEmpty ?? true) {
                    return "Enter a Value";
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      ToDo todo = ToDo(
                        details: todoTEController.text.trim(),
                        createdDateTime: DateTime.now(),
                        updatedDateTime: DateTime.now(),
                      );
                      widget.onAddtap(todo);
                      Navigator.pop(context);
                    }
                  },
                  child: const Text("ADD"),
                ),
              ),
            ],
          )),
    );
  }
}
