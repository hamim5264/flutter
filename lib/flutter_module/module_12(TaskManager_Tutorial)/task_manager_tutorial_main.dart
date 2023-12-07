import 'package:flutter/material.dart';
import 'package:ostad_flutter_project/flutter_module/module_12(TaskManager_Tutorial)/screen/onBoarding/email_verification_screen.dart';
import 'package:ostad_flutter_project/flutter_module/module_12(TaskManager_Tutorial)/screen/onBoarding/login_screen.dart';
import 'package:ostad_flutter_project/flutter_module/module_12(TaskManager_Tutorial)/screen/onBoarding/pin_verification_screen.dart';
import 'package:ostad_flutter_project/flutter_module/module_12(TaskManager_Tutorial)/screen/onBoarding/registration_screen.dart';
import 'package:ostad_flutter_project/flutter_module/module_12(TaskManager_Tutorial)/screen/onBoarding/set_password_screen.dart';
import 'package:ostad_flutter_project/flutter_module/module_12(TaskManager_Tutorial)/screen/profile/profile_update_screen.dart';
import 'package:ostad_flutter_project/flutter_module/module_12(TaskManager_Tutorial)/screen/task/home_screen.dart';
import 'package:ostad_flutter_project/flutter_module/module_12(TaskManager_Tutorial)/screen/task/task_create_screen.dart';
import 'package:ostad_flutter_project/flutter_module/module_12(TaskManager_Tutorial)/utility/utility.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  String? token = await readUserData("token");
  if (token == null) {
    runApp(const MyTaskManager('/login'));
  } else {
    runApp(const MyTaskManager('/'));
  }
}

class MyTaskManager extends StatelessWidget {
  final String firstRoute;

  const MyTaskManager(this.firstRoute, {super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Task Manager App",
      debugShowCheckedModeBanner: false,
      initialRoute: firstRoute,
      routes: {
        '/': (context) => const HomeScreen(),
        '/login': (context) => const LogInScreen(),
        '/registration': (context) => const RegistrationScreen(),
        '/emailVerification': (context) => const EmailVerificationScreen(),
        '/pinVerification': (context) => const PinVerificationScreen(),
        '/setPassword': (context) => const SetPasswordScreen(),
        '/taskCreate': (context) => const TaskCreateScreen(),
        '/profileScreen': (context) => const ProfileUpdateScreen(),
      },
    );
  }
}
