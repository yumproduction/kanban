import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';
import 'package:kanban/core/entities/auth_enum.dart';
import 'package:kanban/repositories/auth/auth_repository_impl.dart';
import 'package:kanban/screens/login/usecases/login_usecase.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc({
    required AuthUseCaseImpl loginUseCase,
    required AuthRepositoryImp authenticationRepository,
  })  : _authenticationRepository = authenticationRepository,
        _loginUseCase = loginUseCase,
        super(const AuthenticationState.unknown()) {
    _authenticationStatusSubscription = _authenticationRepository.status
        .listen((status) => add(AuthenticationStatusChanged(status)));
  }
  final AuthUseCaseImpl _loginUseCase;

  final AuthRepositoryImp _authenticationRepository;
  StreamSubscription<AuthenticationState>? _authenticationStatusSubscription;

  @override
  Stream<AuthenticationState> mapEventToState(
    AuthenticationEvent event,
  ) async* {
    if (event is AuthenticationStatusChanged) {
      yield* _mapAuthenticationStatusChangedToState(event, state);
    } else if (event is AuthenticationLogoutRequested) {
    } else if (event is AuthUser) {
      final result = await _loginUseCase.localLogin();
      yield result.fold((val) => const AuthenticationState.unauthenticated(),
          (user) => const AuthenticationState.authenticated());
    }
  }

  @override
  Future<void> close() {
    _authenticationStatusSubscription?.cancel();
    _authenticationRepository.dispose();
    return super.close();
  }

  Stream<AuthenticationState> _mapAuthenticationStatusChangedToState(
    AuthenticationStatusChanged event,
    AuthenticationState state,
  ) async* {
    switch (event.status.status) {
      case AuthenticationStatus.unauthenticated:
        yield const AuthenticationState.unauthenticated();
        break;
      case AuthenticationStatus.authenticated:
        yield const AuthenticationState.authenticated();
        break;
      case AuthenticationStatus.firstTime:
        yield const AuthenticationState.firstTime();
        break;
      case AuthenticationStatus.logedOut:
        yield const AuthenticationState.logedOut();
        break;
      default:
        yield const AuthenticationState.unknown();
    }
  }
}
