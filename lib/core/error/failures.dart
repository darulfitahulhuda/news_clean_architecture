import 'package:equatable/equatable.dart';

import 'exceptions.dart';

abstract class Failure extends Equatable {
  final int? errorCode;
  final String? errorMessage;
  final dynamic data;

  const Failure({this.errorCode, this.errorMessage, this.data});

  @override
  List<Object> get props => [];
}

class ServerFailure extends Failure {
  const ServerFailure({errorCode, errorMessage, data})
      : super(errorCode: errorCode, errorMessage: errorMessage, data: data);

  factory ServerFailure.fromException(ServerException error) {
    return ServerFailure(
        errorCode: error.errorCode,
        errorMessage: error.errorMessage,
        data: error.data);
  }

  factory ServerFailure.noInternet() {
    return const ServerFailure(
        errorCode: 0, errorMessage: "No Internet Connection");
  }

  factory ServerFailure.other(dynamic error) {
    return ServerFailure(
      errorCode: 0,
      errorMessage: error.toString(),
    );
  }
}

class CacheFailure extends Failure {
  const CacheFailure({errorCode, errorMessage, data})
      : super(errorCode: errorCode, errorMessage: errorMessage, data: data);

  factory CacheFailure.fromException(CacheException error) {
    return CacheFailure(
      errorCode: error.errorCode,
      errorMessage: error.errorMessage,
    );
  }

  factory CacheFailure.noAuth() {
    return const CacheFailure(
      errorCode: 401,
      errorMessage: "No Auth",
    );
  }

  factory CacheFailure.other(dynamic error) {
    return CacheFailure(
      errorCode: 0,
      errorMessage: error.toString(),
    );
  }
}
