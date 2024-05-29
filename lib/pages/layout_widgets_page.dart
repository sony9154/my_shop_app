import 'package:flutter/material.dart'; // 導入 Flutter 的 Material 設計庫
import 'package:get/get.dart';

class LayoutWidgetsPage extends StatelessWidget {
  // 定義一個無狀態的 LayoutWidgetsPage 小部件
  @override
  Widget build(BuildContext context) {
    // 重寫 build 方法來構建小部件
    return Scaffold(
      // 返回一個 Scaffold 小部件，這是 Material 設計的基本佈局結構
      appBar: AppBar(
        // 設置頂部應用程式欄
        title: Text('Layout Widgets Page'), // 應用程式欄的標題
      ),
      body: Padding(
        // 設置頁面內容的內邊距
        padding: EdgeInsets.all(16.0), // 設置內邊距為 16 像素
        child: Column(
          // 建立一個垂直方向的佈局，用於在垂直方向排列子部件
          mainAxisAlignment: MainAxisAlignment.center, // 設置主軸（垂直方向）的對齊方式為居中
          children: <Widget>[
            // 定義 Column 的子部件列表
            Text(
              'This is a Column layout', // 顯示文字
              style: TextStyle(fontSize: 24), // 設置文字樣式
            ),
            SizedBox(height: 20), // 設置固定高度的空白區域，高度為 20 像素
            Row(
              // 建立一個水平方向的佈局，用於在水平方向排列子部件
              mainAxisAlignment: MainAxisAlignment.center, // 設置主軸（水平方向）的對齊方式為居中
              children: <Widget>[
                // 定義 Row 的子部件列表
                GestureDetector(
                  // 使用 GestureDector 使容器可點擊
                  onTap: () {
                    Get.snackbar('Item 1', 'You clicked on Item 1', snackPosition: SnackPosition.BOTTOM);
                  },
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.red,
                    child: Center(child: Text('Item 1'),) // 顯示文字並居中對齊
                  ),
                ),
                SizedBox(width: 10), // 設置固定寬度的空白區域，寬度為 10 像素
                GestureDetector(
                  // 使用 GestureDetector 使容器可點擊
                  onTap: () {
                    Get.snackbar(
                      'Item 2', 
                      'You clicked on Item 2', 
                      snackPosition: SnackPosition.TOP,
                    );
                  },
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.blue,
                    child: Center(child: Text('Item 2')),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
