import 'dart:async';

import 'package:kanban/screens/login/bloc/auth/auth_bloc.dart';

abstract class AuthenticationRepository {
  void changeStatus(AuthenticationState status);
  final _controller = StreamController<AuthenticationState>();

  Stream<AuthenticationState> get status async* {
    yield* _controller.stream;
  }

  void saveToken(String token);
  void dispose() => _controller.close();
}
