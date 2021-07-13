import 'package:either_option/src/either.dart';
import 'package:equatable/equatable.dart';
import 'package:kanban/core/error/failures.dart';
import 'package:kanban/repositories/auth/auth_repository.dart';
import 'package:kanban/repositories/login/login_repository.dart';
import 'package:kanban/screens/login/bloc/auth/auth_bloc.dart';
import 'package:kanban/screens/login/usecases/auth_usercase.dart';

class AuthUseCaseImpl implements AuthUseCase<String, LoginParams> {
  final LoginRepository repository;
  final AuthenticationRepository authenticationRepository;
  AuthUseCaseImpl(this.repository, this.authenticationRepository);

//  _             _
// | |           (_)
// | | ___   __ _ _ _ __
// | |/ _ \ / _` | | '_ \
// | | (_) | (_| | | | | |
// |_|\___/ \__, |_|_| |_|
//           __/ |
//          |___/
  @override
  Future<Either<Failure, String>> call(LoginParams params) async {
    final user = await repository.login(
        username: params.username, password: params.password);
    user.fold(
        (err) => null,
        (user) => authenticationRepository
            .changeStatus(const AuthenticationState.authenticated()));
    return user;
  }

  //  _______ ____  _  ________ _   _    _____    __      ________ _____
  // |__   __/ __ \| |/ /  ____| \ | |  / ____|  /\ \    / /  ____|  __ \
  //    | | | |  | | ' /| |__  |  \| | | (___   /  \ \  / /| |__  | |  | |
  //    | | | |  | |  < |  __| | . ` |  \___ \ / /\ \ \/ / |  __| | |  | |
  //    | | | |__| | . \| |____| |\  |  ____) / ____ \  /  | |____| |__| |
  //    |_|  \____/|_|\_\______|_| \_| |_____/_/    \_\/   |______|_____/
  //
  //
  @override
  Future<Either<Failure, String>> localLogin() async {
    final token = await repository.getToken();
    print(token);
    return token.fold(
        (err) =>
            Left(TokenExpiredFailure(err.errorMessage, err.statusCode ?? 0)),
        (token) async {
      final check = await repository.checkToken(token);
      return check.fold((err) async {
        final refresh = await repository.refreshToken(token);
        return refresh.fold(
            (err) => Left(
                TokenExpiredFailure(err.errorMessage, err.statusCode ?? 0)),
            (newToken) => Right(newToken));
      }, (valid) => Right(token));
    });
  }

  @override
  Future<bool> logout() async {
    final result = await repository.logout();
    if (result) {
      authenticationRepository
          .changeStatus(const AuthenticationState.unauthenticated());
      return true;
    } else {
      return false;
    }
  }
}

class LoginParams extends Equatable {
  final String username;
  final String password;

  const LoginParams({required this.username, required this.password});

  @override
  List<Object> get props => [username, password];
}
