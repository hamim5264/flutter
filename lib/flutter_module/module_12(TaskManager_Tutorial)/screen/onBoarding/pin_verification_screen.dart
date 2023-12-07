import 'package:flutter/material.dart';
import 'package:ostad_flutter_project/flutter_module/module_12(TaskManager_Tutorial)/api/api_client.dart';
import 'package:ostad_flutter_project/flutter_module/module_12(TaskManager_Tutorial)/style/style.dart';
import 'package:ostad_flutter_project/flutter_module/module_12(TaskManager_Tutorial)/utility/utility.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinVerificationScreen extends StatefulWidget {
  const PinVerificationScreen({super.key});

  @override
  State<PinVerificationScreen> createState() => _PinVerificationScreenState();
}

class _PinVerificationScreenState extends State<PinVerificationScreen> {
  Map<String, String> formValues = {"otp": ""};
  bool isLoading = false;

  inputOnChange(mapKey, textValue) {
    formValues.update(mapKey, (value) => textValue);
    setState(() {});
  }

  formOnSubmit() async {
    if (formValues["otp"]!.length != 6) {
      errorToast("6 Digit PIN Required!");
    } else {
      isLoading = true;
      setState(() {});
      String? emailAddress = await readUserData("EmailVerification");
      bool response = await verifyOTPRequest(emailAddress, formValues["otp"]);
      if (response == true) {
        if(mounted){
          Navigator.pushNamed(context, "/setPassword");
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
                          "PIN Verification",
                          style: head1Text(colorDarkBlue),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "A 6 digit PIN has been send to your mobile number.",
                          style: head6Text(colorLightGray),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        PinCodeTextField(
                          appContext: context,
                          length: 6,
                          pinTheme: appOTPStyle(),
                          animationType: AnimationType.fade,
                          animationDuration: const Duration(milliseconds: 300),
                          enableActiveFill: true,
                          onCompleted: (v) {},
                          onChanged: (value) {
                            inputOnChange("otp", value);
                          },
                        ),
                        ElevatedButton(
                          style: appButtonStyle(),
                          onPressed: () {
                            formOnSubmit();
                          },
                          child: successButtonChild("Verify"),
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
