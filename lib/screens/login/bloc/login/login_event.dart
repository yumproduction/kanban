part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object?> get props => [];
}

class LoginChanged extends LoginEvent {
  const LoginChanged(this.phone);

  final String phone;

  @override
  List<Object> get props => [phone];
}

class LoadUser extends LoginEvent {
  const LoadUser();

  @override
  List<Object?> get props => [];
}

class LoginPasswordChanged extends LoginEvent {
  const LoginPasswordChanged(this.password);

  final String password;

  @override
  List<Object> get props => [password];
}

class CheckboxChecked extends LoginEvent {
  final bool shouldSaveCredentials;

  const CheckboxChecked(this.shouldSaveCredentials);

  @override
  List<Object> get props => [shouldSaveCredentials];
}

class ObscurePasswordToggled extends LoginEvent {
  final bool obscurePassword;

  const ObscurePasswordToggled(this.obscurePassword);

  @override
  List<Object> get props => [obscurePassword];
}

class LoginSubmitted extends LoginEvent {
  const LoginSubmitted();
}

class Logout extends LoginEvent {
  const Logout();
}

class ClearErrors extends LoginEvent {}
