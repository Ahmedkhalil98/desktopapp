import 'package:get/state_manager.dart';

class MyHomePageController extends GetxController {
  RxInt indexOfheader = 0.obs;

  void clickTab(int newIndex) {
    indexOfheader.value = newIndex;
    update();
  }
}
