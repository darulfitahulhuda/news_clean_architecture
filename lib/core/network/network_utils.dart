import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../error/failures.dart';

class NetworkUtils {
  NetworkUtils._();

  static Dio client(
      {Duration? connectTimeout,
      Duration? receiveTimeout,
      Duration? sendTimeout}) {
    var dio = Dio(
      BaseOptions(
        headers: {
          // 'Host': 'ikepvx72dh.execute-api.ap-southeast-1.amazonaws.com',
          'Accept': 'application/json'
        },
        connectTimeout: connectTimeout ?? const Duration(seconds: 45),
        receiveTimeout: receiveTimeout ?? const Duration(seconds: 45),
        sendTimeout: sendTimeout,
        contentType: Headers.jsonContentType,
        responseType: ResponseType.json,
      ),
    );

    // print log
    dio.interceptors.add(LogInterceptor(
        requestBody: true,
        logPrint: (object) => debugPrint(object.toString())));

    // catch error to firebase crashlytic
    dio.interceptors.add(InterceptorsWrapper(
      onError: (e, handler) async {
        return handler.next(e);
      },
    ));
    return dio;
  }

  static bool isUnauthorized(Failure error) {
    if (error.errorCode == NetworkCode.UNAUTHORIZED) {
      return true;
    }
    return false;
  }

  static bool isExpired(Failure error) {
    if ((error.errorCode == NetworkCode.UNAUTHORIZED ||
            error.errorCode == NetworkCode.REFRESH_TOKEN_EXPIRED) &&
        error.errorMessage?.contains("expired") == true) {
      return true;
    }
    return false;
  }
}

class NetworkCode {
  // ignore: constant_identifier_names
  static const UNAUTHORIZED = 401;
  // ignore: constant_identifier_names
  static const REFRESH_TOKEN_EXPIRED = 403;
}
