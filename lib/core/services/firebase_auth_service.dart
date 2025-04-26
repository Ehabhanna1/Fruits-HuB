import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:fruits_hub_app/core/errors/exceptions.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseAuthService {


  Future deleteUser() async {
   
     await FirebaseAuth.instance.currentUser!.delete();
    
  }
  Future<User> createUserWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log("Exception in FirebaseAuthService.createUserWithEmailAndPassword: ${e.toString()}");
      if (e.code == 'weak-password') {
        throw CustomException(message: "The password provided is too weak.");
      } else if (e.code == 'email-already-in-use') {
        throw CustomException(message: "هذا البريد الالكتروني موجود بالفعل.");
      }else if (e.code == 'network-request-field'){
        throw CustomException(message: "لتأكد من اتصالك بالانترنت");
      }
       else {
        throw CustomException(message: "لقد حدث خطأ أثناء إنشاء الحساب");
      }
    } catch (e) {
      throw CustomException(message: "لقد حدث خطأ أثناء إنشاء الحساب");
    }
  }


Future<User> signInWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log("Exception in FirebaseAuthService.signInWithEmailAndPassword: ${e.toString()} and code is ${e.code}");
      if (e.code == 'user-not-found') {
        throw CustomException(
            message: 'الرقم السري او البريد الالكتروني غير صحيح.');
      } else if (e.code == 'wrong-password') {
        throw CustomException(
            message: 'الرقم السري او البريد الالكتروني غير صحيح.');
      } else if (e.code == 'invalid-credential') {
        throw CustomException(
            message: 'الرقم السري او البريد الالكتروني غير صحيح.');
      } else if (e.code == 'network-request-failed') {
        throw CustomException(message: 'تاكد من اتصالك بالانترنت.');
      } else {
        throw CustomException(
            message: 'لقد حدث خطأ ما. الرجاء المحاولة مرة اخرى.');
      }
    } catch (e) {
      log("Exception in FirebaseAuthService.signInWithEmailAndPassword: ${e.toString()}");

      throw CustomException(
          message: 'لقد حدث خطأ ما. الرجاء المحاولة مرة اخرى.');
    }
  }

  /// sign in with google
  /// 
Future<User> signInWithGoogle() async {
// Trigger the authentication flow
final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

// Obtain the auth details from the request
final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

// Create a new credential
final credential = GoogleAuthProvider.credential(
  accessToken: googleAuth?.accessToken,
  idToken: googleAuth?.idToken,
);

// Once signed in, return the UserCredential
return (await FirebaseAuth.instance.signInWithCredential(credential)).user!;
}


/// sign in with facebook
/// 
 
Future<User> signInWithFacebook() async {
  // Trigger the sign-in flow
  final LoginResult loginResult = await FacebookAuth.instance.login();

  // Create a credential from the access token 
  final OAuthCredential facebookAuthCredential = FacebookAuthProvider.credential(loginResult.accessToken!.tokenString);

  // Once signed in, return the UserCredential
  return (await FirebaseAuth.instance.signInWithCredential(facebookAuthCredential)).user!;
} 






}
