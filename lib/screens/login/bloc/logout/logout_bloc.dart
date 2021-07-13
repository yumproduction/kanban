import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:kanban/screens/login/usecases/login_usecase.dart';

part 'logout_event.dart';
part 'logout_state.dart';

class LogoutBloc extends Bloc<LogoutEvent, LogoutState> {
  LogoutBloc(this._loginUseCase) : super(LogoutInitial());
  final AuthUseCaseImpl _loginUseCase;

  @override
  Stream<LogoutState> mapEventToState(
    LogoutEvent event,
  ) async* {
    if (event is OnLogout) {
      yield* _mapLogoutToState(event, state);
    }
  }

  Stream<LogoutState> _mapLogoutToState(
      OnLogout event, LogoutState state) async* {
    yield const LogoutInprogress();
    final result = await _loginUseCase.logout();
    if (result) {
      yield const LogoutSuccess();
    } else {
      yield const LogoutError('cant logout');
    }
  }
}
