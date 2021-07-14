import 'package:dio/dio.dart';
import 'package:kanban/core/error/exceptions.dart';
import 'package:kanban/repositories/data/service_locator.dart';
import 'package:kanban/repositories/login/login_repository_impl.dart';

abstract class AuthDataSource {
  Future<TokenUserParams> getLogin(
      {required String username, required String password});
  Future<bool> checkToken({required String token});
  Future<String> refreshToken({required String token});
}

class AuthDataSourceImpl implements AuthDataSource {
  final DioSettings _dioSettings;

  AuthDataSourceImpl(this._dioSettings);
  @override
  Future<TokenUserParams> getLogin({
    required String username,
    required String password,
  }) async {
    final response = await _dioSettings.dio.post<dynamic>(
      '/users/login/',
      data: {
        'username': username.replaceAll(' ', '').replaceAll('+', ''),
        'password': password,
      },
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      final token = response.data['token'] as String? ?? '';

      _dioSettings.setBaseOptions(token: token);
      return TokenUserParams(token);
    } else if (response.statusCode! >= 400 && response.statusCode! < 500) {
      final result = response.data as Map<String, dynamic>;
      throw UnAuthenticatedException(
          (result['non_field_errors'] as List)[0] as String,
          response.statusCode ?? 400);
    } else {
      throw ServerErrorException(
          'login_pass_error', response.statusCode ?? 400);
    }
  }

  @override
  Future<String> refreshToken({required String token}) async {
    final response = await _dioSettings.dio.post<dynamic>(
      '/users/refresh_token/',
      data: FormData.fromMap(
        {
          'token': token,
        },
      ),
    );
    if (response.statusCode == 200 || response.statusCode == 201) {
      final newToken = response.data['token'] as String;
      _dioSettings.setBaseOptions(token: newToken);

      return newToken;
    } else if (response.statusCode! >= 400 && response.statusCode! < 500) {
      throw TokenExpiredException(
          response.data['non_field_errors'][0].toString(),
          response.statusCode ?? 400);
    } else {
      throw ServerErrorException(
          response.data['non_field_errors'][0].toString(),
          response.statusCode ?? 400);
    }
  }

  @override
  Future<bool> checkToken({required String token}) async {
    final response = await _dioSettings.dio.get<dynamic>(
      '/cards/',
      options: Options(
        headers: <String, dynamic>{'Authorization': 'JWT $token'},
      ),
    );
    if (response.statusCode == 200 || response.statusCode == 201) {
      _dioSettings.setBaseOptions(token: token);

      return true;
    } else if (response.statusCode! >= 400 && response.statusCode! < 500) {
      throw TokenExpiredException(
          response.data['non_field_errors'][0].toString(),
          response.statusCode ?? 400);
    } else {
      throw ServerErrorException(
          response.data['non_field_errors'][0].toString(),
          response.statusCode ?? 400);
    }
  }
}
