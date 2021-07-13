import 'package:either_option/either_option.dart';
import 'package:equatable/equatable.dart';
import 'package:kanban/core/error/failures.dart';
import 'package:kanban/repositories/login/login_repository_impl.dart';

abstract class AuthUseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
  Future<Either<Failure, Type>> localLogin();
  Future<bool> logout();
}

class NoParams extends Equatable {
  @override
  List<Object> get props => [];
}
