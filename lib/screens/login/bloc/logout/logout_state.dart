part of 'logout_bloc.dart';

abstract class LogoutState extends Equatable {
  const LogoutState();

  @override
  List<Object> get props => [];
}

class LogoutInitial extends LogoutState {}

class LogoutError extends LogoutState {
  final String error;

  const LogoutError(this.error);
  @override
  List<Object> get props => [error];
}

class LogoutInprogress extends LogoutState {
  const LogoutInprogress();
}

class LogoutSuccess extends LogoutState {
  const LogoutSuccess();
}
