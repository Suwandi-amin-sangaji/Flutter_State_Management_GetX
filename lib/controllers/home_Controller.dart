import 'package:get/get.dart';

class HomeController extends GetxController {
  //var data = 0.obs; //Ini reactive variable
  int data = 0; //ini simple variabel

  void tambahData() {
    data = data + 1;
    if (data == 3) {
      update();
    }
  }

  void refreshData() {
    update();
  }
}
