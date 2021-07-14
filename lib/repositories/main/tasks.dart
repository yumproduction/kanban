import 'package:either_option/either_option.dart';
import 'package:kanban/core/entities/task/task.dart';
import 'package:kanban/core/error/exceptions.dart';
import 'package:kanban/core/error/failures.dart';
import 'package:kanban/repositories/data/service_locator.dart';

class TasksRepository {
  TasksRepository(this._dioSettings);

  final DioSettings _dioSettings;

  Future<Either<Failure, List<TaskEntity>>> getTaks() async {
    final response = await _dioSettings.dio.get<dynamic>('/cards/');
    if (response.statusCode == 200 || response.statusCode == 201) {
      final tasks = (response.data as List)
          .map((e) => TaskEntity.fromJson(e as Map<String, dynamic>))
          .toList();
      return Right(tasks);
    } else if (response.statusCode! >= 400 && response.statusCode! < 500) {
      throw RequestErrorException(
          response.data['detail'].toString(), response.statusCode ?? 400);
    } else {
      throw ServerErrorException(
          response.data['detail'].toString(), response.statusCode ?? 400);
    }
  }
}
