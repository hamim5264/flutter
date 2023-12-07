import 'package:get/get.dart';

class CounterStateController extends GetxController {
  var count = 0.obs;

  increment() {
    count = count + 1;
  }
}
