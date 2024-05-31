import 'package:get/get.dart'; // 導入 GetX 包
import '../network/api_service.dart'; // 導入自定義的 API 服務

class MovieListController extends GetxController { // 繼承 GetxController
  var movies = [].obs; // 可觀察的電影列表，初始為空
  var isLoading = true.obs; // 可觀察的加載狀態，初始為 true
  var isLoadingMore = false.obs; // 可觀察的加載更多狀態，初始為 false
  var currentPage = 1.obs; // 可觀察的當前頁碼，初始為 1

  @override
  void onInit() { // 初始化方法
    super.onInit(); // 調用父類的 onInit 方法
    fetchMovies(); // 調用 fetchMovies 方法
  }

  void fetchMovies() async { // 獲取電影數據的方法
    try {
      isLoading(true); // 設置加載狀態為 true
      final data = await ApiService().fetchNowPlayingMovies(currentPage.value); // 調用 API 獲取當前頁面的電影數據
      movies.addAll(data['results']); // 將獲取到的電影數據添加到 movies 列表
    } catch (e) {
      Get.snackbar('Error', e.toString()); // 捕獲異常並顯示錯誤消息
    } finally {
      isLoading(false); // 無論成功還是失敗，都設置加載狀態為 false
    }
  }

  void fetchMoreMovies() async { // 加載更多電影數據的方法
    try {
      isLoadingMore(true); // 設置加載更多狀態為 true
      currentPage.value++; // 頁碼加 1
      final data = await ApiService().fetchNowPlayingMovies(currentPage.value); // 調用 API 獲取下一頁面的電影數據
      movies.addAll(data['results']); // 將獲取到的電影數據添加到 movies 列表
    } catch (e) {
      Get.snackbar('Error', e.toString()); // 捕獲異常並顯示錯誤消息
    } finally {
      isLoadingMore(false); // 無論成功還是失敗，都設置加載更多狀態為 false
    }
  }
}
