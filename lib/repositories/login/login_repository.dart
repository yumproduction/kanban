import 'package:either_option/either_option.dart';
import 'package:kanban/core/error/failures.dart';

//ABSTRACT CLASS TO ASSIGN FUNCTIONS

abstract class LoginRepository {
  Future<Either<Failure, String>> login(
      {required String username, required String password});
  Future<Either<Failure, bool>> checkToken(String token);
  Future<Either<Failure, String>> getToken();
  Future<bool> logout();
}
