import 'package:dartz/dartz.dart';
import 'package:magang/data/datasource/remote/news_remote_datasource.dart';

import '../../core/error/exceptions.dart';
import '../../core/error/failures.dart';
import '../../core/network/network_info.dart';
import '../../domain/entities/news.dart';

abstract class NewsRepository {
  Future<Either<Failure, News>> getNews();
}

class NewsRepositoryImpl implements NewsRepository {
  final NewsRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  NewsRepositoryImpl(this.remoteDataSource, this.networkInfo);

  @override
  Future<Either<Failure, News>> getNews() async {
    if (await networkInfo.isConnected) {
      try {
        final response = await remoteDataSource.getNews();

        return Right(response);
      } on ServerException catch (error) {
        return Left(ServerFailure(
            errorCode: error.errorCode, errorMessage: error.errorMessage));
      }
    } else {
      return Left(ServerFailure.noInternet());
    }
  }
}
