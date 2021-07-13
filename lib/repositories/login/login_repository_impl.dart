import 'package:equatable/equatable.dart';
// ignore: implementation_imports
import 'package:either_option/src/either.dart';
import 'package:kanban/core/error/exceptions.dart';
import 'package:kanban/core/error/failures.dart';
import 'package:kanban/repositories/data/login_data_source.dart';
import 'package:kanban/repositories/data/sharedpref_data_source.dart';
import 'package:kanban/repositories/login/login_repository.dart';

//IMPLEMENT FUNCTIONS

class LoginRepositoryImpl extends LoginRepository {
  final AuthDataSource authDataSource;
  final DbDataSource sharedprefDataSource;
  LoginRepositoryImpl(this.authDataSource, this.sharedprefDataSource);

  @override
  Future<Either<Failure, String>> login(
      {required String username, required String password}) async {
    try {
      final data =
          await authDataSource.getLogin(username: username, password: password);
      print(data.token);
      await sharedprefDataSource.write('token', data.token);

      return Right(data.token);
    } on UnAuthenticatedException catch (e) {
      return Left(AuthFailure(e.err, e.code));
    } on ServerErrorException catch (e) {
      return Left(ServerFailure(e.err, e.code));
    } catch (e) {
      return Left(const ServerFailure('something_went_wrong', 0));
    }
  }

  @override
  Future<bool> logout() async {
    final tk = await sharedprefDataSource.delete('token');

    if (tk) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Future<Either<Failure, bool>> checkToken(String token) async {
    try {
      final result = await authDataSource.checkToken(token: token);
      return Right(result);
    } on TokenExpiredException catch (e) {
      return Left(TokenExpiredFailure(e.err, e.code));
    } on ServerErrorException catch (e) {
      return Left(ServerFailure(e.err, e.code));
    } catch (e) {
      return Left(const ServerFailure('something_went_wrong', 0));
    }
  }

  @override
  Future<Either<Failure, String>> getToken() async =>
      sharedprefDataSource.read('token');
}

class TokenUserParams extends Equatable {
  final String token;

  const TokenUserParams(this.token);

  @override
  List<Object?> get props => [token];
}
