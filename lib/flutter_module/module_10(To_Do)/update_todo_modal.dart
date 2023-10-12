import 'package:flutter/material.dart';
import 'package:ostad_flutter_project/flutter_module/module_10(To_Do)/todo.dart';

class UpdateTodoModal extends StatefulWidget {
  const UpdateTodoModal(
      {super.key, required this.todo, required this.onTodoUpdate});

  final ToDo todo;
  final Function(String) onTodoUpdate;

  @override
  State<UpdateTodoModal> createState() => _UpdateTodoModalState();
}

class _UpdateTodoModalState extends State<UpdateTodoModal> {
  late TextEditingController todoTEController;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    todoTEController = TextEditingController(text: widget.todo.details);
  }

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
                  "Update Todo",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.close),
                ),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            TextFormField(
              controller: todoTEController,
              maxLines: 4,
              decoration: const InputDecoration(
                hintText: "Enter Your ToDo Here",
                enabledBorder: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(),
              ),
              validator: (String? value) {
                if (value?.isEmpty ?? true) {
                  return "Enter Value";
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
                    widget.onTodoUpdate(todoTEController.text.trim());
                    Navigator.pop(context);
                  }
                },
                child: const Text("Update"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
