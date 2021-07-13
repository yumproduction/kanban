part of 'login_bloc.dart';

class LoginState extends Equatable {
  const LoginState({
    this.status = FormzStatus.pure,
    this.login = const Login.pure(),
    this.password = const Password.pure(),
    this.shouldSaveCredentials = true,
    this.obscurePassword = true,
    this.errorText = ' ',
  });

  final FormzStatus status;
  final Login login;
  final Password password;
  final bool shouldSaveCredentials;
  final bool obscurePassword;
  final String errorText;

  LoginState copyWith({
    FormzStatus? status,
    Login? login,
    Password? password,
    bool? shouldSaveCredentials,
    bool? obscurePassword,
    String? errorText,
  }) =>
      LoginState(
        status: status ?? this.status,
        login: login ?? this.login,
        password: password ?? this.password,
        shouldSaveCredentials:
            shouldSaveCredentials ?? this.shouldSaveCredentials,
        obscurePassword: obscurePassword ?? this.obscurePassword,
        errorText: errorText ?? this.errorText,
      );

  @override
  List<Object> get props => [
        status,
        login,
        password,
        shouldSaveCredentials,
        obscurePassword,
        errorText
      ];
}

class LoginIncorectCredentails extends LoginState {
  final LoginState state;

  LoginIncorectCredentails(this.state)
      : super(
            status: state.status,
            login: state.login,
            errorText: state.errorText,
            password: state.password);
}

class TupoyState extends LoginState {
  final LoginState state;

  TupoyState(this.state)
      : super(
            status: state.status,
            login: state.login,
            errorText: state.errorText,
            password: state.password);
}

class LoginUnknowError extends LoginState {
  final LoginState state;

  LoginUnknowError(this.state)
      : super(
            status: state.status,
            login: state.login,
            password: state.password,
            errorText: state.errorText);
}

class LoginNotVerifiedError extends LoginState {
  final LoginState state;

  LoginNotVerifiedError(this.state)
      : super(
            status: state.status,
            login: state.login,
            password: state.password,
            errorText: state.errorText);
}
