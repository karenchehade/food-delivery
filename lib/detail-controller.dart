import 'package:get/get.dart';

class DetailController extends GetxController {
  int quantity = 0;
  int price = 1;

  @override
  void onInit() {
    addQuantity();
    removeQuantity();
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

  void updatePrice() {
    price = price * quantity;
    update();
  }
}
