import 'package:flutter/material.dart'; // 導入 Flutter 的 Material 設計庫
import '../pages/listview_page.dart'; // 導入 GridViewPage 小部件
import '../pages/gridview_page.dart'; // 導入 GridViewPage 小部件


class ScrollPage extends StatelessWidget {
  // 定義一個無狀態的 ScrollPage 小部件
  @override
  Widget build(BuildContext context) {
    // 重寫 build 方法來構建小部件
    return Scaffold(
      // 返回一個 Scaffold 小部件
      appBar: AppBar(
        // 設置頂部應用欄
        title: Text('Scroll Page'), // 設置應用欄標題
      ),
      body: SingleChildScrollView(
        // 使用 SingleChildScrollView 小部件來設置可滾動的單子元件
        child: Column(
          // 建立一個垂直方向的佈局
          children: <Widget>[
            // 定義 Column 的子部件列表
            Container(
              //不設置 Container 的固定高度,而讓它自動適應 GridViewPage 的大小。
              color: Colors.red, // 設置容器背景顏色為紅色
              child: GridViewPage(removeLeading: true), // 放入 GridViewPage 小部件並且 不顯示返回按鈕
              // child: Center(child: Text('Item 1')), // 容器內顯示文字，並置中對齊
            ),
            Container(
              height: 200, // 設置容器高度為200像素
              color: Colors.blue, // 設置容器背景顏色為藍色
              child: ListViewPage(removeLeading: true,), // 容器內顯示文字，並置中對齊
            ),
            Container(
              height: 200, // 設置容器高度為200像素
              color: Colors.green, // 設置容器背景顏色為綠色
              child: Center(child: Text('Item 3')), // 容器內顯示文字，並置中對齊
            ),
            Container(
              height: 200, // 設置容器高度為200像素
              color: Colors.yellow, // 設置容器背景顏色為黃色
              child: Center(child: Text('Item 4')), // 容器內顯示文字，並置中對齊
            ),
            Container(
              height: 200, // 設置容器高度為200像素
              color: Colors.orange, // 設置容器背景顏色為橙色
              child: Center(child: Text('Item 5')), // 容器內顯示文字，並置中對齊
            ),
          ],
        ),
      ),
    );
  }
}
