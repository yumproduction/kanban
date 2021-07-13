part of 'auth_bloc.dart';

abstract class AuthenticationEvent extends Equatable {
  const AuthenticationEvent();

  @override
  List<Object> get props => [];
}

class AuthenticationStatusChanged extends AuthenticationEvent {
  const AuthenticationStatusChanged(this.status);

  final AuthenticationState status;
  // final User user;

  @override
  List<Object> get props => [status];
}

class AuthenticationUserChanged extends AuthenticationEvent {
  const AuthenticationUserChanged();

  // final AuthenticationStatus status;

  @override
  List<Object> get props => [];
}

class AuthenticationLogoutRequested extends AuthenticationEvent {}

class AuthUser extends AuthenticationEvent {}
