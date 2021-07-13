// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'main_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MainStateTearOff {
  const _$MainStateTearOff();

  _MainState call(MainContent generalInfo) {
    return _MainState(
      generalInfo,
    );
  }

  InitialMainState initial(MainContent generalInfo) {
    return InitialMainState(
      generalInfo,
    );
  }

  LoadingMainState onLoading(MainContent generalInfo) {
    return LoadingMainState(
      generalInfo,
    );
  }

  FailureState onFailure(MainContent generalInfo) {
    return FailureState(
      generalInfo,
    );
  }

  SuccessState onSuccess(MainContent generalInfo) {
    return SuccessState(
      generalInfo,
    );
  }
}

/// @nodoc
const $MainState = _$MainStateTearOff();

/// @nodoc
mixin _$MainState {
  MainContent get generalInfo => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(MainContent generalInfo) $default, {
    required TResult Function(MainContent generalInfo) initial,
    required TResult Function(MainContent generalInfo) onLoading,
    required TResult Function(MainContent generalInfo) onFailure,
    required TResult Function(MainContent generalInfo) onSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(MainContent generalInfo)? $default, {
    TResult Function(MainContent generalInfo)? initial,
    TResult Function(MainContent generalInfo)? onLoading,
    TResult Function(MainContent generalInfo)? onFailure,
    TResult Function(MainContent generalInfo)? onSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_MainState value) $default, {
    required TResult Function(InitialMainState value) initial,
    required TResult Function(LoadingMainState value) onLoading,
    required TResult Function(FailureState value) onFailure,
    required TResult Function(SuccessState value) onSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_MainState value)? $default, {
    TResult Function(InitialMainState value)? initial,
    TResult Function(LoadingMainState value)? onLoading,
    TResult Function(FailureState value)? onFailure,
    TResult Function(SuccessState value)? onSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainStateCopyWith<MainState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainStateCopyWith<$Res> {
  factory $MainStateCopyWith(MainState value, $Res Function(MainState) then) =
      _$MainStateCopyWithImpl<$Res>;
  $Res call({MainContent generalInfo});

  $MainContentCopyWith<$Res> get generalInfo;
}

/// @nodoc
class _$MainStateCopyWithImpl<$Res> implements $MainStateCopyWith<$Res> {
  _$MainStateCopyWithImpl(this._value, this._then);

  final MainState _value;
  // ignore: unused_field
  final $Res Function(MainState) _then;

  @override
  $Res call({
    Object? generalInfo = freezed,
  }) {
    return _then(_value.copyWith(
      generalInfo: generalInfo == freezed
          ? _value.generalInfo
          : generalInfo // ignore: cast_nullable_to_non_nullable
              as MainContent,
    ));
  }

  @override
  $MainContentCopyWith<$Res> get generalInfo {
    return $MainContentCopyWith<$Res>(_value.generalInfo, (value) {
      return _then(_value.copyWith(generalInfo: value));
    });
  }
}

/// @nodoc
abstract class _$MainStateCopyWith<$Res> implements $MainStateCopyWith<$Res> {
  factory _$MainStateCopyWith(
          _MainState value, $Res Function(_MainState) then) =
      __$MainStateCopyWithImpl<$Res>;
  @override
  $Res call({MainContent generalInfo});

  @override
  $MainContentCopyWith<$Res> get generalInfo;
}

/// @nodoc
class __$MainStateCopyWithImpl<$Res> extends _$MainStateCopyWithImpl<$Res>
    implements _$MainStateCopyWith<$Res> {
  __$MainStateCopyWithImpl(_MainState _value, $Res Function(_MainState) _then)
      : super(_value, (v) => _then(v as _MainState));

  @override
  _MainState get _value => super._value as _MainState;

  @override
  $Res call({
    Object? generalInfo = freezed,
  }) {
    return _then(_MainState(
      generalInfo == freezed
          ? _value.generalInfo
          : generalInfo // ignore: cast_nullable_to_non_nullable
              as MainContent,
    ));
  }
}

/// @nodoc

class _$_MainState implements _MainState {
  const _$_MainState(this.generalInfo);

  @override
  final MainContent generalInfo;

  @override
  String toString() {
    return 'MainState(generalInfo: $generalInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MainState &&
            (identical(other.generalInfo, generalInfo) ||
                const DeepCollectionEquality()
                    .equals(other.generalInfo, generalInfo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(generalInfo);

  @JsonKey(ignore: true)
  @override
  _$MainStateCopyWith<_MainState> get copyWith =>
      __$MainStateCopyWithImpl<_MainState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(MainContent generalInfo) $default, {
    required TResult Function(MainContent generalInfo) initial,
    required TResult Function(MainContent generalInfo) onLoading,
    required TResult Function(MainContent generalInfo) onFailure,
    required TResult Function(MainContent generalInfo) onSuccess,
  }) {
    return $default(generalInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(MainContent generalInfo)? $default, {
    TResult Function(MainContent generalInfo)? initial,
    TResult Function(MainContent generalInfo)? onLoading,
    TResult Function(MainContent generalInfo)? onFailure,
    TResult Function(MainContent generalInfo)? onSuccess,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(generalInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_MainState value) $default, {
    required TResult Function(InitialMainState value) initial,
    required TResult Function(LoadingMainState value) onLoading,
    required TResult Function(FailureState value) onFailure,
    required TResult Function(SuccessState value) onSuccess,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_MainState value)? $default, {
    TResult Function(InitialMainState value)? initial,
    TResult Function(LoadingMainState value)? onLoading,
    TResult Function(FailureState value)? onFailure,
    TResult Function(SuccessState value)? onSuccess,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _MainState implements MainState {
  const factory _MainState(MainContent generalInfo) = _$_MainState;

  @override
  MainContent get generalInfo => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MainStateCopyWith<_MainState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitialMainStateCopyWith<$Res>
    implements $MainStateCopyWith<$Res> {
  factory $InitialMainStateCopyWith(
          InitialMainState value, $Res Function(InitialMainState) then) =
      _$InitialMainStateCopyWithImpl<$Res>;
  @override
  $Res call({MainContent generalInfo});

  @override
  $MainContentCopyWith<$Res> get generalInfo;
}

/// @nodoc
class _$InitialMainStateCopyWithImpl<$Res> extends _$MainStateCopyWithImpl<$Res>
    implements $InitialMainStateCopyWith<$Res> {
  _$InitialMainStateCopyWithImpl(
      InitialMainState _value, $Res Function(InitialMainState) _then)
      : super(_value, (v) => _then(v as InitialMainState));

  @override
  InitialMainState get _value => super._value as InitialMainState;

  @override
  $Res call({
    Object? generalInfo = freezed,
  }) {
    return _then(InitialMainState(
      generalInfo == freezed
          ? _value.generalInfo
          : generalInfo // ignore: cast_nullable_to_non_nullable
              as MainContent,
    ));
  }
}

/// @nodoc

class _$InitialMainState implements InitialMainState {
  const _$InitialMainState(this.generalInfo);

  @override
  final MainContent generalInfo;

  @override
  String toString() {
    return 'MainState.initial(generalInfo: $generalInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InitialMainState &&
            (identical(other.generalInfo, generalInfo) ||
                const DeepCollectionEquality()
                    .equals(other.generalInfo, generalInfo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(generalInfo);

  @JsonKey(ignore: true)
  @override
  $InitialMainStateCopyWith<InitialMainState> get copyWith =>
      _$InitialMainStateCopyWithImpl<InitialMainState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(MainContent generalInfo) $default, {
    required TResult Function(MainContent generalInfo) initial,
    required TResult Function(MainContent generalInfo) onLoading,
    required TResult Function(MainContent generalInfo) onFailure,
    required TResult Function(MainContent generalInfo) onSuccess,
  }) {
    return initial(generalInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(MainContent generalInfo)? $default, {
    TResult Function(MainContent generalInfo)? initial,
    TResult Function(MainContent generalInfo)? onLoading,
    TResult Function(MainContent generalInfo)? onFailure,
    TResult Function(MainContent generalInfo)? onSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(generalInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_MainState value) $default, {
    required TResult Function(InitialMainState value) initial,
    required TResult Function(LoadingMainState value) onLoading,
    required TResult Function(FailureState value) onFailure,
    required TResult Function(SuccessState value) onSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_MainState value)? $default, {
    TResult Function(InitialMainState value)? initial,
    TResult Function(LoadingMainState value)? onLoading,
    TResult Function(FailureState value)? onFailure,
    TResult Function(SuccessState value)? onSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialMainState implements MainState {
  const factory InitialMainState(MainContent generalInfo) = _$InitialMainState;

  @override
  MainContent get generalInfo => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $InitialMainStateCopyWith<InitialMainState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadingMainStateCopyWith<$Res>
    implements $MainStateCopyWith<$Res> {
  factory $LoadingMainStateCopyWith(
          LoadingMainState value, $Res Function(LoadingMainState) then) =
      _$LoadingMainStateCopyWithImpl<$Res>;
  @override
  $Res call({MainContent generalInfo});

  @override
  $MainContentCopyWith<$Res> get generalInfo;
}

/// @nodoc
class _$LoadingMainStateCopyWithImpl<$Res> extends _$MainStateCopyWithImpl<$Res>
    implements $LoadingMainStateCopyWith<$Res> {
  _$LoadingMainStateCopyWithImpl(
      LoadingMainState _value, $Res Function(LoadingMainState) _then)
      : super(_value, (v) => _then(v as LoadingMainState));

  @override
  LoadingMainState get _value => super._value as LoadingMainState;

  @override
  $Res call({
    Object? generalInfo = freezed,
  }) {
    return _then(LoadingMainState(
      generalInfo == freezed
          ? _value.generalInfo
          : generalInfo // ignore: cast_nullable_to_non_nullable
              as MainContent,
    ));
  }
}

/// @nodoc

class _$LoadingMainState implements LoadingMainState {
  const _$LoadingMainState(this.generalInfo);

  @override
  final MainContent generalInfo;

  @override
  String toString() {
    return 'MainState.onLoading(generalInfo: $generalInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadingMainState &&
            (identical(other.generalInfo, generalInfo) ||
                const DeepCollectionEquality()
                    .equals(other.generalInfo, generalInfo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(generalInfo);

  @JsonKey(ignore: true)
  @override
  $LoadingMainStateCopyWith<LoadingMainState> get copyWith =>
      _$LoadingMainStateCopyWithImpl<LoadingMainState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(MainContent generalInfo) $default, {
    required TResult Function(MainContent generalInfo) initial,
    required TResult Function(MainContent generalInfo) onLoading,
    required TResult Function(MainContent generalInfo) onFailure,
    required TResult Function(MainContent generalInfo) onSuccess,
  }) {
    return onLoading(generalInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(MainContent generalInfo)? $default, {
    TResult Function(MainContent generalInfo)? initial,
    TResult Function(MainContent generalInfo)? onLoading,
    TResult Function(MainContent generalInfo)? onFailure,
    TResult Function(MainContent generalInfo)? onSuccess,
    required TResult orElse(),
  }) {
    if (onLoading != null) {
      return onLoading(generalInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_MainState value) $default, {
    required TResult Function(InitialMainState value) initial,
    required TResult Function(LoadingMainState value) onLoading,
    required TResult Function(FailureState value) onFailure,
    required TResult Function(SuccessState value) onSuccess,
  }) {
    return onLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_MainState value)? $default, {
    TResult Function(InitialMainState value)? initial,
    TResult Function(LoadingMainState value)? onLoading,
    TResult Function(FailureState value)? onFailure,
    TResult Function(SuccessState value)? onSuccess,
    required TResult orElse(),
  }) {
    if (onLoading != null) {
      return onLoading(this);
    }
    return orElse();
  }
}

abstract class LoadingMainState implements MainState {
  const factory LoadingMainState(MainContent generalInfo) = _$LoadingMainState;

  @override
  MainContent get generalInfo => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $LoadingMainStateCopyWith<LoadingMainState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureStateCopyWith<$Res> implements $MainStateCopyWith<$Res> {
  factory $FailureStateCopyWith(
          FailureState value, $Res Function(FailureState) then) =
      _$FailureStateCopyWithImpl<$Res>;
  @override
  $Res call({MainContent generalInfo});

  @override
  $MainContentCopyWith<$Res> get generalInfo;
}

/// @nodoc
class _$FailureStateCopyWithImpl<$Res> extends _$MainStateCopyWithImpl<$Res>
    implements $FailureStateCopyWith<$Res> {
  _$FailureStateCopyWithImpl(
      FailureState _value, $Res Function(FailureState) _then)
      : super(_value, (v) => _then(v as FailureState));

  @override
  FailureState get _value => super._value as FailureState;

  @override
  $Res call({
    Object? generalInfo = freezed,
  }) {
    return _then(FailureState(
      generalInfo == freezed
          ? _value.generalInfo
          : generalInfo // ignore: cast_nullable_to_non_nullable
              as MainContent,
    ));
  }
}

/// @nodoc

class _$FailureState implements FailureState {
  const _$FailureState(this.generalInfo);

  @override
  final MainContent generalInfo;

  @override
  String toString() {
    return 'MainState.onFailure(generalInfo: $generalInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FailureState &&
            (identical(other.generalInfo, generalInfo) ||
                const DeepCollectionEquality()
                    .equals(other.generalInfo, generalInfo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(generalInfo);

  @JsonKey(ignore: true)
  @override
  $FailureStateCopyWith<FailureState> get copyWith =>
      _$FailureStateCopyWithImpl<FailureState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(MainContent generalInfo) $default, {
    required TResult Function(MainContent generalInfo) initial,
    required TResult Function(MainContent generalInfo) onLoading,
    required TResult Function(MainContent generalInfo) onFailure,
    required TResult Function(MainContent generalInfo) onSuccess,
  }) {
    return onFailure(generalInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(MainContent generalInfo)? $default, {
    TResult Function(MainContent generalInfo)? initial,
    TResult Function(MainContent generalInfo)? onLoading,
    TResult Function(MainContent generalInfo)? onFailure,
    TResult Function(MainContent generalInfo)? onSuccess,
    required TResult orElse(),
  }) {
    if (onFailure != null) {
      return onFailure(generalInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_MainState value) $default, {
    required TResult Function(InitialMainState value) initial,
    required TResult Function(LoadingMainState value) onLoading,
    required TResult Function(FailureState value) onFailure,
    required TResult Function(SuccessState value) onSuccess,
  }) {
    return onFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_MainState value)? $default, {
    TResult Function(InitialMainState value)? initial,
    TResult Function(LoadingMainState value)? onLoading,
    TResult Function(FailureState value)? onFailure,
    TResult Function(SuccessState value)? onSuccess,
    required TResult orElse(),
  }) {
    if (onFailure != null) {
      return onFailure(this);
    }
    return orElse();
  }
}

abstract class FailureState implements MainState {
  const factory FailureState(MainContent generalInfo) = _$FailureState;

  @override
  MainContent get generalInfo => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $FailureStateCopyWith<FailureState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuccessStateCopyWith<$Res> implements $MainStateCopyWith<$Res> {
  factory $SuccessStateCopyWith(
          SuccessState value, $Res Function(SuccessState) then) =
      _$SuccessStateCopyWithImpl<$Res>;
  @override
  $Res call({MainContent generalInfo});

  @override
  $MainContentCopyWith<$Res> get generalInfo;
}

/// @nodoc
class _$SuccessStateCopyWithImpl<$Res> extends _$MainStateCopyWithImpl<$Res>
    implements $SuccessStateCopyWith<$Res> {
  _$SuccessStateCopyWithImpl(
      SuccessState _value, $Res Function(SuccessState) _then)
      : super(_value, (v) => _then(v as SuccessState));

  @override
  SuccessState get _value => super._value as SuccessState;

  @override
  $Res call({
    Object? generalInfo = freezed,
  }) {
    return _then(SuccessState(
      generalInfo == freezed
          ? _value.generalInfo
          : generalInfo // ignore: cast_nullable_to_non_nullable
              as MainContent,
    ));
  }
}

/// @nodoc

class _$SuccessState implements SuccessState {
  const _$SuccessState(this.generalInfo);

  @override
  final MainContent generalInfo;

  @override
  String toString() {
    return 'MainState.onSuccess(generalInfo: $generalInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SuccessState &&
            (identical(other.generalInfo, generalInfo) ||
                const DeepCollectionEquality()
                    .equals(other.generalInfo, generalInfo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(generalInfo);

  @JsonKey(ignore: true)
  @override
  $SuccessStateCopyWith<SuccessState> get copyWith =>
      _$SuccessStateCopyWithImpl<SuccessState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(MainContent generalInfo) $default, {
    required TResult Function(MainContent generalInfo) initial,
    required TResult Function(MainContent generalInfo) onLoading,
    required TResult Function(MainContent generalInfo) onFailure,
    required TResult Function(MainContent generalInfo) onSuccess,
  }) {
    return onSuccess(generalInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(MainContent generalInfo)? $default, {
    TResult Function(MainContent generalInfo)? initial,
    TResult Function(MainContent generalInfo)? onLoading,
    TResult Function(MainContent generalInfo)? onFailure,
    TResult Function(MainContent generalInfo)? onSuccess,
    required TResult orElse(),
  }) {
    if (onSuccess != null) {
      return onSuccess(generalInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_MainState value) $default, {
    required TResult Function(InitialMainState value) initial,
    required TResult Function(LoadingMainState value) onLoading,
    required TResult Function(FailureState value) onFailure,
    required TResult Function(SuccessState value) onSuccess,
  }) {
    return onSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_MainState value)? $default, {
    TResult Function(InitialMainState value)? initial,
    TResult Function(LoadingMainState value)? onLoading,
    TResult Function(FailureState value)? onFailure,
    TResult Function(SuccessState value)? onSuccess,
    required TResult orElse(),
  }) {
    if (onSuccess != null) {
      return onSuccess(this);
    }
    return orElse();
  }
}

abstract class SuccessState implements MainState {
  const factory SuccessState(MainContent generalInfo) = _$SuccessState;

  @override
  MainContent get generalInfo => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $SuccessStateCopyWith<SuccessState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$MainEventTearOff {
  const _$MainEventTearOff();

  _OnLoadTasks onLoadTasks() {
    return const _OnLoadTasks();
  }
}

/// @nodoc
const $MainEvent = _$MainEventTearOff();

/// @nodoc
mixin _$MainEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoadTasks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoadTasks,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnLoadTasks value) onLoadTasks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnLoadTasks value)? onLoadTasks,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainEventCopyWith<$Res> {
  factory $MainEventCopyWith(MainEvent value, $Res Function(MainEvent) then) =
      _$MainEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MainEventCopyWithImpl<$Res> implements $MainEventCopyWith<$Res> {
  _$MainEventCopyWithImpl(this._value, this._then);

  final MainEvent _value;
  // ignore: unused_field
  final $Res Function(MainEvent) _then;
}

/// @nodoc
abstract class _$OnLoadTasksCopyWith<$Res> {
  factory _$OnLoadTasksCopyWith(
          _OnLoadTasks value, $Res Function(_OnLoadTasks) then) =
      __$OnLoadTasksCopyWithImpl<$Res>;
}

/// @nodoc
class __$OnLoadTasksCopyWithImpl<$Res> extends _$MainEventCopyWithImpl<$Res>
    implements _$OnLoadTasksCopyWith<$Res> {
  __$OnLoadTasksCopyWithImpl(
      _OnLoadTasks _value, $Res Function(_OnLoadTasks) _then)
      : super(_value, (v) => _then(v as _OnLoadTasks));

  @override
  _OnLoadTasks get _value => super._value as _OnLoadTasks;
}

/// @nodoc

class _$_OnLoadTasks implements _OnLoadTasks {
  const _$_OnLoadTasks();

  @override
  String toString() {
    return 'MainEvent.onLoadTasks()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _OnLoadTasks);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoadTasks,
  }) {
    return onLoadTasks();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoadTasks,
    required TResult orElse(),
  }) {
    if (onLoadTasks != null) {
      return onLoadTasks();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnLoadTasks value) onLoadTasks,
  }) {
    return onLoadTasks(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnLoadTasks value)? onLoadTasks,
    required TResult orElse(),
  }) {
    if (onLoadTasks != null) {
      return onLoadTasks(this);
    }
    return orElse();
  }
}

abstract class _OnLoadTasks implements MainEvent {
  const factory _OnLoadTasks() = _$_OnLoadTasks;
}
