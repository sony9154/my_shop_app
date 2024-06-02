import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:get/get.dart';
import '../controllers/my_fav_controller.dart';
import '../models/movie.dart';

class MovieCard extends StatelessWidget {
  int? id;
  final String posterPath;
  String? title;
  double? voteAverage;

  MovieCard({
    Key? key,
    this.id,
    this.title,
    required this.posterPath,
    this.voteAverage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MyFavController controller =
        Get.put(MyFavController()); // 獲取 MyFavController 實例

    return Obx(() {
      // 使用 Obx 來監聽收藏狀態的變化
      var isFavorite =
          controller.favorites.any((movie) => movie.id == id); // 檢查該電影是否在收藏列表中
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 22, vertical: 10), // 設置容器的邊距
        width: MediaQuery.of(context).size.width, // 設置容器的寬度為螢幕寬度
        height: 180, // 設置容器高度
        decoration: BoxDecoration(
          color: Colors.black, // 設置背景顏色為黑色
          borderRadius: BorderRadius.circular(15), // 設置圓角
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.6), // 設置陰影顏色和透明度
              offset: const Offset(0.0, 10.0), // 設置陰影偏移
              blurRadius: 10.0, // 設置陰影模糊半徑
              spreadRadius: -6.0, // 設置陰影擴散半徑
            ),
          ],
          image: DecorationImage(
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.35), // 設置顏色濾鏡
              BlendMode.multiply,
            ),
            image: CachedNetworkImageProvider(
                posterPath), //NetworkImage(image), // 設置背景圖片
            fit: BoxFit.cover, // 設置圖片的適應模式
          ),
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 5.0), // 設置內邊距
              child: ElevatedButton.icon(
                onPressed: () {
                  Movie movie = Movie(
                    id: id ?? 0,
                    title: title ?? "title",
                    voteAverage: voteAverage ?? 0.0,
                    posterPath: posterPath,
                  ); // 創建電影實例
                  controller.toggleFavorite(movie); // 切換收藏狀態
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey.withOpacity(0.0), // 設置按鈕背景顏色透明
                ),
                icon: Icon(
                  isFavorite
                      ? Icons.favorite
                      : Icons.favorite_border, // 根據收藏狀態設置圖標
                  color: isFavorite ? Colors.red : Colors.white, // 根據收藏狀態設置圖標顏色
                ),
                label: Text(
                  'Like', // 設置按鈕標籤
                  style: TextStyle(color: Colors.white), // 設置標籤文字顏色
                ),
              ),
            ),
            Align(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.0), // 設置內邊距
                child: Text(
                  "Movie Id", // 顯示電影 ID
                  style: TextStyle(
                    fontSize: 19, // 設置文字大小
                  ),
                  overflow: TextOverflow.ellipsis, // 設置文字溢出處理
                  maxLines: 2, // 設置最大行數
                  textAlign: TextAlign.center, // 設置文字對齊方式
                ),
              ),
              alignment: Alignment.center, // 設置對齊方式
            ),
            Align(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween, // 設置主軸對齊方式
                children: [
                  Container(
                    padding: EdgeInsets.all(5), // 設置內邊距
                    margin: EdgeInsets.all(10), // 設置外邊距
                    width: MediaQuery.of(context).size.width * 0.5, //For Text:title
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.4), // 設置背景顏色和透明度
                      borderRadius: BorderRadius.circular(15), // 設置圓角
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.star, // 設置圖標
                          color: Colors.yellow, // 設置圖標顏色
                          size: 18, // 設置圖標大小
                        ),
                        SizedBox(width: 7), // 設置間距
                        Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 5.0),
                              child: Text(
                                title ??
                                    "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ",
                                style: TextStyle(color: Colors.white),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),
                            ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5), // 設置內邊距
                    margin: EdgeInsets.all(10), // 設置外邊距
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.4), // 設置背景顏色和透明度
                      borderRadius: BorderRadius.circular(15), // 設置圓角
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.how_to_vote, // 設置圖標
                          color: Colors.yellow, // 設置圖標顏色
                          size: 18, // 設置圖標大小
                        ),
                        SizedBox(width: 7), // 設置間距
                        Padding(
                          padding: const EdgeInsets.only(right: 2.0),
                          child: Text(
                            "9.9",
                            style: TextStyle(color: Colors.white),
                          ),
                        ), // 顯示電影評分
                      ],
                    ),
                  )
                ],
              ),
              alignment: Alignment.bottomLeft, // 設置對齊方式
            ),
          ],
        ),
      );
    });
  }
}
