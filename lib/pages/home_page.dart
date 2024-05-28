import 'package:flutter/material.dart'; // 導入 Flutter 的 Material 設計庫
import 'basic_widgets_page.dart'; // 導入基礎組件頁面小部件
import 'layout_widgets_page.dart'; // 導入佈局組件頁面小部件

class MyHomePage extends StatelessWidget {
  // 定義一個無狀態的 MyHomePage 小部件
  @override
  Widget build(BuildContext context) {
    // 重寫 build 方法來構建小部件
    return Scaffold(
      // 返回一個 Scaffold 小部件，這是 Material 設計的基本佈局結構
      appBar: AppBar(
        // 設置頂部應用欄
        title: Text('My Shop App'), // 設置應用欄標題
      ),
      body: Center(
        // 設置頁面內容置中對齊
        child: Column(
          // 建立一個垂直方向的佈局
          mainAxisAlignment: MainAxisAlignment.center, // 將子部件在主軸上置中對齊
          children: <Widget>[
            // 定義 Column 的子部件列表
            Text(
              'Welcome to My Shop App!', // 顯示歡迎文字
              style: TextStyle(fontSize: 24), // 設置文本樣式，字體大小為24
            ),
            SizedBox(height: 20), // 建立一個固定高度的空白區域，高度為20像素
            Row(
              // 建立一個水平方向的佈局，用於在水平方向排列子部件
              mainAxisAlignment: MainAxisAlignment.center, // 設置主軸（水平方向）的對齊方式為居中
              children: <Widget>[
                // 定義 Row 的子部件列表
                Container(
                  // 建立一個容器小部件
                  width: 100, // 設置容器寬度為 100 像素
                  height: 100, // 設置容器高度為 100 像素
                  color: Colors.red, // 設置容器背景色為紅色
                  child: Center(
                    child: Image.network('https://m.media-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_QL75_UX380_CR0,0,380,562_.jpg'), // 顯示文字並居中對齊
                  ),
                ),
                SizedBox(width: 10), // 設置固定寬度的空白區域，寬度為 10 像素
                Container(
                  // 建立另一個容器小部件
                  width: 100, // 設置容器寬度為 100 像素
                  height: 100, // 設置容器高度為 100 像素
                  color: Colors.blue, // 設置容器背景色為藍色
                  child: Image.network(
                    // Image 小部件用於顯示圖片，這裡從網絡加載圖片
                    'https://www.zoo.gov.tw/iTAP/04_Plant/Myrtaceae/spp/spp_1.jpg',
                  ),
                ),
              ],
            ),
            SizedBox(height: 20), // 建立一個固定高度的空白區域，高度為20像素
            Icon(
              // Icon 小部件用於顯示圖標
              Icons.thumb_up, // 設置圖標為豎起大拇指
              size: 50, // 設置圖標大小為50像素
              color: Colors.blue, // 設置圖標顏色為藍色
            ),
            SizedBox(height: 20), // 建立一個固定高度的空白區域，高度為20像素
            ElevatedButton(
              // 建立一個 ElevatedButton 小部件
              onPressed: () {
                // 按鈕按下時執行的動作
                Navigator.pushNamed(context, '/counter'); // 使用命名路由導航到計數器頁面
              },
              child: Text('Go to Counter Page'), // 按鈕上的文字
            ),
            ElevatedButton(
              // 建立一個 RaisedButton 小部件
              onPressed: () {
                // 按鈕按下時執行的動作
                Navigator.push(
                  // 使用 Navigator.push 導覽到新的頁面
                  context, // 當前上下文
                  MaterialPageRoute(
                    builder: (context) => BasicWidgetsPage(), // 指定導覽的目標頁面為 BasicWidgetsPage
                  ),
                );
              },
              child: Text('Go to Basic Widgets Page'), // 按鈕上的文字
            ),
            ElevatedButton(
              // 建立一個 RaisedButton 小部件
              onPressed: () {
                // 按鈕按下時執行的動作
                Navigator.push(
                  // 使用 Navigator.push 導覽到新的頁面
                  context, // 當前上下文
                  MaterialPageRoute(
                    builder: (context) => LayoutWidgetsPage(), // 指定導覽的目標頁面為 LayoutWidgetsPage
                  ),
                );
              },
              child: Text('Go to Layout Widgets Page'), // 按鈕上的文字
            ),
            ElevatedButton(
              // 建立一個 ElevatedButton 小部件
              onPressed: () {
                // 按鈕按下時執行的動作
                Navigator.pushNamed(context, '/form'); // 使用命名路由導航到表單頁面
              },
              child: Text('Go to Form Page'), // 按鈕上的文字
            ),
            ElevatedButton(
              // 建立一個 ElevatedButton 小部件
              onPressed: () {
                // 按鈕按下時執行的動作
                Navigator.pushNamed(context, '/scroll'); // 使用命名路由導航到滾動頁面
              },
              child: Text('Go to Scroll Page'), // 按鈕上的文字
            ),
            ElevatedButton(
              // 建立一個 ElevatedButton 小部件
              onPressed: () {
                // 按鈕按下時執行的動作
                Navigator.pushNamed(context, '/listview'); // 導航到列表頁面
              },
              child: Text('Go to ListView Page'), // 按鈕上的文字
            ),
            ElevatedButton(
              // 建立一個 ElevatedButton 小部件
              onPressed: () {
                // 按鈕按下時執行的動作
                Navigator.pushNamed(context, '/gridview'); // 導航到網格頁面
              },
              child: Text('Go to GridView Page'), // 按鈕上的文字
            ),
          ],
        ),
      ),
    );
  }
}

