import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kanban/core/entities/task/task.dart';

part 'main_content.freezed.dart';
part 'main_content.g.dart';

@freezed
abstract class MainContent with _$MainContent {
  const factory MainContent({
    @Default('') String err,
    @Default(<TaskEntity>[]) List<TaskEntity> onHoldTasks,
    @Default(<TaskEntity>[]) List<TaskEntity> inProgressTasks,
    @Default(<TaskEntity>[]) List<TaskEntity> needsReviewTasks,
    @Default(<TaskEntity>[]) List<TaskEntity> approvedTasks,
  }) = _MainContent;

  factory MainContent.fromJson(Map<String, dynamic> json) =>
      _$MainContentFromJson(json);
}
