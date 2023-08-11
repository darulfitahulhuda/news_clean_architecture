import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:magang/data/datasource/remote/config/base_url.dart';

import '../../../core/error/exceptions.dart';
import '../../../core/network/network_utils.dart';
import '../../../domain/entities/news.dart';

abstract class NewsRemoteDataSource {
  Future<News> getNews();
}

class NewsRemoteDataSourceImpl implements NewsRemoteDataSource {
  @override
  Future<News> getNews() async {
    try {
      var response = await NetworkUtils.client().get(BaseUrl.headliness
          //     , queryParameters: {
          //   "country": "id",
          //   "apiKey": "4a22ea448fb2486990720dd0acbbcb31",
          // }
          );
      debugPrint("response getNews: $response");

      return News.fromJson(response.data);
    } on DioException catch (e) {
      debugPrint("error : ${e.response}");
      throw ServerException(
          errorCode: e.response?.statusCode,
          errorMessage: e.response?.data["message"],
          data: e.response?.data);
    }
  }
}
