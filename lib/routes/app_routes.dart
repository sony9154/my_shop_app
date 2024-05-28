import 'package:flutter/material.dart'; // 導入 Flutter 的 Material 設計庫
import '../pages/home_page.dart'; // 導入首頁小部件
import '../pages/counter_page.dart'; // 導入計數器頁面小部件
import '../pages/basic_widgets_page.dart';
import '../pages/layout_widgets_page.dart';
import '../pages/form_page.dart'; // 導入表單頁面小部件
import '../pages/scroll_page.dart'; // 導入滾動頁面小部件
import '../pages/listview_page.dart'; // 導入 listview_page.dart
import '../pages/gridview_page.dart'; // 導入 gridview_page.dart

class AppRoutes {
  static Map<String, WidgetBuilder> get routes {
    return {
      '/': (context) => MyHomePage(),// 設置首頁路由對應的頁面
      '/counter': (context) => CounterPage(),// 設置計數器頁面的路由對應頁面
      '/basic_widgets': (context) => BasicWidgetsPage(),
      '/layout_widgets': (context) => LayoutWidgetsPage(),
      '/form': (context) => FormPage(),// 設置表單頁面的路由對應頁面
      '/scroll': (context) => ScrollPage(),// 設置滾動頁面的路由對應頁面
      '/listview': (context) => ListViewPage(), // 列表頁面路由
      '/gridview': (context) => GridViewPage(), // 網格頁面路由
    };
  }
}
