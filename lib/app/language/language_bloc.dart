import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:kanban/repositories/data/sharedpref_data_source.dart';

part 'language_event.dart';
part 'language_state.dart';

class LanguageBloc extends Bloc<LanguageEvent, LanguageState> {
  LanguageBloc(this.sharedprefDataSource)
      : super(const LanguageState(locale: Locale('ru', 'RU'), name: 'Русский'));
  final DbDataSource sharedprefDataSource;

  @override
  Stream<LanguageState> mapEventToState(
    LanguageEvent event,
  ) async* {
    if (event is InitLanguage) {
      yield* _mapLoadLanguageToState(event, state);
    } else if (event is SetLanguageEvent) {
      yield* _mapChangeFromLocaleLanguageToState(event, state);
    }
  }

  Stream<LanguageState> _mapLoadLanguageToState(
      InitLanguage event, LanguageState state) async* {
    Locale locale;
    final language = await sharedprefDataSource.read('language');
    yield language.fold(
        (err) => LanguageChangedState(state.copyWith(
              locale: const Locale('ru', 'RU'),
            )), (val) {
      switch (val) {
        case 'ru':
          locale = const Locale('ru', 'RU');
          break;
        case 'en':
          locale = const Locale('en', 'US');
          break;

        default:
          locale = const Locale('ru', 'RU');
      }
      return LanguageChangedState(state.copyWith(
        locale: locale,
      ));
    });
  }

  Stream<LanguageState> _mapChangeFromLocaleLanguageToState(
      SetLanguageEvent event, LanguageState state) async* {
    await sharedprefDataSource.write('language', event.locale.languageCode);
    yield LanguageChangedState(state.copyWith(locale: event.locale));
  }
}
