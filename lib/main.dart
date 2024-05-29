import 'package:flutter/material.dart'; // 導入 Flutter 的 Material 設計庫
import 'package:get/get.dart'; // 導入 GetX 庫
import 'routes/app_pages.dart'; // 導入get路由AppPages

void main() {
  runApp(MyApp()); // 入口方法，運行 MyApp 小部件
}

class MyApp extends StatelessWidget {
  // 定義一個無狀態的 MyApp 小部件
  @override
  Widget build(BuildContext context) {
    // 重寫 build 方法來構建小部件
    return GetMaterialApp( // 使用 GetMaterialApp 代替 MaterialApp，提供 GetX 的路由和狀態管理
      title: 'My Shop App', // 設置應用程序的標題
      theme: ThemeData(
        primarySwatch: Colors.yellow, // 設置主色調為黃色
      ),
      initialRoute: '/', // 設置初始路由為首頁
      getPages: AppPages.routes, // 設置應用程序的路由表
    );
  }
}

/* 3rd
import 'package:flutter/material.dart'; // 導入 Flutter 的 Material 設計庫
import 'pages/home_page.dart'; // 導入首頁小部件

void main() {
  runApp(MyApp()); //入口方法，運行 MyApp 小部件
}

class MyApp extends StatelessWidget {
  // 定義一個無狀態的 MyApp 小部件
  @override
  Widget build(BuildContext context) {
    // 重寫 build 方法來構建小部件
    return MaterialApp(
      // 返回一個 MaterialApp 小部件
      title: 'My Practice App',
      theme: ThemeData(
        primarySwatch: Colors.yellow, // 設置主色調為黃色
      ),
      home: MyHomePage(), //設置主頁為 MyHomePage小部件
    );
  }
}
*/

