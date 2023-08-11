import 'package:dartz/dartz.dart';
import 'package:magang/data/repository/news_repository.dart';

import '../../core/error/failures.dart';
import '../entities/news.dart';

class GetNewsUsecase {
  final NewsRepository repository;

  const GetNewsUsecase(this.repository);

  Future<Either<Failure, News>> call() {
    return repository.getNews();
  }
}
