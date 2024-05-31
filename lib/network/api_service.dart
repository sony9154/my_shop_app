import 'package:dio/dio.dart';
import 'request_interceptors.dart';

class ApiService {
  final Dio _dio = Dio();

  ApiService() {
    _dio.options.baseUrl = 'https://api.themoviedb.org/3';
    _dio.options.connectTimeout = const Duration(seconds: 10); // 10秒超時
    _dio.interceptors.add(HeaderInterceptor()); // 添加 Header 攔截器
  }

  Future<Map<String, dynamic>> fetchNowPlayingMovies(int page) async {
    _dio.interceptors.add(QueryParameterInterceptor(page)); // 添加 Query 攔截器，傳入 page 參數
    try {
      final response = await _dio.get('/movie/now_playing');

      if (response.statusCode == 200) {
        return response.data;
      } else {
        throw Exception('Error: ${response.statusCode}');
      }
    } on DioException catch (e) {
      if (e.response != null) {
        throw Exception('Error: ${e.response?.statusCode} ${e.response?.data}');
      } else {
        throw Exception('Error: ${e.message}');
      }
    } finally {
      _dio.interceptors.removeWhere((interceptor) => interceptor is QueryParameterInterceptor);
    }
  }
}
