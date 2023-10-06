import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const WaterTracker());
}

class WaterTracker extends StatelessWidget {
  const WaterTracker({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MainScreen(),
      debugShowCheckedModeBanner: true,
      title: "Water Consume Tracker",
      theme: ThemeData(primarySwatch: Colors.cyan),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final TextEditingController _amountOfGlassTEController =
      TextEditingController(text: "0");
  List<WaterTrack> waterConsumeList = [];
  double totalAmount = 0.0;

  removeItem(index) {
    waterConsumeList.removeAt(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Water Consume Tracker"),
        centerTitle: true,
        leading: const Icon(Icons.water_drop_outlined),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Total Consume",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.cyan),
                ),
                Text(
                  "$totalAmount",
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 100,
                      height: 70,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                          controller: _amountOfGlassTEController,
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 100,
                      height: 70,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          onPressed: () {
                            double amount = double.tryParse(
                                    _amountOfGlassTEController.text.trim()) ??
                                1;
                            totalAmount += amount;
                            WaterTrack watertrack =
                                WaterTrack(DateTime.now(), amount);
                            waterConsumeList.add(watertrack);
                            setState(() {});
                            _amountOfGlassTEController.text = "0";
                          },
                          child: const Text("Add"),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: waterConsumeList.length,
                //reverse: true,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 5,
                    child: ListTile(
                      onLongPress: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: const Text("Delete!"),
                                content: const Text("Do You Want To Delete?"),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text("Cancel"),
                                  ),
                                  TextButton(
                                      onPressed: () {
                                        totalAmount = totalAmount -
                                            waterConsumeList[index].noOfglass;
                                        setState(() {});
                                        removeItem(index);
                                      },
                                      child: const Text("Ok")),
                                ],
                              );
                            });
                      },
                      leading: CircleAvatar(
                        child: Text("${index + 1}"),
                      ),
                      title: Text(DateFormat("HH:mm:ss a || dd-MM-yyyy")
                          .format(waterConsumeList[index].time)),
                      trailing: Text(
                        "${waterConsumeList[index].noOfglass}",
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}

class WaterTrack {
  final DateTime time;
  final double noOfglass;

  WaterTrack(this.time, this.noOfglass);
}
