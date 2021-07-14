part of 'language_bloc.dart';

abstract class LanguageEvent extends Equatable {
  const LanguageEvent();

  @override
  List<Object> get props => [];
}

class InitLanguage extends LanguageEvent {
  const InitLanguage();

  @override
  List<Object> get props => [];
}

class SetLanguageEvent extends LanguageEvent {
  final Locale locale;

  const SetLanguageEvent(this.locale);

  @override
  List<Object> get props => [locale];
}
