import 'package:flutter/material.dart'; // 導入 Flutter 的 Material 設計庫
import 'package:get/get.dart'; // 導入 GetX 庫

class ListViewController extends GetxController {
  // 定義一個 ListViewController 繼承自 GetxController
  var removeLeading = false.obs; // 使用 Rx 變量來管理是否顯示返回按鈕
}

class ListViewPage extends StatelessWidget {
  // 定義一個無狀態的 ListViewPage 小部件
  final ListViewController controller =
      Get.put(ListViewController()); // 使用 Get.put() 創建並注入控制器
  final bool removeLeading;
  ListViewPage({this.removeLeading = false});

  @override
  Widget build(BuildContext context) {
    // 重寫 build 方法來構建小部件
    return Scaffold(
      // 返回一個 Scaffold 小部件
      appBar: AppBar(
        // 設置頂部應用欄
        title: Text('ListView Page'), // 設置應用欄標題
        automaticallyImplyLeading:
            !controller.removeLeading.value && !removeLeading, // // 同時考慮控制器和參數
      ),
      body: ListView.builder(
        // 使用 ListView.builder 來建立可滾動的列表
        itemCount: 20, // 列表項的數量
        itemBuilder: (context, index) {
          // 列表項的構建器
          return ListTile(
            // 返回一個 ListTile 小部件
            leading: Icon(Icons.list), // 列表項前顯示一個圖標
            title: Text('Item $index'), // 列表項的標題
          );
        },
      ),
    );
  }
}
