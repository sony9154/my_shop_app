import 'package:flutter/material.dart'; // 導入 Flutter 的 Material 設計庫

class ListViewPage extends StatelessWidget {
  // 定義一個無狀態的 ListViewPage 小部件

  final bool removeLeading; // 添加一個參數用於是否顯示返回按鈕

  ListViewPage({this.removeLeading = false}); // 構造函數,默認為 false

  @override
  Widget build(BuildContext context) {
    // 重寫 build 方法來構建小部件
    return Scaffold(
      // 返回一個 Scaffold 小部件
      appBar: AppBar(
        // 設置頂部應用欄
        title: Text('ListView Page'), // 設置應用欄標題
        automaticallyImplyLeading: !removeLeading,
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
