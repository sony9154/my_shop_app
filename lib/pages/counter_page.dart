import 'package:flutter/material.dart'; // 導入 Flutter 的 Material 設計庫
import 'package:get/get.dart'; // 導入 GetX 包
import '../controllers/counter_controller.dart'; // 導入 CounterController

class CounterPage extends StatelessWidget {
  // 定義一個無狀態的 CounterPage 小部件
  final CounterController controller = Get.put(CounterController());
  // 創建並注入 CounterController

  @override
  Widget build(BuildContext context) {
    // 重寫 build 方法來建立小部件
    return Scaffold(
      // 返回一個 Scaffold 小部件
      appBar: AppBar(
        // 設置頂部應用程式欄
        title: Text('Counter Page'), // 應用程式欄的標題
      ),
      body: Center(
        // 設置頁面內容居中對齊
        child: Column(
          // 建立一個垂直方向的佈局
          mainAxisAlignment: MainAxisAlignment.center, // 將子部件在主軸上居中對齊
          children: <Widget>[
            // 定義 Column 的子部件列表
            Text(
              'You have pushed the button this many times:', // 顯示提示文字
            ),
            Obx(() => Text(
              // 使用 Obx 小部件來監聽 counter 變化
              '${controller.counter}', // 顯示目前 counter 的值
              style: Theme.of(context).textTheme.bodyMedium, // 使用目前主題的 bodyMedium 樣式
            )),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // 建立一個浮動操作按鈕
        onPressed: controller.increment, // 設定按鈕按下時呼叫的方法,
        tooltip: 'Increment', // 設定按鈕的提示文本
        child: Icon(Icons.add), // 設定按鈕的圖示為加號
      ),
    );
  }
}
