import 'package:flutter/material.dart';
import 'package:ostad_flutter_project/flutter_module/module_12(TaskManager_Tutorial)/api/api_client.dart';
import 'package:ostad_flutter_project/flutter_module/module_12(TaskManager_Tutorial)/style/style.dart';
import 'package:ostad_flutter_project/flutter_module/module_12(TaskManager_Tutorial)/utility/utility.dart';

class SetPasswordScreen extends StatefulWidget {
  const SetPasswordScreen({super.key});

  @override
  State<SetPasswordScreen> createState() => _SetPasswordScreenState();
}

class _SetPasswordScreenState extends State<SetPasswordScreen> {
  Map<String, String> formValues = {
    "email": "",
    "OTP": "",
    "password": "",
    "cpassword": ""
  };
  bool isLoading = false;

  @override
  void initState() {
    callStoreData();
    super.initState();
  }

  callStoreData() async {
    String? otp = await readUserData("OTPVerification");
    String? email = await readUserData("EmailVerification");
    inputOnChange("email", email);
    inputOnChange("OTP", otp);
  }

  inputOnChange(mapKey, textValue) {
    formValues.update(mapKey, (value) => textValue);
  }

  formOnSubmit() async {
    if (formValues["password"]!.isEmpty) {
      errorToast("Password Required!");
    } else if (formValues["password"] != formValues["cpassword"]) {
      errorToast("Confirm password should be same!");
    } else {
      isLoading = true;
      setState(() {});
      bool response = await setPasswordRequest(formValues); //api calling
      if (response == true) {
        if (mounted) {
          Navigator.pushNamedAndRemoveUntil(
              context, "/login", (route) => false);
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
      body: Stack(
        children: [
          screenBackground(context),
          Container(
            alignment: Alignment.center,
            child: isLoading
                ? const Center(
                    child: CircularProgressIndicator(
                      backgroundColor: Colors.green,
                      color: Colors.white,
                    ),
                  )
                : SingleChildScrollView(
                    padding: const EdgeInsets.all(30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Set Password",
                          style: head1Text(colorDarkBlue),
                        ),
                        const SizedBox(
                          height: 1,
                        ),
                        Text(
                          "Minimum length password 8 character with latter and number combination.",
                          style: head6Text(colorLightGray),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          onChanged: (textValue) {
                            inputOnChange("password", textValue);
                          },
                          decoration: appInputDecoration("Password"),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          onChanged: (textValue) {
                            inputOnChange("cpassword", textValue);
                          },
                          decoration: appInputDecoration("Confirm Password"),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                          style: appButtonStyle(),
                          onPressed: () {
                            formOnSubmit();
                          },
                          child: successButtonChild("Confirm"),
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
