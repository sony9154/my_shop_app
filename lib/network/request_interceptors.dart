import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

//處理 headers
class HeaderInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers.addAll(_getHeaders());
    return super.onRequest(options, handler);
  }

  Map<String, String> _getHeaders() {
    final Map<String, String> headers = <String, String>{
      "Content-Type": "application/json",
      "Accept": "application/json",
    };
    debugPrint("Headers - ${headers.keys} : ${headers.values}");
    return headers;
  }
}

//處理 query 
class QueryParameterInterceptor extends Interceptor {
  final int page;

  QueryParameterInterceptor(this.page);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    options.queryParameters.addAll(await _getQueries(page));
    return super.onRequest(options, handler);
  }

  Future<Map<String, dynamic>> _getQueries(int page) async {
    final String apiKey = dotenv.env['API_KEY'] ?? 'default_api_key';

    final Map<String, dynamic> queries = <String, dynamic>{
      "api_key": apiKey,
      "language": "zh-TW",
      "page": page,
    };
    debugPrint("Queries - ${queries.keys} : ${queries.values}");
    return queries;
  }
}
