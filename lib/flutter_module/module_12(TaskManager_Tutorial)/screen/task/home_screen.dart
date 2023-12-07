import 'package:flutter/material.dart';
import 'package:ostad_flutter_project/flutter_module/module_12(TaskManager_Tutorial)/screen/component/app_bottom_nav.dart';
import 'package:ostad_flutter_project/flutter_module/module_12(TaskManager_Tutorial)/screen/component/cancel_tasklist.dart';
import 'package:ostad_flutter_project/flutter_module/module_12(TaskManager_Tutorial)/screen/component/completed_tasklist.dart';
import 'package:ostad_flutter_project/flutter_module/module_12(TaskManager_Tutorial)/screen/component/new_tasklist.dart';
import 'package:ostad_flutter_project/flutter_module/module_12(TaskManager_Tutorial)/screen/component/progress_tasklist.dart';
import 'package:ostad_flutter_project/flutter_module/module_12(TaskManager_Tutorial)/screen/component/task_app_bar.dart';
import 'package:ostad_flutter_project/flutter_module/module_12(TaskManager_Tutorial)/utility/utility.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int tabIndex = 0;
Map<String, String> profileData = {"email":"", "firstName":"", "lastName":"", "photo": defaultProfilePic};

  onItemTapped(int index){
    tabIndex = index;
    setState(() {});
  }

  final widgetOptions = [
    const NewTaskList(),
    const ProgressTaskList(),
    const CompletedTaskList(),
    const CancelTaskList(),
  ];

readAppBarData()async{
  String? email = await readUserData("email");
  String? firstName = await readUserData("firstName");
  String? lastName = await readUserData("lastName");
  String? img = await readUserData("photo");

  setState(() {
    profileData = {"email":'$email', "firstName": '$firstName', "lastName":'$lastName', "photo": '$defaultProfilePic'};
  });
}

@override
  void initState() {
    readAppBarData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: taskAppBar(context, profileData),
      body: widgetOptions.elementAt(tabIndex),
      bottomNavigationBar: appBottomNav(tabIndex, onItemTapped),
    );
  }
}
