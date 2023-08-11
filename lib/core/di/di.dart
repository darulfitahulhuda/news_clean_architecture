import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:magang/data/datasource/remote/news_remote_datasource.dart';
import 'package:magang/data/repository/news_repository.dart';
import 'package:magang/domain/usecase/get_news_usecase.dart';
import 'package:magang/presentation/bloc/bloc/news_bloc.dart';

import '../network/network_info.dart';
import '../network/network_utils.dart';

final sl = GetIt.instance;

Future<void> init() async {
  /// Bloc
  sl.registerFactory(() => NewsBloc(sl()));

  /// Usecase
  sl.registerLazySingleton(() => GetNewsUsecase(sl()));

  /// Repositories
  sl.registerLazySingleton<NewsRepository>(
      () => NewsRepositoryImpl(sl(), sl()));

  /// Remote Data Source
  sl.registerLazySingleton<NewsRemoteDataSource>(
      () => NewsRemoteDataSourceImpl());

  /// External
  sl.registerLazySingleton(() => NetworkUtils.client());
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));
  sl.registerLazySingleton(() => InternetConnection());
}
