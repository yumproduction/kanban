import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kanban/core/entities/main_content/main_content.dart';
import 'package:kanban/repositories/main/tasks.dart';

part 'main_bloc.freezed.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc(TasksRepository catalogRepository)
      : _tasksRepository = catalogRepository,
        super(
          const MainState.initial(
            MainContent(),
          ),
        );
  final TasksRepository _tasksRepository;

  @override
  Stream<MainState> mapEventToState(MainEvent event) => event.when(
        onLoadTasks: () => _onLoadTasks(state),
      );

  Stream<MainState> _onLoadTasks(MainState state) async* {
    final result = await _tasksRepository.getTaks();

    yield result.fold(
      (err) => MainState.onFailure(
          state.generalInfo.copyWith(err: err.errorMessage)),
      (value) => MainState.onSuccess(
        state.generalInfo.copyWith(
          onHoldTasks:
              value.where((element) => int.parse(element.row) == 0).toList(),
          inProgressTasks:
              value.where((element) => int.parse(element.row) == 1).toList(),
          needsReviewTasks:
              value.where((element) => int.parse(element.row) == 2).toList(),
          approvedTasks:
              value.where((element) => int.parse(element.row) == 3).toList(),
        ),
      ),
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
