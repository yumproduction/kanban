class ServerErrorException implements Exception {
  final String err;
  final int code;
  ServerErrorException(this.err, this.code);
  @override
  String toString() => 'Exception: $err Code: $code';
}

class UnAuthenticatedException implements Exception {
  final String err;
  final int code;
  UnAuthenticatedException(this.err, this.code);
  String get errMessage => err;
  @override
  String toString() => 'Exception: $err Code: $code';
}

class RequestErrorException implements Exception {
  final String err;
  final int code;
  RequestErrorException(this.err, this.code);
  String get errMessage => err;
  @override
  String toString() => 'Exception: $err Code: $code';
}

class SendCodeExeption implements Exception {
  final String err;
  final int code;
  SendCodeExeption(this.err, this.code);
  String get errMessage => err;
  @override
  String toString() => 'Exception: $err Code: $code';
}

class TokenExpiredException implements Exception {
  final String err;
  final int code;
  TokenExpiredException(this.err, this.code);
  String get errMessage => err;
  @override
  String toString() => 'Exception: $err Code: $code';
}

class SocialLoginException implements Exception {
  final String err;
  final int code;
  SocialLoginException(this.err, this.code);
  String get errMessage => err;
  @override
  String toString() => 'Exception: $err Code: $code';
}

class UploadImageException implements Exception {
  final String err;
  final int code;
  UploadImageException(this.err, this.code);
  String get errMessage => err;
  @override
  String toString() => 'Exception: $err Code: $code';
}
