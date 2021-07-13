import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kanban/core/entities/main_content/main_content.dart';
import 'package:kanban/core/entities/task/task.dart';
import 'package:kanban/repositories/main/tasks.dart';

part 'main_bloc.freezed.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc(TasksRepository catalogRepository, int row)
      : _tasksRepository = catalogRepository,
        super(
          MainState.initial(
            MainContent(row: row),
          ),
        );
  final TasksRepository _tasksRepository;

  @override
  Stream<MainState> mapEventToState(MainEvent event) => event.when(
        onLoadTasks: () => _onLoadTasks(state),
      );

  Stream<MainState> _onLoadTasks(MainState state) async* {
    final taks = List<TaskEntity>.empty(growable: true);
    final result = await _tasksRepository.getTaks(state.generalInfo.row);

    yield result.fold(
      (err) => MainState.onFailure(
          state.generalInfo.copyWith(err: err.errorMessage)),
      (value) => MainState.onSuccess(state.generalInfo.copyWith(tasks: value)),
    );
  }
}

@freezed
abstract class MainState with _$MainState {
  const factory MainState(MainContent generalInfo) = _MainState;
  const factory MainState.initial(MainContent generalInfo) = InitialMainState;
  const factory MainState.onLoading(MainContent generalInfo) = LoadingMainState;
  const factory MainState.onFailure(MainContent generalInfo) = FailureState;
  const factory MainState.onSuccess(MainContent generalInfo) = SuccessState;
}

@freezed
abstract class MainEvent with _$MainEvent {
  const factory MainEvent.onLoadTasks() = _OnLoadTasks;
}
