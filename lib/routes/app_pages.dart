import 'package:get/get.dart';
import '../pages/tab_page.dart'; // 導入首頁小部件
import '../pages/home_page.dart'; // 導入首頁小部件
import '../pages/counter_page.dart'; // 導入計數器頁面小部件
import '../pages/basic_widgets_page.dart';
import '../pages/layout_widgets_page.dart';
import '../pages/form_page.dart'; // 導入表單頁面小部件
import '../pages/scroll_page.dart'; // 導入滾動頁面小部件
import '../pages/listview_page.dart'; // 導入 listview_page.dart
import '../pages/gridview_page.dart'; // 導入 gridview_page.dart

class AppPages {
  static final routes = [
    GetPage(name: '/', page: () => TabPage()),
    GetPage(name: '/home', page: () => MyHomePage()), // 設置首頁路由對應的頁面
    GetPage(name: '/counter', page: () => CounterPage()), // 設置計數器頁面的路由對應頁面
    GetPage(name: '/basic_widgets', page: () => BasicWidgetsPage()), // 設置基本小部件頁面的路由對應頁面
    GetPage(name: '/layout_widgets', page: () => LayoutWidgetsPage()), // 設置佈局小部件頁面的路由對應頁面
    GetPage(name: '/form', page: () => FormPage()), // 設置表單頁面的路由對應頁面
    GetPage(name: '/scroll', page: () => ScrollPage()), // 設置滾動頁面的路由對應頁面
    GetPage(name: '/listview', page: () => ListViewPage()), // 設置列表頁面的路由對應頁面
    GetPage(name: '/gridview', page: () => GridViewPage()), // 設置網格頁面的路由對應頁面
  ];
}
