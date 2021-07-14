// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MainContent _$_$_MainContentFromJson(Map<String, dynamic> json) {
  return _$_MainContent(
    err: json['err'] as String? ?? '',
    onHoldTasks: (json['onHoldTasks'] as List<dynamic>?)
            ?.map((e) => TaskEntity.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    inProgressTasks: (json['inProgressTasks'] as List<dynamic>?)
            ?.map((e) => TaskEntity.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    needsReviewTasks: (json['needsReviewTasks'] as List<dynamic>?)
            ?.map((e) => TaskEntity.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    approvedTasks: (json['approvedTasks'] as List<dynamic>?)
            ?.map((e) => TaskEntity.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$_$_MainContentToJson(_$_MainContent instance) =>
    <String, dynamic>{
      'err': instance.err,
      'onHoldTasks': instance.onHoldTasks,
      'inProgressTasks': instance.inProgressTasks,
      'needsReviewTasks': instance.needsReviewTasks,
      'approvedTasks': instance.approvedTasks,
    };
