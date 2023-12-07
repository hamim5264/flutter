import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ostad_flutter_project/flutter_module/module_12(TaskManager_Tutorial)/style/style.dart';

ListView taskList(taskItems, deleteItem, statusChange) {
  return ListView.builder(
      itemCount: taskItems.length,
      itemBuilder: (context, index) {
        Color statusColor = statusChipColor;
        if (taskItems[index]["status"] == "Completed") {
          statusColor = colorGreen;
        } else if (taskItems[index]["status"] == "Progress") {
          statusColor = colorOrange;
        } else if (taskItems[index]["status"] == "Canceled") {
          statusColor = colorRed;
        }

        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: itemSizeBox(
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    taskItems[index]["title"],
                    style: head6Text(colorDarkBlue),
                  ),
                  Text(
                    taskItems[index]["description"],
                    style: head7Text(colorLightGray),
                  ),
                  Text(
                    taskItems[index]["createdDate"],
                    style: head9Text(colorDarkBlue),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      statusChild(
                        taskItems[index]["status"],
                        statusColor,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 50,
                            height: 30,
                            child: ElevatedButton(
                              onPressed: () {
                                statusChange(taskItems[index]["_id"]);
                              },
                              style: appStatusButtonStyle(colorGreen),
                              child: const Icon(
                                CupertinoIcons.pen,
                                size: 24,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            width: 50,
                            height: 30,
                            child: ElevatedButton(
                              onPressed: () {
                                deleteItem(taskItems[index]["_id"]);
                              },
                              style: appStatusButtonStyle(colorRed),
                              child: const Icon(
                                CupertinoIcons.delete,
                                size: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      });
}
