import 'package:get/get.dart';

class HomeController extends GetxController {
  var data = 0.obs;

  void increment() => data++;
  void decrement() => data--;
}
