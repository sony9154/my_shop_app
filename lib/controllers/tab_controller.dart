import 'package:get/get.dart';

class AppTabController extends GetxController {
  var tabIndex = 0.obs; // 建立一個觀察變數，用於監控選中的標籤索引

  void changeTabIndex(int index) {
    tabIndex.value = index; // 更新選中的標籤索引
  }
}
