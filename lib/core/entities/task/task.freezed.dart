// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TaskEntity _$TaskEntityFromJson(Map<String, dynamic> json) {
  return _TaskEntity.fromJson(json);
}

/// @nodoc
class _$TaskEntityTearOff {
  const _$TaskEntityTearOff();

  _TaskEntity call(
      {required int id,
      String row = '0',
      @JsonKey(name: 'seq_num', defaultValue: 0) int seqNum = 0,
      String text = ''}) {
    return _TaskEntity(
      id: id,
      row: row,
      seqNum: seqNum,
      text: text,
    );
  }

  TaskEntity fromJson(Map<String, Object> json) {
    return TaskEntity.fromJson(json);
  }
}

/// @nodoc
const $TaskEntity = _$TaskEntityTearOff();

/// @nodoc
mixin _$TaskEntity {
  int get id => throw _privateConstructorUsedError;
  String get row => throw _privateConstructorUsedError;
  @JsonKey(name: 'seq_num', defaultValue: 0)
  int get seqNum => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskEntityCopyWith<TaskEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskEntityCopyWith<$Res> {
  factory $TaskEntityCopyWith(
          TaskEntity value, $Res Function(TaskEntity) then) =
      _$TaskEntityCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String row,
      @JsonKey(name: 'seq_num', defaultValue: 0) int seqNum,
      String text});
}

/// @nodoc
class _$TaskEntityCopyWithImpl<$Res> implements $TaskEntityCopyWith<$Res> {
  _$TaskEntityCopyWithImpl(this._value, this._then);

  final TaskEntity _value;
  // ignore: unused_field
  final $Res Function(TaskEntity) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? row = freezed,
    Object? seqNum = freezed,
    Object? text = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      row: row == freezed
          ? _value.row
          : row // ignore: cast_nullable_to_non_nullable
              as String,
      seqNum: seqNum == freezed
          ? _value.seqNum
          : seqNum // ignore: cast_nullable_to_non_nullable
              as int,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$TaskEntityCopyWith<$Res> implements $TaskEntityCopyWith<$Res> {
  factory _$TaskEntityCopyWith(
          _TaskEntity value, $Res Function(_TaskEntity) then) =
      __$TaskEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String row,
      @JsonKey(name: 'seq_num', defaultValue: 0) int seqNum,
      String text});
}

/// @nodoc
class __$TaskEntityCopyWithImpl<$Res> extends _$TaskEntityCopyWithImpl<$Res>
    implements _$TaskEntityCopyWith<$Res> {
  __$TaskEntityCopyWithImpl(
      _TaskEntity _value, $Res Function(_TaskEntity) _then)
      : super(_value, (v) => _then(v as _TaskEntity));

  @override
  _TaskEntity get _value => super._value as _TaskEntity;

  @override
  $Res call({
    Object? id = freezed,
    Object? row = freezed,
    Object? seqNum = freezed,
    Object? text = freezed,
  }) {
    return _then(_TaskEntity(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      row: row == freezed
          ? _value.row
          : row // ignore: cast_nullable_to_non_nullable
              as String,
      seqNum: seqNum == freezed
          ? _value.seqNum
          : seqNum // ignore: cast_nullable_to_non_nullable
              as int,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TaskEntity implements _TaskEntity {
  const _$_TaskEntity(
      {required this.id,
      this.row = '0',
      @JsonKey(name: 'seq_num', defaultValue: 0) this.seqNum = 0,
      this.text = ''});

  factory _$_TaskEntity.fromJson(Map<String, dynamic> json) =>
      _$_$_TaskEntityFromJson(json);

  @override
  final int id;
  @JsonKey(defaultValue: '0')
  @override
  final String row;
  @override
  @JsonKey(name: 'seq_num', defaultValue: 0)
  final int seqNum;
  @JsonKey(defaultValue: '')
  @override
  final String text;

  @override
  String toString() {
    return 'TaskEntity(id: $id, row: $row, seqNum: $seqNum, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TaskEntity &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.row, row) ||
                const DeepCollectionEquality().equals(other.row, row)) &&
            (identical(other.seqNum, seqNum) ||
                const DeepCollectionEquality().equals(other.seqNum, seqNum)) &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(row) ^
      const DeepCollectionEquality().hash(seqNum) ^
      const DeepCollectionEquality().hash(text);

  @JsonKey(ignore: true)
  @override
  _$TaskEntityCopyWith<_TaskEntity> get copyWith =>
      __$TaskEntityCopyWithImpl<_TaskEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TaskEntityToJson(this);
  }
}

abstract class _TaskEntity implements TaskEntity {
  const factory _TaskEntity(
      {required int id,
      String row,
      @JsonKey(name: 'seq_num', defaultValue: 0) int seqNum,
      String text}) = _$_TaskEntity;

  factory _TaskEntity.fromJson(Map<String, dynamic> json) =
      _$_TaskEntity.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get row => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'seq_num', defaultValue: 0)
  int get seqNum => throw _privateConstructorUsedError;
  @override
  String get text => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TaskEntityCopyWith<_TaskEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
