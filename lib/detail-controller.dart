import 'package:get/get.dart';

class DetailController extends GetxController {
  int quantity = 1;
  int price = 1;
  int calorie = 0;

  @override
  void onInit() {
    super.onInit();
  }

  void addQuantity() {
    quantity++;
    update();
  }

  void removeQuantity() {
    quantity--;
    update();
  }

  void updatePrice(pri, cal) {
    price = pri * quantity;
    calorie = cal * quantity;
    update();
  }
}
