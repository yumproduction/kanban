import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String errorMessage;
  final int? statusCode;

  const Failure({
    required this.errorMessage,
    this.statusCode,
  });
  @override
  List<Object> get props => [errorMessage];
}

// General failures
class ServerFailure extends Failure {
  const ServerFailure(String errorMessage, int statusCode)
      : super(errorMessage: errorMessage, statusCode: statusCode);
}

class CacheFailure extends Failure {
  const CacheFailure(String errorMessage, int statusCode)
      : super(errorMessage: errorMessage, statusCode: statusCode);
}

class AuthFailure extends Failure {
  const AuthFailure(String errorMessage, int statusCode)
      : super(errorMessage: errorMessage, statusCode: statusCode);
}

class LoadDataFailure extends Failure {
  const LoadDataFailure(String errorMessage, int statusCode)
      : super(errorMessage: errorMessage, statusCode: statusCode);
}

class TokenExpiredFailure extends Failure {
  const TokenExpiredFailure(String errorMessage, int statusCode)
      : super(errorMessage: errorMessage, statusCode: statusCode);
}

class UploadImageFailure extends Failure {
  const UploadImageFailure(String errorMessage, int statusCode)
      : super(errorMessage: errorMessage, statusCode: statusCode);
}
