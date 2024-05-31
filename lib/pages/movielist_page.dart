import 'package:flutter/material.dart'; // 導入 Flutter 的材料設計包
import 'package:get/get.dart'; // 導入 GetX 包
import '../controllers/movie_list_controller.dart'; // 導入自定義的 MovieListController

class MovieListPage extends StatelessWidget { // 繼承 StatelessWidget
  final MovieListController controller = Get.put(MovieListController()); // 創建並注入 MovieListController
  final ScrollController _scrollController = ScrollController(); // 創建 ScrollController 實例

  MovieListPage() { // 構造方法
    _scrollController.addListener(() { // 添加滾動監聽器
      if (_scrollController.position.atEdge) { // 如果滾動到了邊緣
        if (_scrollController.position.pixels != 0) { // 且不是滾動到頂部
          controller.fetchMoreMovies(); // 加載更多電影數據
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold( // 返回 Scaffold 小部件
      appBar: AppBar( // 頂部應用欄
        title: Text('Now Playing Movies'), // 應用欄標題
      ),
      body: Obx(() { // 使用 Obx 監聽可觀察變量的變化
        if (controller.isLoading.value) { // 如果正在加載
          return Center(child: CircularProgressIndicator()); // 顯示圓形進度指示器
        } else if (controller.movies.isEmpty) { // 如果沒有電影數據
          return Center(child: Text('No movies found.')); // 顯示沒有找到電影的消息
        } else { // 否則
          return ListView.builder( // 構建滾動列表
            controller: _scrollController, // 設置滾動控制器
            itemCount: controller.movies.length + 1, // 列表項數量 +1，用於顯示加載更多指示器
            itemBuilder: (context, index) { // 列表項構建器
              if (index == controller.movies.length) { // 如果是最後一個項
                return Center( // 返回加載更多指示器
                  child: Obx(() { // 監聽加載更多狀態
                    return controller.isLoadingMore.value
                        ? CircularProgressIndicator() // 如果正在加載更多，顯示圓形進度指示器
                        : SizedBox.shrink(); // 否則顯示空的 SizedBox
                  }),
                );
              } else { // 否則
                final movie = controller.movies[index]; // 獲取當前電影數據
                return ListTile( // 返回列表項
                  leading: Image.network('https://image.tmdb.org/t/p/w200${movie['poster_path']}'), // 顯示電影海報
                  title: Text(movie['title']), // 顯示電影標題
                  subtitle: Text(movie['overview']), // 顯示電影簡介
                );
              }
            },
          );
        }
      }),
    );
  }
}
