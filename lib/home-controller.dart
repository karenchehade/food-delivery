import 'package:get/get.dart';

class HomeController extends GetxController {
  int clickedIndex = -1;
  int index = -1;

  @override
  void onInit() {
    changeBgColor(index);
    super.onInit();
  }

  void changeBgColor(int index) {
    clickedIndex = index;
    update();
  }
}
