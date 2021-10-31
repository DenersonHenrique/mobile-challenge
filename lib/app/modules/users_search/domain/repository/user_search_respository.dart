import 'package:dartz/dartz.dart';
import 'package:mobile_challenge/app/core/erros/failures.dart';
import 'package:mobile_challenge/app/modules/users_search/domain/entity/user_entity.dart';

abstract class IUserSearchRepository {
  Future<Either<Failure, List<UserEntity>>> userSearch(String searchTerm);
}