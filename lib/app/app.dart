import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:kanban/app/utils/router.dart' as router;
import 'package:kanban/app/utils/remove_glow.dart';
import 'package:kanban/core/entities/auth_enum.dart';
import 'package:kanban/core/theme.dart';
import 'package:kanban/repositories/auth/auth_repository.dart';
import 'package:kanban/repositories/auth/auth_repository_impl.dart';
import 'package:kanban/repositories/data/login_data_source.dart';
import 'package:kanban/repositories/data/service_locator.dart';
import 'package:kanban/repositories/data/sharedpref_data_source.dart';
import 'package:kanban/repositories/login/login_repository_impl.dart';
import 'package:kanban/screens/login/bloc/auth/auth_bloc.dart';
import 'package:kanban/screens/login/login.dart';
import 'package:kanban/screens/login/usecases/login_usecase.dart';
import 'package:kanban/screens/main/main.dart';

class App extends StatelessWidget {
  const App({
    required this.authRepository,
    required this.dataSource,
    Key? key,
  }) : super(key: key);
  final DbDataSource dataSource;
  final AuthRepositoryImp authRepository;

  @override
  Widget build(BuildContext context) => RepositoryProvider.value(
        value: authRepository,
        child: MultiRepositoryProvider(
          providers: [
            RepositoryProvider<DbDataSource>(
              create: (context) => dataSource,
            ),
            RepositoryProvider<AuthenticationRepository>(
              create: (context) => authRepository,
            ),
            RepositoryProvider<AuthUseCaseImpl>(
              create: (context) => AuthUseCaseImpl(
                  LoginRepositoryImpl(
                    AuthDataSourceImpl(context.read<DioSettings>()),
                    dataSource,
                  ),
                  authRepository),
            ),
          ],
          child: MultiBlocProvider(
            providers: [
              BlocProvider<AuthenticationBloc>(
                create: (_) => AuthenticationBloc(
                  authenticationRepository: authRepository,
                  loginUseCase: AuthUseCaseImpl(
                      LoginRepositoryImpl(
                        AuthDataSourceImpl(context.read<DioSettings>()),
                        dataSource,
                      ),
                      authRepository),
                  //  userRepository: userRepository
                )..add(AuthUser()),
              ),
            ],
            child: MyApp(),
          ),
        ),
      );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _navigatorKey = GlobalKey<NavigatorState>();
  NavigatorState? get _navigator => _navigatorKey.currentState;
  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        systemNavigationBarColor: Color(0xFFF0F2F9),
        systemNavigationBarIconBrightness: Brightness.dark));
    super.initState();
  }

  @override
  Widget build(BuildContext context) => MaterialApp(
        navigatorKey: _navigatorKey,
        builder: (context, child) => MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
          child: ScrollConfiguration(
            behavior: MyBehavior(),
            child: BlocListener<AuthenticationBloc, AuthenticationState>(
              listener: (context, state) {
                switch (state.status) {
                  case AuthenticationStatus.authenticated:
                    _navigator!.pushAndRemoveUntil<void>(
                      MainScreen.route(),
                      (route) => false,
                    );
                    break;
                  case AuthenticationStatus.unknown:
                    // _navigator!.pushAndRemoveUntil<void>(
                    //   LoginScreen.route(),
                    //   (route) => false,
                    // );
                    break;
                  case AuthenticationStatus.unauthenticated:
                    // _navigator!.pushAndRemoveUntil<void>(
                    //   LoginScreen.route(),
                    //   (route) => false,
                    // );
                    break;
                  case AuthenticationStatus.firstTime:
                    // _navigator!.pushAndRemoveUntil<void>(
                    //   LoginScreen.route(),
                    //   (route) => false,
                    // );
                    break;
                  case AuthenticationStatus.notVerified:
                    // TODO: Handle this case.
                    break;
                  case AuthenticationStatus.connectionError:
                    // TODO: Handle this case.
                    break;
                }
              },
              child: child,
            ),
          ),
        ),
        title: 'Kanban',
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        onGenerateRoute: router.generateRoute,
        theme: AppTheme.darkTheme(),
      );
}
