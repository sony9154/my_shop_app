import 'package:flutter/material.dart'; // 導入 Flutter 的 Material 設計庫
import 'package:get/get.dart'; // 導入 GetX 包

class BasicWidgetsPage extends StatelessWidget {
  // 定義一個無狀態的 BasicWidgetsPage 小部件
  @override
  Widget build(BuildContext context) {
    // 重寫 build 方法來構建小部件
    return Scaffold(
      // 返回一個 Scaffold 小部件，這是 Material 設計的基本佈局結構
      appBar: AppBar(
        // 設置頂部應用程式欄
        title: Text('Basic Widgets Page'), // 應用程式欄的標題
      ),
      body: Center(
        // 設置頁面內容居中對齊
        child: Column(
          // 建立一個垂直方向的佈局
          mainAxisAlignment: MainAxisAlignment.center, // 子部件在主軸上居中對齊
          children: <Widget>[
            // 定義 Column 的子部件列表
            Text(
              'This is a Text widget', // 顯示文字
              style: TextStyle(fontSize: 24), // 設置文字樣式
            ),
            SizedBox(height: 20), // 設置固定高度的空白區域，高度為 20 像素
            Image.network(
              // Image 小部件用於顯示圖片，這裡從網絡加載圖片
              'https://m.media-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_QL75_UX380_CR0,0,380,562_.jpg',
              width: 200, // 設置圖片寬度為 200 像素
              height: 100, // 設置圖片高度為 100 像素
            ),
            SizedBox(height: 20), // 設置固定高度的空白區域，高度為 20 像素
            Icon(
              // Icon 小部件用於顯示圖標
              Icons.thumb_up, // 設置圖標為豎起大拇指
              size: 50, // 設置圖標大小為 50 像素
              color: Colors.blue, // 設置圖標顏色為藍色
            ),
            SizedBox(height: 20), // 設置固定高度的空白區域，高度為 20 像素
            ElevatedButton(
              // 建立一個 ElevatedButton 小部件
              onPressed: () {
                // 按鈕按下時執行的動作
                Get.snackbar(
                  'Button Clicked', // 設置 Snackbar 的標題
                  'You clicked the button!', // 設置 Snackbar 的內容
                  snackPosition: SnackPosition.BOTTOM, // 設置 Snackbar 顯示的位置
                );
              },
              child: Text('Click Me'), // 按鈕上的文字
            ),
          ],
        ),
      ),
    );
  }
}
