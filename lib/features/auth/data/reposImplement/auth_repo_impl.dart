import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:fruits_hub_app/core/errors/exceptions.dart';
import 'package:fruits_hub_app/core/errors/failuer.dart';
import 'package:fruits_hub_app/core/services/database_service.dart';
import 'package:fruits_hub_app/core/services/firebase_auth_service.dart';
import 'package:fruits_hub_app/core/utils/backend_endpoint.dart';
import 'package:fruits_hub_app/features/auth/data/models/user_model.dart';
import 'package:fruits_hub_app/features/auth/domain/entities/user_entity.dart';
import 'package:fruits_hub_app/features/auth/domain/repos/auth_repo.dart';

class AuthRepoImpl extends AuthRepo {

   final FirebaseAuthService firebaseAuthService;
   final DataBaseService dataBaseService;
  AuthRepoImpl( {required this.firebaseAuthService, required this.dataBaseService});
  @override
  Future<Either<Failuer, UserEntity>> createUserWithEmailAndPassword(String email, String password, String name) async {
    try {
  var user = await firebaseAuthService.createUserWithEmailAndPassword(email: email, password: password);
  var userEntity = UserModel.fromFirebaseUser(user);
  await addUserData(user: userEntity);
  
  return Right(userEntity);
} on CustomException catch (e) {
  return left(ServerFailuer(e.message));
} catch (e) {
  log("Exception in AuthRepoImpl.createUserWithEmailAndPassword: ${e.toString()}");
  return left(ServerFailuer("لقد حدث خطأ  أثناء إنشاء الحساب"));
}
 
}

  @override
  Future<Either<Failuer, UserEntity>> signInWithEmailAndPassword(String email, String password) async {
    try {
      var user = await firebaseAuthService.signInWithEmailAndPassword(email: email, password: password);
      return Right(UserModel.fromFirebaseUser(user));
    } on CustomException catch (e) {
      return left(ServerFailuer(e.message));
    } catch (e) {
      log("Exception in AuthRepoImpl.signInWithEmailAndPassword: ${e.toString()}");
      return left(ServerFailuer("لقد حدث خطأ أثناء تسجيل الدخول"));
    }
  }
  
  @override
  Future<Either<Failuer, UserEntity>> signInWithGoogle() async {
    try {
      var user = await firebaseAuthService.signInWithGoogle();
      return Right(UserModel.fromFirebaseUser(user));
    } catch (e) {
      log("Exception in AuthRepoImpl.signInWithGoogle: ${e.toString()}");
      return left(ServerFailuer("لقد حدث خطأ أثناء تسجيل الدخول"));
    }
  }
  
  @override
  Future<Either<Failuer, UserEntity>> signInWithFacebook() async {
    try {
      var user = await firebaseAuthService.signInWithFacebook();
      return Right(UserModel.fromFirebaseUser(user));
    } catch (e) {
      log("Exception in AuthRepoImpl.signInWithFacebook: ${e.toString()}");
      return left(ServerFailuer("لقد حدث خطأ أثناء تسجيل الدخول"));
    }
  }
  
  @override
  Future addUserData({required UserEntity user}) async {

    await dataBaseService.addData(path: BackendEndpoint.addUserData, data: user.toMap());
    
  }
  
}