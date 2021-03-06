// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'main_content.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MainContent _$MainContentFromJson(Map<String, dynamic> json) {
  return _MainContent.fromJson(json);
}

/// @nodoc
class _$MainContentTearOff {
  const _$MainContentTearOff();

  _MainContent call(
      {String err = '',
      List<TaskEntity> onHoldTasks = const <TaskEntity>[],
      List<TaskEntity> inProgressTasks = const <TaskEntity>[],
      List<TaskEntity> needsReviewTasks = const <TaskEntity>[],
      List<TaskEntity> approvedTasks = const <TaskEntity>[]}) {
    return _MainContent(
      err: err,
      onHoldTasks: onHoldTasks,
      inProgressTasks: inProgressTasks,
      needsReviewTasks: needsReviewTasks,
      approvedTasks: approvedTasks,
    );
  }

  MainContent fromJson(Map<String, Object> json) {
    return MainContent.fromJson(json);
  }
}

/// @nodoc
const $MainContent = _$MainContentTearOff();

/// @nodoc
mixin _$MainContent {
  String get err => throw _privateConstructorUsedError;
  List<TaskEntity> get onHoldTasks => throw _privateConstructorUsedError;
  List<TaskEntity> get inProgressTasks => throw _privateConstructorUsedError;
  List<TaskEntity> get needsReviewTasks => throw _privateConstructorUsedError;
  List<TaskEntity> get approvedTasks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MainContentCopyWith<MainContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainContentCopyWith<$Res> {
  factory $MainContentCopyWith(
          MainContent value, $Res Function(MainContent) then) =
      _$MainContentCopyWithImpl<$Res>;
  $Res call(
      {String err,
      List<TaskEntity> onHoldTasks,
      List<TaskEntity> inProgressTasks,
      List<TaskEntity> needsReviewTasks,
      List<TaskEntity> approvedTasks});
}

/// @nodoc
class _$MainContentCopyWithImpl<$Res> implements $MainContentCopyWith<$Res> {
  _$MainContentCopyWithImpl(this._value, this._then);

  final MainContent _value;
  // ignore: unused_field
  final $Res Function(MainContent) _then;

  @override
  $Res call({
    Object? err = freezed,
    Object? onHoldTasks = freezed,
    Object? inProgressTasks = freezed,
    Object? needsReviewTasks = freezed,
    Object? approvedTasks = freezed,
  }) {
    return _then(_value.copyWith(
      err: err == freezed
          ? _value.err
          : err // ignore: cast_nullable_to_non_nullable
              as String,
      onHoldTasks: onHoldTasks == freezed
          ? _value.onHoldTasks
          : onHoldTasks // ignore: cast_nullable_to_non_nullable
              as List<TaskEntity>,
      inProgressTasks: inProgressTasks == freezed
          ? _value.inProgressTasks
          : inProgressTasks // ignore: cast_nullable_to_non_nullable
              as List<TaskEntity>,
      needsReviewTasks: needsReviewTasks == freezed
          ? _value.needsReviewTasks
          : needsReviewTasks // ignore: cast_nullable_to_non_nullable
              as List<TaskEntity>,
      approvedTasks: approvedTasks == freezed
          ? _value.approvedTasks
          : approvedTasks // ignore: cast_nullable_to_non_nullable
              as List<TaskEntity>,
    ));
  }
}

/// @nodoc
abstract class _$MainContentCopyWith<$Res>
    implements $MainContentCopyWith<$Res> {
  factory _$MainContentCopyWith(
          _MainContent value, $Res Function(_MainContent) then) =
      __$MainContentCopyWithImpl<$Res>;
  @override
  $Res call(
      {String err,
      List<TaskEntity> onHoldTasks,
      List<TaskEntity> inProgressTasks,
      List<TaskEntity> needsReviewTasks,
      List<TaskEntity> approvedTasks});
}

/// @nodoc
class __$MainContentCopyWithImpl<$Res> extends _$MainContentCopyWithImpl<$Res>
    implements _$MainContentCopyWith<$Res> {
  __$MainContentCopyWithImpl(
      _MainContent _value, $Res Function(_MainContent) _then)
      : super(_value, (v) => _then(v as _MainContent));

  @override
  _MainContent get _value => super._value as _MainContent;

  @override
  $Res call({
    Object? err = freezed,
    Object? onHoldTasks = freezed,
    Object? inProgressTasks = freezed,
    Object? needsReviewTasks = freezed,
    Object? approvedTasks = freezed,
  }) {
    return _then(_MainContent(
      err: err == freezed
          ? _value.err
          : err // ignore: cast_nullable_to_non_nullable
              as String,
      onHoldTasks: onHoldTasks == freezed
          ? _value.onHoldTasks
          : onHoldTasks // ignore: cast_nullable_to_non_nullable
              as List<TaskEntity>,
      inProgressTasks: inProgressTasks == freezed
          ? _value.inProgressTasks
          : inProgressTasks // ignore: cast_nullable_to_non_nullable
              as List<TaskEntity>,
      needsReviewTasks: needsReviewTasks == freezed
          ? _value.needsReviewTasks
          : needsReviewTasks // ignore: cast_nullable_to_non_nullable
              as List<TaskEntity>,
      approvedTasks: approvedTasks == freezed
          ? _value.approvedTasks
          : approvedTasks // ignore: cast_nullable_to_non_nullable
              as List<TaskEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MainContent implements _MainContent {
  const _$_MainContent(
      {this.err = '',
      this.onHoldTasks = const <TaskEntity>[],
      this.inProgressTasks = const <TaskEntity>[],
      this.needsReviewTasks = const <TaskEntity>[],
      this.approvedTasks = const <TaskEntity>[]});

  factory _$_MainContent.fromJson(Map<String, dynamic> json) =>
      _$_$_MainContentFromJson(json);

  @JsonKey(defaultValue: '')
  @override
  final String err;
  @JsonKey(defaultValue: const <TaskEntity>[])
  @override
  final List<TaskEntity> onHoldTasks;
  @JsonKey(defaultValue: const <TaskEntity>[])
  @override
  final List<TaskEntity> inProgressTasks;
  @JsonKey(defaultValue: const <TaskEntity>[])
  @override
  final List<TaskEntity> needsReviewTasks;
  @JsonKey(defaultValue: const <TaskEntity>[])
  @override
  final List<TaskEntity> approvedTasks;

  @override
  String toString() {
    return 'MainContent(err: $err, onHoldTasks: $onHoldTasks, inProgressTasks: $inProgressTasks, needsReviewTasks: $needsReviewTasks, approvedTasks: $approvedTasks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MainContent &&
            (identical(other.err, err) ||
                const DeepCollectionEquality().equals(other.err, err)) &&
            (identical(other.onHoldTasks, onHoldTasks) ||
                const DeepCollectionEquality()
                    .equals(other.onHoldTasks, onHoldTasks)) &&
            (identical(other.inProgressTasks, inProgressTasks) ||
                const DeepCollectionEquality()
                    .equals(other.inProgressTasks, inProgressTasks)) &&
            (identical(other.needsReviewTasks, needsReviewTasks) ||
                const DeepCollectionEquality()
                    .equals(other.needsReviewTasks, needsReviewTasks)) &&
            (identical(other.approvedTasks, approvedTasks) ||
                const DeepCollectionEquality()
                    .equals(other.approvedTasks, approvedTasks)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(err) ^
      const DeepCollectionEquality().hash(onHoldTasks) ^
      const DeepCollectionEquality().hash(inProgressTasks) ^
      const DeepCollectionEquality().hash(needsReviewTasks) ^
      const DeepCollectionEquality().hash(approvedTasks);

  @JsonKey(ignore: true)
  @override
  _$MainContentCopyWith<_MainContent> get copyWith =>
      __$MainContentCopyWithImpl<_MainContent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MainContentToJson(this);
  }
}

abstract class _MainContent implements MainContent {
  const factory _MainContent(
      {String err,
      List<TaskEntity> onHoldTasks,
      List<TaskEntity> inProgressTasks,
      List<TaskEntity> needsReviewTasks,
      List<TaskEntity> approvedTasks}) = _$_MainContent;

  factory _MainContent.fromJson(Map<String, dynamic> json) =
      _$_MainContent.fromJson;

  @override
  String get err => throw _privateConstructorUsedError;
  @override
  List<TaskEntity> get onHoldTasks => throw _privateConstructorUsedError;
  @override
  List<TaskEntity> get inProgressTasks => throw _privateConstructorUsedError;
  @override
  List<TaskEntity> get needsReviewTasks => throw _privateConstructorUsedError;
  @override
  List<TaskEntity> get approvedTasks => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MainContentCopyWith<_MainContent> get copyWith =>
      throw _privateConstructorUsedError;
}