/* 2nd
import 'package:flutter/material.dart'; // 導入 Flutter 的 Material 設計庫

void main() {
  runApp(MyApp()); //入口方法，運行 MyApp 小部件
}

class MyApp extends StatelessWidget {
  // 定义一个无状态的 MyApp 小部件
  @override
  Widget build(BuildContext context) {
    // 重寫 build 方法來構建小部件
    return MaterialApp(
      // 返回一個 MaterialApp 小部件
      title: 'My Shop App',
      theme: ThemeData(
        primarySwatch: Colors.yellow, // 设置主色调为黄色
      ),
      home: MyHomePage(), //設置主頁為 MyHomePage小部件
    );
  }
}

class CounterPage extends StatefulWidget {
  // 定義一個有狀態的 CounterPage 小工具
  @override
  _CounterPageState createState() =>
      _CounterPageState(); // 建立並傳回 CounterPage 小工具的狀態對象
}

class _CounterPageState extends State<CounterPage> {
  // 定義一個 _CounterPageState 類，用於維護 CounterPage 的狀態
  int _counter = 0; // 定義一個私有整數變數 _counter，初始值為 0

  void _incrementCounter() {
    // 定義一個方法，用來增加 _counter 的值
    setState(() {
      // 呼叫 setState 方法來更新介面
      _counter++; // 將 _counter 的值加 1
    });
  }

  @override
  Widget build(BuildContext context) {
    // 重寫 build 方法來建立小部件
    return Scaffold(
      // 傳回一個 Scaffold 小工具
      appBar: AppBar(
        // 設定頂部應用程式欄
        title: Text('Counter Page'), // 應用程式列的標題
      ),
      body: Center(
        // 設定頁面內容置中對齊
        child: Column(
          // 建立一個垂直方向的佈局
          mainAxisAlignment: MainAxisAlignment.center, // 將子部件在主軸上置中對齊
          children: <Widget>[
            // 定義 Column 的子部件列表
            Text(
              'You have pushed the button this many times:', // 顯示提示文字
            ),
            Text(
              '$_counter', // 顯示目前 _counter 的值
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium, // 使用目前主題的 bodyMedium 樣式
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

class MyHomePage extends StatelessWidget {
  // 定義一個無狀態的 MyHomePage 小工具
  @override
  Widget build(BuildContext context) {
    // 重寫 build 方法來建立小部件
    return Scaffold(
      //返回一個 Scaffold 小部件，這是 Material 設計的基本佈局結構
      appBar: AppBar(
        // 設定頂部應用程式欄
        title: Text('My Shop App'), // 應用程式列的標題
      ),
      body: Center(
        // 設定頁面內容置中對齊
        child: Column(
          // 建立一個垂直方向的佈局
          mainAxisAlignment: MainAxisAlignment.center, // 將子部件在主軸上置中對齊
          children: <Widget>[
            // 定義 Column 的子部件列表
            Text(
              'Welcome to My Shop App!',
              style: TextStyle(fontSize: 24), // 設置文本樣式，字體大小為24
            ),
            SizedBox(height: 20), // 建立一個固定高度的空白區域，高度為 20 像素
            Image.network(
              // Image 小部件用於顯示圖片，這裡從網絡加載圖片
              'https://flutter.dev/assets/homepage/carousel/slide_1-bg-4e2fcef7d8cd06a9084a519c9f2609bb8d65c4732b2bda29ac72c1bba29e5fba.jpg',
              width: 200, // 設置圖片寬度為200像素
              height: 100, // 設置圖片高度為100像素
            ),
            SizedBox(height: 20), // 建立一個固定高度的空白區域，高度為 20 像素
            Icon(
              // Icon 小部件用於顯示圖標
              Icons.thumb_up, // 設置圖標為豎起大拇指
              size: 50, // 設置圖標大小為50像素
              color: Colors.blue, // 設置圖標顏色為藍色
            ),
            SizedBox(height: 20), // 建立一個固定高度的空白區域，高度為 20 像素
            ElevatedButton(
              // 建立一個 RaisedButton 小工具
              onPressed: () {
                // 按鈕按下時執行的動作
                Navigator.push(
                  // 使用 Navigator.push 導覽到新的頁面
                  context, // 當前上下文
                  MaterialPageRoute(
                      builder: (context) =>
                          CounterPage()), // 指定導覽的目標頁面為 CounterPage
                );
              },
              child: Text('Go to Counter Page'), // 按鈕上的文字
            ),
          ],
        ),
      ),
    );
  }
}
*/
/* 1st
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 重写 build 方法来构建小部件
    // 重写 build 方法来构建小部件
    return Scaffold(
      //返回一个 Scaffold 小部件，这是 Material 设计的基本布局结构
      appBar: AppBar(
        // 设置顶部应用栏
        title: Text('My Shop App'),
      ),
      body: Padding(
        // 設定頁面內容的內邊距
        padding: EdgeInsets.all(16.0), // 内边距为 16 像素
        child: Column(
          // child: 指定 Center 小部件的子部件。Column( 創建一個垂直方向的佈局，用於在垂直方向排列其子部件。
          mainAxisAlignment: MainAxisAlignment
              .center, //mainAxisAlignment: 設置主軸（垂直方向）的對齊方式。.center 將子部件置於主軸的中央。
          children: <Widget>[
            //children: 定義 Column 中的子部件列表。
            Text(
              'Welcome to My Shop App!',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(
                height:
                    20), //SizedBox(height: 20), 創建一個固定高度的空白區域（20 像素），用於在子部件之間添加間距。
            Card(
              elevation: 4, // 设置卡片的阴影高度
              child: Padding(
                // 给卡片内容添加内边距
                padding: EdgeInsets.all(16.0), // 内边距为 16 像素
                child: Column(
                  // 在卡片内创建一个垂直布局
                  children: <Widget>[
                    // 定义 Column 的子部件列表
                    Text(
                      'Feature Product',
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(height: 10), // 创建一个固定高度的空白区域，高度为 10 像素
                    ElevatedButton(
                      //創建一個ElevatedButton小部件
                      onPressed: () {}, //按钮按下时执行的操作（目前为空）
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue, //按钮的背景颜色为蓝色
                        foregroundColor: Colors.white, // 按钮的文字颜色为白色
                      ),
                      child: Text('Buy Now'), // 按钮上的文字
                    ),
                  ],
                ),
              ),
            ),
            Row(
              //Row( 創建一個水平方向的佈局，用於在水平方向排列其子部件。
              mainAxisAlignment: MainAxisAlignment
                  .center, //mainAxisAlignment: 設置主軸（水平方向）的對齊方式。
              children: [
                //定義 Row 中的子部件列表。
                Container(
                  //Container( 創建一個容器部件，可以用來包裹和裝飾其他部件。
                  width: 100, //width: 100, 設置容器的寬度為 100 像素。
                  height: 100,
                  color: Colors.red,
                  child: Center(
                      child: Text(
                          'Item 1')), //child: 指定容器內的子部件。Center(child: Text('Item 1')) 創建一個居中的文本部件，文本內容為“Item 1”。
                ),
                SizedBox(
                    width:
                        10), //SizedBox(width: 10), 創建一個固定寬度的空白區域（10 像素），用於在子部件之間添加間距。
                Container(
                  //Container( 創建另一個容器部件。
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                  child: Center(
                      child: Text(
                          'Item 2')), //child: Center(child: Text('Item 2')) 創建一個居中的文本部件，文本內容為“Item 2”。
                ), //關閉上一個容器部件。
              ],
            ),
          ],
        ),
      ),
    );
  }
}
*/