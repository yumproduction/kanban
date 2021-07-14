part of 'auth_bloc.dart';

class AuthenticationState extends Equatable {
  const AuthenticationState._({
    this.status = AuthenticationStatus.unknown,
    this.submissionStatus = FormzStatus.pure,
  });

  const AuthenticationState.unknown()
      : this._(submissionStatus: FormzStatus.submissionFailure);

  const AuthenticationState.firstTime()
      : this._(submissionStatus: FormzStatus.submissionFailure);

  const AuthenticationState.authenticated()
      : this._(status: AuthenticationStatus.authenticated);
  const AuthenticationState.logedOut()
      : this._(status: AuthenticationStatus.logedOut);

  const AuthenticationState.unauthenticated()
      : this._(
            status: AuthenticationStatus.unauthenticated,
            submissionStatus: FormzStatus.submissionFailure);

  final AuthenticationStatus status;
  final FormzStatus submissionStatus;

  @override
  List<Object?> get props => [status];
}
