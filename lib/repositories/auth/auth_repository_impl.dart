import 'dart:async';

import 'package:kanban/repositories/auth/auth_repository.dart';
import 'package:kanban/repositories/data/sharedpref_data_source.dart';
import 'package:kanban/screens/login/bloc/auth/auth_bloc.dart';

class AuthRepositoryImp extends AuthenticationRepository {
  AuthRepositoryImp(DbDataSource dataSource)
      : _sharedprefDataSource = dataSource;
  final DbDataSource _sharedprefDataSource;

  final _controller = StreamController<AuthenticationState>();
  @override
  Stream<AuthenticationState> get status async* {
    yield* _controller.stream;
  }

  @override
  void dispose() => _controller.close();
  @override
  void changeStatus(AuthenticationState status) => _controller.add(status);

  @override
  Future<void> saveToken(String token) async {
    await _sharedprefDataSource.write('token', token);
  }
}
