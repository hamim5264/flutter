import 'package:flutter/material.dart';
import 'package:ostad_flutter_project/flutter_module/module_12(TaskManager_Tutorial)/api/api_client.dart';
import 'package:ostad_flutter_project/flutter_module/module_12(TaskManager_Tutorial)/screen/component/task_list.dart';
import 'package:ostad_flutter_project/flutter_module/module_12(TaskManager_Tutorial)/style/style.dart';

class CompletedTaskList extends StatefulWidget {
  const CompletedTaskList({super.key});

  @override
  State<CompletedTaskList> createState() => _CompletedTaskListState();
}

class _CompletedTaskListState extends State<CompletedTaskList> {
  List taskItems = [];
  bool isLoading = true;
  String status = "Completed";

  @override
  void initState() {
    callData();
    super.initState();
  }

  callData() async {
    var data = await taskListRequest("Completed");
    isLoading = false;
    taskItems = data;
    setState(() {});
  }

  updateStatus(id) async {
    setState(() {
      isLoading = true;
    });
    await taskUpdateRequest(id, status);
    await callData();
    setState(() {
      status = "Completed";
    });
  }

  deleteItem(id) async {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text("Delete!"),
            content: const Text("Once delete, you can't get it back."),
            actions: [
              OutlinedButton(
                onPressed: () async {
                  Navigator.pop(context);
                  isLoading = true;
                  setState(() {});
                  await taskDeleteRequest(id);
                  await callData();
                },
                child: const Text("Yes"),
              ),
              OutlinedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("No"),
              ),
            ],
          );
        });
  }

  statusChange(id) async {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
            return Container(
              padding: const EdgeInsets.all(30),
              height: 360,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  RadioListTile(
                      title: const Text("New"),
                      value: "New",
                      groupValue: status,
                      onChanged: (value) {
                        setState(() {
                          status = value.toString();
                        });
                      }),
                  RadioListTile(
                      title: const Text("Progress"),
                      value: "Progress",
                      groupValue: status,
                      onChanged: (value) {
                        setState(() {
                          status = value.toString();
                        });
                      }),
                  RadioListTile(
                      title: const Text("Completed"),
                      value: "Completed",
                      groupValue: status,
                      onChanged: (value) {
                        setState(() {
                          status = value.toString();
                        });
                      }),
                  RadioListTile(
                      title: const Text("Canceled"),
                      value: "Canceled",
                      groupValue: status,
                      onChanged: (value) {
                        setState(() {
                          status = value.toString();
                        });
                      }),
                  ElevatedButton(
                    style: appButtonStyle(),
                    onPressed: () {
                      Navigator.pop(context);
                      updateStatus(id);
                    },
                    child: successButtonChild("Confirm"),
                  ),
                ],
              ),
            );
          });
        });
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? (const Center(
            child: CircularProgressIndicator(
              backgroundColor: Colors.green,
              color: Colors.white,
            ),
          ))
        : RefreshIndicator(
            onRefresh: () async {
              await callData();
            },
            child: taskList(taskItems, deleteItem, statusChange));
  }
}
