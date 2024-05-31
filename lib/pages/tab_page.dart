import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_shop_app/pages/basic_widgets_page.dart';
import 'package:my_shop_app/pages/counter_page.dart';
import 'package:my_shop_app/pages/home_page.dart';
import 'package:my_shop_app/pages/layout_widgets_page.dart';
import 'package:my_shop_app/pages/scroll_page.dart';
import '../controllers/tab_controller.dart';
import '../pages/form_page.dart'; 
import '../pages/listview_page.dart';
import '../pages/gridview_page.dart';
import 'package:my_shop_app/pages/movielist_page.dart';

class TabPage extends StatelessWidget {
  final AppTabController tabController = Get.put(AppTabController()); // 創建並注入 TabController

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        // 使用 Obx 來監聽 tabIndex 的變化
        switch (tabController.tabIndex.value) {
          case 0:
            return MyHomePage();
          case 1:
            return CounterPage();
          case 2:
            return BasicWidgetsPage();
          case 3:
            return LayoutWidgetsPage();
          case 4:
            return FormPage();
          case 5:
            return ScrollPage();
          case 6:
            return ListViewPage();
          case 7:
            return GridViewPage();
          default:
            return MovieListPage();
        }
      }),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
            backgroundColor: Colors.blueGrey, // 設置底部導航欄背景顏色
            selectedItemColor: Colors.blue, // 設置選中項目的顏色
            unselectedItemColor: Colors.grey, // 設置未選中項目的顏色
            currentIndex: tabController.tabIndex.value, // 設置當前選中的標籤索引
            onTap: tabController.changeTabIndex, // 當標籤被點擊時，更新索引
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home), // 設置圖標
                label: 'Home', // 設置標籤文字
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.countertops), // 設置圖標
                label: 'Counter', // 設置標籤文字
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.widgets), // 設置圖標
                label: 'Widgets', // 設置標籤文字
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.login), // 設置圖標
                label: 'Layout', // 設置標籤文字
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.one_k), // 設置圖標
                label: 'Form', // 設置標籤文字
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.twelve_mp), // 設置圖標
                label: 'Scroll', // 設置標籤文字
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.list), // 設置圖標
                label: 'ListView', // 設置標籤文字
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.grid_on), // 設置圖標
                label: 'GridView', // 設置標籤文字
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.movie), // 設置圖標
                label: 'MovieList', // 設置標籤文字
              ),
            ],
          )),
    );
  }
}
