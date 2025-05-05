import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruits_hub_app/constants.dart';
import 'package:fruits_hub_app/core/errors/exceptions.dart';
import 'package:fruits_hub_app/core/errors/failuer.dart';
import 'package:fruits_hub_app/core/services/database_service.dart';
import 'package:fruits_hub_app/core/services/firebase_auth_service.dart';
import 'package:fruits_hub_app/core/services/shared_preference_singleton.dart';
import 'package:fruits_hub_app/core/utils/backend_endpoint.dart';
import 'package:fruits_hub_app/features/auth/data/models/user_model.dart';
import 'package:fruits_hub_app/features/auth/domain/entities/user_entity.dart';
import 'package:fruits_hub_app/features/auth/domain/repos/auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  final FirebaseAuthService firebaseAuthService;
  final DataBaseService dataBaseService;
  AuthRepoImpl({
    required this.firebaseAuthService,
    required this.dataBaseService,
  });
  @override
  Future<Either<Failuer, UserEntity>> createUserWithEmailAndPassword(
    String email,
    String password,
    String name,
  ) async {
    User? user;
    try {
      user = await firebaseAuthService.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      var userEntity = UserEntity(name: name, email: email, uId: user.uid);
      await addUserData(user: userEntity);

      return Right(userEntity);
    } on CustomException catch (e) {
      if (user != null) {
        await firebaseAuthService.deleteUser();
      }
      return left(ServerFailuer(e.message));
    } catch (e) {
      if (user != null) {
        await firebaseAuthService.deleteUser();
      }
      log(
        "Exception in AuthRepoImpl.createUserWithEmailAndPassword: ${e.toString()}",
      );
      return left(ServerFailuer("لقد حدث خطأ  أثناء إنشاء الحساب"));
    }
  }

  @override
  Future<Either<Failuer, UserEntity>> signInWithEmailAndPassword(
    String email,
    String password,
  ) async {
    try {
      var user = await firebaseAuthService.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      var userEntity = await getUserData(uId: user.uid);
      // save user data in shared preferences
      await saveUserData(user: userEntity);
      return Right(userEntity);
    } on CustomException catch (e) {
      return left(ServerFailuer(e.message));
    } catch (e) {
      log(
        "Exception in AuthRepoImpl.signInWithEmailAndPassword: ${e.toString()}",
      );
      return left(ServerFailuer("لقد حدث خطأ أثناء تسجيل الدخول"));
    }
  }

  @override
  Future<Either<Failuer, UserEntity>> signInWithGoogle() async {
    User? user;
    try {
      user = await firebaseAuthService.signInWithGoogle();
      var userEntity = UserModel.fromFirebaseUser(user);

      var isUserExists = await dataBaseService.checkIfDataExists(
        path: BackendEndpoint.isUserExist,
        documentId: user.uid,
      );
      if (isUserExists) {
        await getUserData(uId: user.uid);
      } else {
        await addUserData(user: userEntity);
      }
      return Right(userEntity);
    } catch (e) {
      if (user != null) {
        await firebaseAuthService.deleteUser();
      }

      log("Exception in AuthRepoImpl.signInWithGoogle: ${e.toString()}");
      return left(ServerFailuer("لقد حدث خطأ أثناء تسجيل الدخول"));
    }
  }

  @override
  Future<Either<Failuer, UserEntity>> signInWithFacebook() async {
    User? user;
    try {
      user = await firebaseAuthService.signInWithFacebook();
      var userEntity = UserModel.fromFirebaseUser(user);
      await addUserData(user: userEntity);
      return Right(userEntity);
    } catch (e) {
      if (user != null) {
        await firebaseAuthService.deleteUser();
      }
      log("Exception in AuthRepoImpl.signInWithFacebook: ${e.toString()}");
      return left(ServerFailuer("لقد حدث خطأ أثناء تسجيل الدخول"));
    }
  }

  @override
  Future addUserData({required UserEntity user}) async {
    await dataBaseService.addData(
      path: BackendEndpoint.addUserData,
      data: UserModel.fromEntity(user).toMap(),
      documentId: user.uId,
    );
  }

  @override
  Future<UserEntity> getUserData({required String uId}) async {
    var userData = await dataBaseService.getData(
      path: BackendEndpoint.getUserData,
      documentId: uId,
    );
    return UserModel.fromJson(userData);
  }

  @override
  Future saveUserData({required UserEntity user}) async{
    var jsonData = jsonEncode(UserModel.fromEntity(user).toMap());

    await SharedPrefs.setString(kUserData, jsonData);


  }
}
