import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ostad_flutter_project/flutter_module/module_12(TaskManager_Tutorial)/style/style.dart';
import 'package:ostad_flutter_project/flutter_module/module_12(TaskManager_Tutorial)/utility/utility.dart';

AppBar taskAppBar(context, profileData) {
  return AppBar(
    backgroundColor: colorGreen,
    flexibleSpace: Container(
      margin: const EdgeInsets.fromLTRB(10, 40, 10, 0),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: 20,
            child: ClipOval(
              child: Image.memory(showBase64Image(profileData["photo"])),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, "/profileScreen");
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${profileData['firstName']} ${profileData['lastName']}",
                  style: head7Text(colorWhite),
                ),
                Text(
                  profileData["email"],
                  style: head9Text(colorWhite),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
    actions: [
      IconButton(
          onPressed: () {
            Navigator.pushNamed(context, "/taskCreate");
          },
          icon: const Icon(CupertinoIcons.add_circled, color: Colors.white,size: 28,),),
      IconButton(
          onPressed: () async {
            await removeToken();
            Navigator.pushNamedAndRemoveUntil(
                context, "/login", (route) => false);
          },
          icon: const Icon(CupertinoIcons.person_crop_circle_badge_xmark, color: Colors.white, size: 28,),),
    ],
  );
}
