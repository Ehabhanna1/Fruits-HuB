import 'package:dartz/dartz.dart';
import 'package:fruits_hub_app/core/errors/failuer.dart';
import 'package:fruits_hub_app/features/auth/domain/entities/user_entity.dart';

abstract class AuthRepo {
  Future<Either<Failuer, UserEntity>> createUserWithEmailAndPassword(
    String email,
    String password,
    String name,
  );
  Future<Either<Failuer, UserEntity>> signInWithEmailAndPassword(
    String email,
    String password,
  );
  Future<Either<Failuer, UserEntity>> signInWithGoogle();
  Future<Either<Failuer, UserEntity>> signInWithFacebook();
  Future addUserData({required UserEntity user});

  Future saveUserData({required UserEntity user});
  Future< UserEntity> getUserData({required String uId});
}
