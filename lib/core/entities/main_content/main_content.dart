import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kanban/core/entities/task/task.dart';

part 'main_content.freezed.dart';
part 'main_content.g.dart';

@freezed
abstract class MainContent with _$MainContent {
  const factory MainContent({
    required int row,
    @Default('') String err,
    @Default(<TaskEntity>[]) List<TaskEntity> tasks,
  }) = _MainContent;

  factory MainContent.fromJson(Map<String, dynamic> json) =>
      _$MainContentFromJson(json);
}
