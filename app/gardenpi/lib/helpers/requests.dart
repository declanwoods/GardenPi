import 'package:dio/dio.dart';
import '../constants.dart';

Dio dio = new Dio();

Future<Response> get(String path) async {
    print(API_URL);
    var res = await dio.get("$API_URL$path");
    return res;
}