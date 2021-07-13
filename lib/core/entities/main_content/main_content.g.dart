// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MainContent _$_$_MainContentFromJson(Map<String, dynamic> json) {
  return _$_MainContent(
    row: json['row'] as int,
    err: json['err'] as String? ?? '',
    tasks: (json['tasks'] as List<dynamic>?)
            ?.map((e) => TaskEntity.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$_$_MainContentToJson(_$_MainContent instance) =>
    <String, dynamic>{
      'row': instance.row,
      'err': instance.err,
      'tasks': instance.tasks,
    };