/*
import 'package:flutter/material.dart'; // 導入 Flutter 的 Material 設計庫
import 'counter_page.dart'; // 導入計數頁面小部件
import 'basic_widgets_page.dart'; // 導入基礎組件頁面小部件
import 'layout_widgets_page.dart'; // 導入佈局組件頁面小部件

class MyHomePage extends StatelessWidget {
  // 定義一個無狀態的 MyHomePage 小部件
  @override
  Widget build(BuildContext context) {
    // 重寫 build 方法來構建小部件
    return Scaffold(
      // 返回一個 Scaffold 小部件，這是 Material 設計的基本佈局結構
      appBar: AppBar(
        // 設置頂部應用程式欄
        title: Text('My Sample App'), // 應用程式列的標題
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
              'https://m.media-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_QL75_UX380_CR0,0,380,562_.jpg',
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
              // 建立一個 RaisedButton 小部件
              onPressed: () {
                // 按鈕按下時執行的動作
                Navigator.push(
                  // 使用 Navigator.push 導覽到新的頁面
                  context, // 當前上下文
                  MaterialPageRoute(
                    builder: (context) => CounterPage(), // 指定導覽的目標頁面為 CounterPage
                  ),
                );
              },
              child: Text('Go to Counter Page'), // 按鈕上的文字
            ),
            ElevatedButton(
              // 建立一個 RaisedButton 小部件
              onPressed: () {
                // 按鈕按下時執行的動作
                Navigator.push(
                  // 使用 Navigator.push 導覽到新的頁面
                  context, // 當前上下文
                  MaterialPageRoute(
                    builder: (context) => BasicWidgetsPage(), // 指定導覽的目標頁面為 BasicWidgetsPage
                  ),
                );
              },
              child: Text('Go to Basic Widgets Page'), // 按鈕上的文字
            ),
            ElevatedButton(
              // 建立一個 RaisedButton 小部件
              onPressed: () {
                // 按鈕按下時執行的動作
                Navigator.push(
                  // 使用 Navigator.push 導覽到新的頁面
                  context, // 當前上下文
                  MaterialPageRoute(
                    builder: (context) => LayoutWidgetsPage(), // 指定導覽的目標頁面為 LayoutWidgetsPage
                  ),
                );
              },
              child: Text('Go to Layout Widgets Page'), // 按鈕上的文字
            ),
          ],
        ),
      ),
    );
  }
}
*/