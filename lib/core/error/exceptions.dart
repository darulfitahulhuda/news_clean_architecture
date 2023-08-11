class CacheException implements Exception {
  final int? errorCode;
  final String? errorMessage;

  CacheException({this.errorCode, this.errorMessage});
}

class ServerException implements Exception {
  final int? errorCode;
  final String? errorMessage;
  dynamic data;

  ServerException({this.errorCode, this.errorMessage, this.data});
}
