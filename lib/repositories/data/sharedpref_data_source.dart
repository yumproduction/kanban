import 'package:either_option/either_option.dart';
import 'package:kanban/core/error/failures.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class DbDataSource {
  Future<Either<Failure, String>> read(String key);
  Future<bool> write(String key, String value);
  Future<bool> delete(String key);
}

class DbDataSourceImpl implements DbDataSource {
  final SharedPreferences _preferences;

  DbDataSourceImpl(this._preferences);

  @override
  Future<bool> write(String key, String value) async =>
      await _preferences.setString(key, value);

  @override
  Future<bool> delete(String key) async => await _preferences.remove(key);

  @override
  Future<Either<Failure, String>> read(String key) async {
    final data = _preferences.getString(key);
    if (data != null && data.isNotEmpty) {
      return Right(data);
    } else {
      return Left(const LoadDataFailure('', 0));
    }
  }
}
