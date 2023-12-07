import 'package:flutter/material.dart';
import 'package:ostad_flutter_project/flutter_module/module_12(TaskManager_Tutorial)/api/api_client.dart';
import 'package:ostad_flutter_project/flutter_module/module_12(TaskManager_Tutorial)/style/style.dart';

class TaskCreateScreen extends StatefulWidget {
  const TaskCreateScreen({super.key});

  @override
  State<TaskCreateScreen> createState() => _TaskCreateScreenState();
}

class _TaskCreateScreenState extends State<TaskCreateScreen> {
  Map<String, String> formValues = {
    "title": "",
    "description": "",
    "status": "New"
  };
  bool isLoading = false;

  inputOnChange(mapKey, textValue) {
    formValues.update(mapKey, (value) => textValue);
    setState(() {});
  }

  formOnSubmit() async {
    if (formValues["title"]!.isEmpty) {
      errorToast("Title Required!");
    } else if (formValues["description"]!.isEmpty) {
      errorToast("Description Required!");
    } else {
      isLoading = true;
      setState(() {});
      bool response = await taskCreateRequest(formValues);
      if (response == true) {
        if(mounted){
          Navigator.pushNamedAndRemoveUntil(context, "/", (route) => false);
        }
      } else {
        isLoading = false;
        setState(() {});
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create New Task"),
        backgroundColor: colorGreen,
      ),
      body: Stack(
        children: [
          screenBackground(context),
          Container(
            alignment: Alignment.center,
            child: isLoading
                ? (const Center(
                    child: CircularProgressIndicator(backgroundColor: Colors.green,color: Colors.white,),
                  ))
                : SingleChildScrollView(
                    padding: const EdgeInsets.all(30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Add New Task",
                          style: head1Text(colorDarkBlue),
                        ),
                        const SizedBox(
                          height: 1,
                        ),
                        TextFormField(
                          onChanged: (textValue) {
                            inputOnChange("title", textValue);
                          },
                          decoration: appInputDecoration("Task Name"),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          onChanged: (textValue) {
                            inputOnChange("description", textValue);
                          },
                          maxLines: 5,
                          decoration: appInputDecoration("Description"),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                          style: appButtonStyle(),
                          onPressed: () {
                            formOnSubmit();
                          },
                          child: successButtonChild("Create"),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
