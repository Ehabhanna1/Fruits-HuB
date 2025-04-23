import 'package:dartz/dartz.dart';
import 'package:fruits_hub_app/core/errors/failuer.dart';
import 'package:fruits_hub_app/features/auth/domain/entities/user_entity.dart';

abstract class AuthRepo {

  Future<Either<Failuer, UserEntity>> createUserWithEmailAndPassword(String email, String password);
  


}