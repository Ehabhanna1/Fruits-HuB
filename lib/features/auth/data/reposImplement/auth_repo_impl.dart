import 'package:dartz/dartz.dart';
import 'package:fruits_hub_app/core/errors/failuer.dart';
import 'package:fruits_hub_app/features/auth/domain/entities/user_entity.dart';
import 'package:fruits_hub_app/features/auth/domain/repos/auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  @override
  Future<Either<Failuer, UserEntity>> createUserWithEmailAndPassword(String email, String password) {
    // TODO: implement createUserWithEmailAndPassword
    throw UnimplementedError();
  }

}