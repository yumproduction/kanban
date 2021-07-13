import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';

final serviceLocator = GetIt.I;

void setupLocator() {
  serviceLocator.registerLazySingleton(() => Props());
  serviceLocator.registerLazySingleton(() => DioSettings());
  serviceLocator.registerLazySingleton(() => StatusBarHeight());
}

class DioSettings {
  static const String baseUrl = 'https://betapi.imkon.uz/api/v1';

  BaseOptions _dioBaseOptions = BaseOptions(
    baseUrl: 'https://betapi.imkon.uz/api/v1',
    connectTimeout: 35000,
    receiveTimeout: 33000,
    followRedirects: false,
    validateStatus: (status) => status! <= 500,
  );

  BaseOptions get dioBaseOptions => _dioBaseOptions;
}

class Props {
  String? _pass;
  String? _phone;
  String? _code;
  bool? _isHousesEmpty;
  String? get pass => _pass;

  String? get code => _code;

  String? get phone => _phone;

  bool? get house => _isHousesEmpty;

  void setProps({String? phone, String? pass, String? code, bool? isEmpty}) {
    _pass = pass;
    _phone = phone;
    _code = code;
    _isHousesEmpty = isEmpty;
  }
}

class StatusBarHeight {
  double? _h;

  double get h => _h ?? 0;

  void setH(double h) => _h = h;
}
