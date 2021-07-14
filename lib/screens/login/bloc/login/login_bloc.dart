import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';
import 'package:kanban/core/validations/login.dart';
import 'package:kanban/core/validations/password.dart';
import 'package:kanban/screens/login/usecases/login_usecase.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc({
    required AuthUseCaseImpl loginUseCase,
  })  : _loginUseCase = loginUseCase,
        super(const LoginState());

  final AuthUseCaseImpl _loginUseCase;

  @override
  Stream<LoginState> mapEventToState(
    LoginEvent event,
  ) async* {
    if (event is LoginChanged) {
      yield* _mapUsernameChangedToState(event, state);
    } else if (event is LoginPasswordChanged) {
      yield* _mapPasswordChangedToState(event, state);
    } else if (event is LoginSubmitted) {
      yield* _mapLoginSubmittedToState(event, state);
    } else if (event is CheckboxChecked) {
      yield _mapCheckboxCheckedToState(event, state);
    } else if (event is ObscurePasswordToggled) {
      yield _mapObscureToggledToState(event, state);
    } else if (event is Logout) {
      yield const LoginState();
    } else if (event is ClearErrors) {
      yield state.copyWith(
          login: const Login.pure(),
          password: const Password.pure(),
          status: FormzStatus.pure);
    }
  }

  LoginState _mapCheckboxCheckedToState(
    CheckboxChecked event,
    LoginState state,
  ) {
    final shouldSaveCredentials = event.shouldSaveCredentials;
    return state.copyWith(shouldSaveCredentials: shouldSaveCredentials);
  }

  LoginState _mapObscureToggledToState(
    ObscurePasswordToggled event,
    LoginState state,
  ) {
    final obscurePassword = event.obscurePassword;
    return state.copyWith(obscurePassword: obscurePassword);
  }

  Stream<LoginState> _mapUsernameChangedToState(
    LoginChanged event,
    LoginState state,
  ) async* {
    yield TupoyState(state);
    final login = Login.dirty(event.phone);
    yield state.copyWith(
        login: login, status: Formz.validate([login, state.password]));
  }

  Stream<LoginState> _mapPasswordChangedToState(
    LoginPasswordChanged event,
    LoginState state,
  ) async* {
    yield TupoyState(state);
    final password = Password.dirty(event.password);
    yield state.copyWith(
        password: password, status: Formz.validate([password, state.login]));
  }

  Stream<LoginState> _mapLoginSubmittedToState(
    LoginSubmitted event,
    LoginState state,
  ) async* {
    if (state.status.isValidated) {
      yield state.copyWith(status: FormzStatus.submissionInProgress);

      final result = await _loginUseCase(LoginParams(
          password: state.password.value, username: state.login.value));
      yield result.fold(
        (val) => state.copyWith(
          status: FormzStatus.submissionFailure,
          password: Password.dirty(state.password.value),
          login: Login.dirty(state.login.value),
          errorText: val.errorMessage,
        ),
        (result) => state.copyWith(),
      );
      yield state.copyWith();
    }
  }
}
