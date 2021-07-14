part of 'language_bloc.dart';

class LanguageState extends Equatable {
  final Locale locale;
  final String name;
  const LanguageState({required this.locale, required this.name});
  LanguageState copyWith({Locale? locale, String? name}) =>
      LanguageState(locale: locale ?? this.locale, name: name ?? this.name);
  @override
  List<Object> get props => [locale];
}

class LanguageChangedState extends LanguageState {
  final LanguageState state;

  LanguageChangedState(this.state)
      : super(locale: state.locale, name: state.name);
}
