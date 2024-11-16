import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt currentIndex = 0.obs;

  void updateIndex({required int value}) {
    if (value != 2) {
      currentIndex.value = value;
    }
  }
}
