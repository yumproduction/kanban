import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kanban/core/entities/task/task.dart';
import 'package:kanban/repositories/main/tasks.dart';

part 'main_bloc.freezed.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc(TasksRepository catalogRepository, int row)
      : _tasksRepository = catalogRepository,
      _row = row,
        super(MainState.initial();
  final TasksRepository _tasksRepository;
  final int _row;

  @override
  Stream<MainState> mapEventToState(MainEvent event) => event.when(
        onLoadTaks: () =>
            _onLoadTaks(]),
      );

  Stream<MainState> _onLoadTasks(
    MainState state) async* {
    

    final taks = List<TaskEntity>.empty(growable: true);
    final dealersResponse = await _tasksRepository.getDealers(
      page: page,
    );

    if (dealersResponse.statusCode == 200) {
      logs.addAll(dealersResponse.data.results as List<Dealer>);

      yield MainState.onSuccess(
        state.generalInfo.copyWith(
          dealerLogs: state.generalInfo.dealerLogs.copyWith(
            results: logs,
            current: page,
            next: (dealersResponse.data as DealerLogs).next,
            loading: false,
          ),
        ),
      );
    } else {
      yield MainState.onFailure(state.generalInfo);
    }
  }

  Stream<MainState> _onSearchDealer(
    MainState state,
    String search,
  ) async* {
    yield MainState.onLoading(state.generalInfo);

    if (search.isEmpty) {
      yield MainState.onSuccess(state.generalInfo.copyWith(
        searchDealerLogs: const DealerLogs(),
      ));
    } else {
      final dealerLogsResponse =
          await _tasksRepository.getDealers(limit: '', search: search);

      if (dealerLogsResponse.statusCode == 200) {
        yield MainState.onSuccess(
          state.generalInfo.copyWith(
            searchDealerLogs: dealerLogsResponse.data as DealerLogs,
          ),
        );
      } else {
        yield MainState.onFailure(state.generalInfo);
      }
    }
  }
}

@freezed
abstract class MainState with _$DealersState {
  const factory MainState(DealersBlocInfo generalInfo) = _DealersState;
  const factory MainState.initial(DealersBlocInfo generalInfo) =
      InitialDealersState;
  const factory MainState.onLoading(DealersBlocInfo generalInfo) =
      LoadingDealersState;
  const factory MainState.onFailure(DealersBlocInfo generalInfo) =
      FailureState;
  const factory MainState.onSuccess(DealersBlocInfo generalInfo) =
      SuccessState;
}

@freezed
abstract class MainEvent with _$DealersEvent {
  const factory MainEvent.onLoadDealers({
    @Default(1) int page,
    @Default(false) bool whenFirst,
  }) = _OnLoadDealers;
  const factory MainEvent.onSearchDealer({
    @Default('') String search,
  }) = _OnSearchDealers;
}
