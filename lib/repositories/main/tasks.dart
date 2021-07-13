import 'package:either_option/either_option.dart';
import 'package:kanban/core/entities/task/task.dart';
import 'package:kanban/core/error/exceptions.dart';
import 'package:kanban/core/error/failures.dart';
import 'package:kanban/repositories/data/service_locator.dart';

class TasksRepository {
  TasksRepository(this._dioSettings);

  final DioSettings _dioSettings;

  Future<Either<Failure, List<TaskEntity>>> getTaks(int row) async {
    final response = await _dioSettings.dio.get<dynamic>('/cards/$row');
    if (response.statusCode == 200 || response.statusCode == 201) {
      final tasks = (response.data as List<Map<String, dynamic>>)
          .map((e) => TaskEntity.fromJson(e))
          .toList();
      return Right(tasks);
    } else if (response.statusCode! >= 400 && response.statusCode! < 500) {
      throw RequestErrorException(
          response.data['non_field_errors'][0].toString(),
          response.statusCode ?? 400);
    } else {
      throw ServerErrorException(
          response.data['non_field_errors'][0].toString(),
          response.statusCode ?? 400);
    }
  }
}
