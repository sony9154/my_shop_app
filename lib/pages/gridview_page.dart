import 'package:flutter/material.dart'; // 導入 Flutter 的 Material 設計庫

class GridViewPage extends StatelessWidget {
  // 定義一個無狀態的 GridViewPage 小部件

  final bool removeLeading; // 添加一個參數用於是否顯示返回按鈕

  GridViewPage({this.removeLeading = false}); // 構造函數,默認為 false

  @override
  Widget build(BuildContext context) {
    // 重寫 build 方法來構建小部件
    return SizedBox(
      height: 400, // 設置固定高度
      child: Scaffold(
        // 返回一個 Scaffold 小部件
        appBar: AppBar(
          // 設置頂部應用欄
          title: Text('GridView Page'), // 設置應用欄標題
          automaticallyImplyLeading: !removeLeading, // 根據參數決定是否顯示返回按鈕
        ),
        body: GridView.builder(
          // 使用 GridView.builder 來建立可滾動的網格
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, // 每行顯示三個網格項
            crossAxisSpacing: 10, // 網格項之間的橫向間距
            mainAxisSpacing: 10, // 網格項之間的縱向間距
          ),
          itemCount: 11, // 網格項的數量，包括 0~9 和一個空項目
          itemBuilder: (context, index) {
            if (index == 9) {
              // 這是放在最後一排中間位置的空項目
              return Container();
            } else if (index == 10) {
              // 這是數字 0 的位置
              return Container(
                alignment: Alignment.center, // 容器內容居中對齊
                color: Colors.teal, // 設置容器背景顏色
                child: Text('0', style: TextStyle(fontSize: 24)), // 容器內顯示文字
              );
            } else {
              // 這是數字 1 到 9 的位置
              return Container(
                alignment: Alignment.center, // 容器內容居中對齊
                color: Colors.teal[100 * ((index + 1) % 9)], // 設置容器背景顏色
                child: Text('${index + 1}',
                    style: TextStyle(fontSize: 24)), // 容器內顯示文字
              );
            }
          },
        ),
      ),
    );
  }
}
