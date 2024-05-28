import 'package:flutter/material.dart'; // 導入 Flutter 的 Material 設計庫

class CounterPage extends StatefulWidget {
  // 定義一個有狀態的 CounterPage 小部件
  @override
  _CounterPageState createState() => _CounterPageState(); // 建立並返回 CounterPage 小部件的狀態對象
}

class _CounterPageState extends State<CounterPage> {
  // 定義一個 _CounterPageState 類，用於維護 CounterPage 的狀態
  int _counter = 0; // 定義一個私有整數變數 _counter，初始值為 0

  void _incrementCounter() {
    // 定義一個方法，用來增加 _counter 的值
    setState(() {
      // 呼叫 setState 方法來更新界面
      _counter++; // 將 _counter 的值加 1
    });
  }

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
            Text(
              '$_counter', // 顯示目前 _counter 的值
              style: Theme.of(context).textTheme.bodyMedium, // 使用目前主題的 bodyMedium 樣式
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // 建立一個浮動操作按鈕
        onPressed: _incrementCounter, // 設定按鈕按下時呼叫的方法
        tooltip: 'Increment', // 設定按鈕的提示文本
        child: Icon(Icons.add), // 設定按鈕的圖示為加號
      ),
    );
  }
}
