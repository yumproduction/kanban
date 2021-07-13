// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TaskEntity _$_$_TaskEntityFromJson(Map<String, dynamic> json) {
  return _$_TaskEntity(
    id: json['id'] as int,
    row: json['row'] as String? ?? '0',
    seqNum: json['seq_num'] as int? ?? 0,
    text: json['text'] as String? ?? '',
  );
}

Map<String, dynamic> _$_$_TaskEntityToJson(_$_TaskEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'row': instance.row,
      'seq_num': instance.seqNum,
      'text': instance.text,
    };
