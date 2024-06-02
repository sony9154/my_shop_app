import 'package:get/get.dart';
import '../models/movie.dart';

class MyFavController extends GetxController { // 創建 MyFavController 繼承自 GetxController
  var favorites = <Movie>[].obs; // 使用 RxList 來管理收藏的電影列表

  void toggleFavorite(Movie movie) { // 定義切換收藏狀態的方法
    if (favorites.contains(movie)) { // 如果電影已經在收藏列表中
      favorites.remove(movie); // 從收藏列表中移除電影
      movie.isFavorite = false; // 設置電影的 isFavorite 為 false
    } else {
      favorites.add(movie); // 添加電影到收藏列表中
      movie.isFavorite = true; // 設置電影的 isFavorite 為 true
    }
  }
}
