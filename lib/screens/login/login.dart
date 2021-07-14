import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kanban/app/language/language_bloc.dart';
import 'package:kanban/core/theme.dart';
import 'package:kanban/repositories/auth/auth_repository.dart';
import 'package:kanban/repositories/data/login_data_source.dart';
import 'package:kanban/repositories/data/service_locator.dart';
import 'package:kanban/repositories/data/sharedpref_data_source.dart';
import 'package:kanban/repositories/login/login_repository_impl.dart';
import 'package:kanban/screens/login/bloc/login/login_bloc.dart';
import 'package:kanban/screens/login/usecases/login_usecase.dart';
import 'package:kanban/screens/login/widgets/input_field.dart';
import 'package:kanban/widgets/button_with_content.dart';
import 'package:kanban/widgets/change_lang.dart';
import 'package:kanban/widgets/default_button.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:kanban/generated/locale_keys.g.dart';
import 'package:kanban/generated/locale_keys.g.dart';

import 'package:formz/formz.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static Route route() =>
      MaterialPageRoute<void>(builder: (_) => const LoginScreen());

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  void onEnter(BuildContext context) {
    context.read<LoginBloc>().add(const LoginSubmitted());
    FocusScope.of(context).unfocus();
  }

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (_) => LoginBloc(
            loginUseCase: AuthUseCaseImpl(
          LoginRepositoryImpl(AuthDataSourceImpl(context.read<DioSettings>()),
              context.read<DbDataSource>()),
          context.read<AuthenticationRepository>(),
        )),
        child: BlocBuilder<LanguageBloc, LanguageState>(
          builder: (context, state) => Builder(
            builder: (context) => KeyboardDismisser(
              gestures: const [GestureType.onTap],
              child: Scaffold(
                appBar: AppBar(
                  toolbarHeight: 56,
                  title: const Text('Kanban'),
                  actions: [
                    Row(
                      children: const [
                        ChangeLangComponent(),
                        SizedBox(
                          width: 24,
                        ),
                      ],
                    ),
                  ],
                  backgroundColor: Theme.of(context).appBarTheme.color,
                ),
                body: SizedBox(
                  width: double.infinity,
                  height: double.infinity,
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(24),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          BlocBuilder<LoginBloc, LoginState>(
                            builder: (context, state) => InputFieldComponent(
                              hint: LocaleKeys.enter_user.tr(),
                              error: state.status.isSubmissionFailure
                                  ? ''
                                  : LocaleKeys.min_login_chars.tr(),
                              onChanged: (v) {
                                context.read<LoginBloc>().add(LoginChanged(v));
                              },
                              isError: !state.login.pure &&
                                  (state.login.invalid ||
                                      state.status.isSubmissionFailure),
                            ),
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          BlocBuilder<LoginBloc, LoginState>(
                            builder: (context, state) => InputFieldComponent(
                              hint: LocaleKeys.enter_password.tr(),
                              isError: !state.password.pure &&
                                  (state.password.invalid ||
                                      state.status.isSubmissionFailure),
                              error: state.status.isSubmissionFailure
                                  ? ''
                                  : LocaleKeys.min_pass_chars.tr(),
                              obscure: true,
                              onChanged: (v) {
                                context
                                    .read<LoginBloc>()
                                    .add(LoginPasswordChanged(v));
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          BlocConsumer<LoginBloc, LoginState>(
                            listener: (context, state) {
                              if (state.status.isSubmissionFailure) {
                                Flushbar<void>(
                                  backgroundColor: const Color(0xffF13C3C),
                                  messageText: Text(
                                    state.errorText,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  isDismissible: true,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 28, vertical: 22),
                                  duration: const Duration(seconds: 3),
                                ).show(context);
                              }
                            },
                            builder: (context, state) => MainButton(
                              height: 44,
                              horizontalPadding: 0,
                              title: LocaleKeys.log_in.tr(),
                              callback: () => onEnter(context),
                              inProgress: state.status.isSubmissionInProgress,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      );
}
