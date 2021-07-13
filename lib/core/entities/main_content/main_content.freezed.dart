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
      {required int row,
      String err = '',
      List<TaskEntity> tasks = const <TaskEntity>[]}) {
    return _MainContent(
      row: row,
      err: err,
      tasks: tasks,
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
  int get row => throw _privateConstructorUsedError;
  String get err => throw _privateConstructorUsedError;
  List<TaskEntity> get tasks => throw _privateConstructorUsedError;

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
  $Res call({int row, String err, List<TaskEntity> tasks});
}

/// @nodoc
class _$MainContentCopyWithImpl<$Res> implements $MainContentCopyWith<$Res> {
  _$MainContentCopyWithImpl(this._value, this._then);

  final MainContent _value;
  // ignore: unused_field
  final $Res Function(MainContent) _then;

  @override
  $Res call({
    Object? row = freezed,
    Object? err = freezed,
    Object? tasks = freezed,
  }) {
    return _then(_value.copyWith(
      row: row == freezed
          ? _value.row
          : row // ignore: cast_nullable_to_non_nullable
              as int,
      err: err == freezed
          ? _value.err
          : err // ignore: cast_nullable_to_non_nullable
              as String,
      tasks: tasks == freezed
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
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
  $Res call({int row, String err, List<TaskEntity> tasks});
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
    Object? row = freezed,
    Object? err = freezed,
    Object? tasks = freezed,
  }) {
    return _then(_MainContent(
      row: row == freezed
          ? _value.row
          : row // ignore: cast_nullable_to_non_nullable
              as int,
      err: err == freezed
          ? _value.err
          : err // ignore: cast_nullable_to_non_nullable
              as String,
      tasks: tasks == freezed
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TaskEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MainContent implements _MainContent {
  const _$_MainContent(
      {required this.row, this.err = '', this.tasks = const <TaskEntity>[]});

  factory _$_MainContent.fromJson(Map<String, dynamic> json) =>
      _$_$_MainContentFromJson(json);

  @override
  final int row;
  @JsonKey(defaultValue: '')
  @override
  final String err;
  @JsonKey(defaultValue: const <TaskEntity>[])
  @override
  final List<TaskEntity> tasks;

  @override
  String toString() {
    return 'MainContent(row: $row, err: $err, tasks: $tasks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MainContent &&
            (identical(other.row, row) ||
                const DeepCollectionEquality().equals(other.row, row)) &&
            (identical(other.err, err) ||
                const DeepCollectionEquality().equals(other.err, err)) &&
            (identical(other.tasks, tasks) ||
                const DeepCollectionEquality().equals(other.tasks, tasks)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(row) ^
      const DeepCollectionEquality().hash(err) ^
      const DeepCollectionEquality().hash(tasks);

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
      {required int row, String err, List<TaskEntity> tasks}) = _$_MainContent;

  factory _MainContent.fromJson(Map<String, dynamic> json) =
      _$_MainContent.fromJson;

  @override
  int get row => throw _privateConstructorUsedError;
  @override
  String get err => throw _privateConstructorUsedError;
  @override
  List<TaskEntity> get tasks => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MainContentCopyWith<_MainContent> get copyWith =>
      throw _privateConstructorUsedError;
}
