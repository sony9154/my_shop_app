import 'package:get/get.dart'; // 導入 GetX 包

class CounterController extends GetxController {
  // 定義一個 CounterController 類，繼承自 GetxController
  var counter = 0.obs; // 定義一個可觀察的變數 counter，初始值為 0

  void increment() {
    // 定義一個方法，用來增加 counter 的值
    counter++; // 將 counter 的值加 1
  }
}