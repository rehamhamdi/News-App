import 'package:dio/dio.dart';
import 'package:news/utils/app_constants.dart';

//to fetch the data
class ApiServices {
  static Dio? dio;

  static intit() {
    dio = Dio(BaseOptions(
      baseUrl: AppConstants.baseUrl,
      receiveDataWhenStatusError: true,
    ));
  }

  static Future<Response> getData({
    required String url,
    required Map<String, dynamic> query,
  }) async {
    return await dio!.get(url, queryParameters: query);
  }
}
