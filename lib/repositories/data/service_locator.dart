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
  static const String baseUrl =
      'https://trello.backend.tests.nekidaem.ru/api/v1';
  final String? token;

  DioSettings({this.token})
      : _dioBaseOptions = BaseOptions(
          baseUrl: baseUrl,
          connectTimeout: 35000,
          receiveTimeout: 33000,
          followRedirects: false,
          validateStatus: (status) => status! <= 500,
        );

  BaseOptions _dioBaseOptions;

  void setBaseOptions({String? token}) {
    if (token != null || this.token != null) {
      _dioBaseOptions = BaseOptions(
        baseUrl: baseUrl,
        connectTimeout: 35000,
        receiveTimeout: 33000,
        followRedirects: false,
        headers: <String, dynamic>{
          'Authorization': 'Bearer ${token ?? this.token}'
        },
        validateStatus: (status) => status! <= 500,
      );
    } else {
      _dioBaseOptions = BaseOptions(
        baseUrl: baseUrl,
        connectTimeout: 35000,
        receiveTimeout: 33000,
        followRedirects: false,
        validateStatus: (status) => status! <= 500,
      );
    }
  }

  Dio get dio => Dio(_dioBaseOptions);
  DioSettings copyWith({String? lang, String? token}) =>
      DioSettings(token: token ?? this.token);
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
