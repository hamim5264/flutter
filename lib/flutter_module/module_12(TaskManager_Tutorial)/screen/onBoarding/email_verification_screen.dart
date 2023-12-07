import 'package:flutter/material.dart';
import 'package:ostad_flutter_project/flutter_module/module_12(TaskManager_Tutorial)/api/api_client.dart';
import 'package:ostad_flutter_project/flutter_module/module_12(TaskManager_Tutorial)/style/style.dart';

class EmailVerificationScreen extends StatefulWidget {
  const EmailVerificationScreen({super.key});

  @override
  State<EmailVerificationScreen> createState() =>
      _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
  Map<String, String> formValues = {"email": ""};
  bool isLoading = false;

  inputOnChange(mapKey, textValue) {
    formValues.update(mapKey, (value) => textValue);
    setState(() {});
  }

  formOnSubmit() async {
    if (formValues["email"]!.isEmpty) {
      errorToast("Email Required!");
    } else {
      isLoading = true;
      setState(() {});
      bool response =
          await verifyEmailRequest(formValues["email"]); //api calling
      if (response == true) {
        if(mounted){
          Navigator.pushNamed(context, "/pinVerification");
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
                          "Your Email Address",
                          style: head1Text(colorDarkBlue),
                        ),
                        const SizedBox(
                          height: 1,
                        ),
                        Text(
                          "A 6 digit verification pin will send to your email address.",
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
                        ElevatedButton(
                          style: appButtonStyle(),
                          onPressed: () {
                            formOnSubmit();
                          },
                          child: successButtonChild("Next"),
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
