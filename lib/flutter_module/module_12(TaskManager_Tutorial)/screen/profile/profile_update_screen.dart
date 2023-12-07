import 'package:flutter/material.dart';
import 'package:ostad_flutter_project/flutter_module/module_12(TaskManager_Tutorial)/style/style.dart';

class ProfileUpdateScreen extends StatefulWidget {
  const ProfileUpdateScreen({super.key});

  @override
  State<ProfileUpdateScreen> createState() => _ProfileUpdateScreenState();
}

class _ProfileUpdateScreenState extends State<ProfileUpdateScreen> {
  bool isLoading = false;

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
                          "Update Profile",
                          style: head1Text(colorDarkBlue),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: photoPickerField(),
                              ),
                              Expanded(
                                flex: 3,
                                child: InkWell(
                                  onTap: () {},
                                  child: Container(
                                    padding: const EdgeInsets.only(left: 16),
                                    child: const Text("Select a Photo"),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          onChanged: (textValue) {},
                          decoration: appInputDecoration("Email Address"),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          onChanged: (textValue) {},
                          decoration: appInputDecoration("First Name"),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          onChanged: (textValue) {},
                          decoration: appInputDecoration("Last Name"),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          onChanged: (textValue) {},
                          decoration: appInputDecoration("Mobile"),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          onChanged: (textValue) {},
                          decoration: appInputDecoration("Password"),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                          style: appButtonStyle(),
                          onPressed: () {},
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

  Container photoPickerField() {
    return Container(
      height: 50,
      decoration: const BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(8),
          bottomLeft: Radius.circular(8),
        ),
      ),
      alignment: Alignment.center,
      child: const Text(
        "Photo",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
