import 'package:flutter/material.dart';

void main() {
  runApp(const CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MainScreen(),
      title: "Basic Calculator App",
      debugShowCheckedModeBanner: true,
      theme: ThemeData(primarySwatch: Colors.lightGreen),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final TextEditingController _fieldOneTEController = TextEditingController();
  final TextEditingController _fieldTwoTEController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  double result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculator"),
        centerTitle: true,
        elevation: 60,
        leading: const Icon(Icons.calculate),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _fieldOneTEController,
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(hintText: "Number1"),
                validator: (String? value) {
                  // if(value == null){
                  //   return "Enter a Value";
                  // }
                  // if(value.trim().isEmpty){
                  //   return "Enter a Number";
                  // }
                  if (value?.trim().isEmpty ?? true) {
                    return "Enter Valid Value";
                  }
                  return null;
                },
              ),

              TextFormField(
                controller: _fieldTwoTEController,
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.done,
                decoration: const InputDecoration(hintText: "Number2"),
                validator: (String? value) {
                  if (value?.trim().isEmpty ?? true) {
                    return "Enter Valid Value";
                  }
                  return null;
                },
              ),

              const SizedBox(
                height: 20,
              ),

              ButtonBar(
                alignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton.icon(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          double firstNumber =
                              parseToDouble(_fieldOneTEController.text.trim());
                          double secondNumber =
                              parseToDouble(_fieldTwoTEController.text.trim());
                          result = addition(firstNumber, secondNumber);
                          setState(() {});
                        }
                      },
                      icon: const Icon(Icons.add),
                      label: const Text("Sum")
                  ),

                  ElevatedButton.icon(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          double firstNumber =
                              parseToDouble(_fieldOneTEController.text.trim());
                          double secondNumber =
                              parseToDouble(_fieldTwoTEController.text.trim());
                          result = substraction(firstNumber, secondNumber);
                          setState(() {});
                        }
                      },
                      icon: const Icon(Icons.remove),
                      label: const Text("Sub")
                  ),

                  ElevatedButton.icon(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          double firstNumber =
                              parseToDouble(_fieldOneTEController.text.trim());
                          double secondNumber =
                              parseToDouble(_fieldTwoTEController.text.trim());
                          result = multiplication(firstNumber, secondNumber);
                          setState(() {});
                        }
                      },
                      icon: const Icon(Icons.star),
                      label: const Text("Mul")
                  ),

                  ElevatedButton.icon(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          double firstNumber =
                              parseToDouble(_fieldOneTEController.text.trim());
                          double secondNumber =
                              parseToDouble(_fieldTwoTEController.text.trim());
                          result = division(firstNumber, secondNumber);
                          setState(() {});
                        }
                      },
                      icon: const Icon(Icons.safety_divider),
                      label: const Text("Div")
                  ),

                  ElevatedButton.icon(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          double firstNumber =
                              parseToDouble(_fieldOneTEController.text.trim());
                          double secondNumber =
                              parseToDouble(_fieldTwoTEController.text.trim());
                          result = modulus(firstNumber, secondNumber);
                          setState(() {});
                        }
                      },
                      icon: const Icon(Icons.percent),
                      label: const Text("Mod")
                  ),

                  ElevatedButton.icon(
                      onPressed: () {
                        _fieldOneTEController.clear();
                        _fieldTwoTEController.clear();
                        setState(() {});
                      },
                      icon: const Icon(Icons.delete),
                      label: const Text("Clear")
                  ),
                ],
              ),
              Text(
                "Result is : $result",
                style: const TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }

  ///Method writing & pure function
  double parseToDouble(String text) {
    return double.tryParse(text) ?? 0;
  }

  ///Addition
  double addition(firstNum, secondNum) {
    return firstNum + secondNum;
  }

  ///Substraction
  double substraction(firstNum, secondNum) {
    return firstNum - secondNum;
  }

  ///Multiplication
  double multiplication(firstNum, secondNum) {
    return firstNum * secondNum;
  }

  ///Division
  double division(firstNum, secondNum) {
    return firstNum / secondNum;
  }

  ///Modulus
  double modulus(firstNum, secondNum) {
    return firstNum % secondNum;
  }
}
