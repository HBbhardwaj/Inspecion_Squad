import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_disposable.dart';

import '../helper/data_helper.dart';
import 'api_url.dart';
import 'method.dart';

///---- run command using json serialization---///
///----  flutter pub run build_runner build --delete-conflicting-outputs ----///
///---- flutter pub run build_runner build ----///

class RestClient extends GetxService {
  late Dio _dio;

  String aToken = '';

  //this is for header
  static header() => {
        'Content-Type': 'application/json',
        "Access-Control-Allow-Credentials":
            true, // Required for cookies, authorization headers with HTTPS
        "Access-Control-Allow-Headers":
            "Origin,Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token,locale",
        "Access-Control-Allow-Methods":
            "POST, OPTIONS, GET, PUT, DELETE, PATCH "
      };

  Future<RestClient> init() async {
    _dio = Dio(BaseOptions(baseUrl: ApiUrl.baseUrl /*,headers: header(),*/));
    initInterceptors();
    return this;
  }

  void initInterceptors() {
    _dio.interceptors.add(InterceptorsWrapper(onRequest: (options, handler) {
      debugPrint("header ===> ${options.headers.toString()}");
      _dio.interceptors.requestLock.unlock();
      return handler.next(options);
    }, onResponse: (response, handler) {
      debugPrint('RESPONSE[${response.statusCode}] => DATA: ${response.data}');
      return handler.next(response);
    }, onError: (err, handler) {
      debugPrint(
          'ERROR[${err.response?.statusCode},, ${err.response?.data['non_field_errors']}]');
      return handler.next(err);
    }));
  }

  Future<dynamic> request(
      String url,
      Method method,
      Map<String, dynamic> params,
      Map<String, dynamic> queryParams,
      FormData formData) async {
    Response response;

    init();

    String baseUrl = "";
    if (url.contains(ApiUrl.baseUrl)) {
      baseUrl = url;
    } else {
      baseUrl = "${ApiUrl.baseUrl}$url";
    }

    debugPrint("base url ===> $baseUrl,,, $params,,,, $queryParams");
    try {
      if (method == Method.POST) {
        if (queryParams.isNotEmpty) {
          response = await _dio.post(
            baseUrl,
            data: queryParams,
            queryParameters: params,
          );
        } else if (formData.fields.isNotEmpty) {
          response = await _dio.post(baseUrl, data: formData);
        } else {
          response = await _dio.post(baseUrl, data: params);
        }
      } else if (method == Method.DELETE) {
        response = await _dio.delete(url);
      } else if (method == Method.PATCH) {
        response = await _dio.patch(url);
      } else {
        response = await _dio.get(
          url,
          queryParameters: params,
        );
      }

      if (response.statusCode == 200) {
        return response;
      } else if (response.statusCode == 401) {
        throw Exception("Unauthorized");
      } else if (response.statusCode == 500) {
        throw Exception("Server Error");
      } else {
        throw Exception("Something Went Wrong");
      }
    } on SocketException catch (e) {
      throw Exception("No Internet Connection ${e.message}");
    } on FormatException {
      throw Exception("Bad Response Format!");
    } on DioError catch (e) {
      DataHelper.isLoading.value = false;
      DataHelper.printLog(
          "badRequest", "${e.response},,, ${e.type},,, ${e.error}");

      return e.response;
    } catch (e) {
      throw Exception("Something Went Wrong $e");
    }
  }
}
