import 'package:flutter/material.dart';
import 'package:ostad_flutter_project/flutter_module/module_12(TaskManager_Tutorial)/api/api_client.dart';
import 'package:ostad_flutter_project/flutter_module/module_12(TaskManager_Tutorial)/style/style.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  Map<String, String> formValues = {
    "email": "",
    "firstName": "",
    "lastName": "",
    "mobile": "",
    "password": "",
    "photo": "",
    "cpassword": "",
  };

  bool isLoading = false;

  inputOnChange(mapKey, textValue) {
    formValues.update(mapKey, (value) => textValue);
    setState(() {});
  }

  formOnSubmit() async {
    if (formValues["email"]!.isEmpty) {
      errorToast("Email Required!");
    } else if (formValues["firstName"]!.isEmpty) {
      errorToast("First Name Required!");
    } else if (formValues["lastName"]!.isEmpty) {
      errorToast("Last Name Required!");
    } else if (formValues["mobile"]!.isEmpty) {
      errorToast("Mobile No Required!");
    } else if (formValues["password"]!.isEmpty) {
      errorToast("Password Required!");
    } else if (formValues["password"] != formValues["cpassword"]) {
      errorToast("Confirm password should be same!");
    } else {
      isLoading = true;
      setState(() {});
      bool response = await registrationRequest(formValues); //Api calling
      if (response == true) {
        if(mounted){
          Navigator.pushNamedAndRemoveUntil(context, "/login", (route) => false);
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
                    child: CircularProgressIndicator(backgroundColor: Colors.green,color: Colors.white,),
                  )
                : SingleChildScrollView(
                    padding: const EdgeInsets.all(30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Join With Us",
                          style: head1Text(colorDarkBlue),
                        ),
                        const SizedBox(
                          height: 1,
                        ),
                        Text(
                          "Learn With Rabbil Hasan",
                          style: head6Text(colorLightGray),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          onChanged: (textValue) {
                            inputOnChange("email", textValue);
                          },
                          decoration: appInputDecoration("Email Address"),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          onChanged: (textValue) {
                            inputOnChange("firstName", textValue);
                          },
                          decoration: appInputDecoration("First Name"),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          onChanged: (textValue) {
                            inputOnChange("lastName", textValue);
                          },
                          decoration: appInputDecoration("Last Name"),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          onChanged: (textValue) {
                            inputOnChange("mobile", textValue);
                          },
                          decoration: appInputDecoration("Mobile"),
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
                          child: successButtonChild("Registration"),
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
