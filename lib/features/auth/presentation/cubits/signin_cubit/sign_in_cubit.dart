import 'package:bloc/bloc.dart';
import 'package:fruits_hub_app/features/auth/domain/entities/user_entity.dart';
import 'package:fruits_hub_app/features/auth/domain/repos/auth_repo.dart';
import 'package:meta/meta.dart';

part 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit(this.authRepo) : super(SignInInitial());
  final AuthRepo authRepo;



  Future<void> signInWithEmailAndPassword(
    String email,
    String password,
  ) async {
    emit(SignInLoading());
    var result = await authRepo.signInWithEmailAndPassword(
      email,
      password,
    );
    result.fold(
      (failure) => emit(SignInFailure(errorMessage: failure.message)),
      (userEntity) => emit(SignInSuccess(userEntity: userEntity)),
    );
  }


  /// sign in with google
  Future<void> signInWithGoogle() async {
    emit(SignInLoading());
    var result = await authRepo.signInWithGoogle();
    result.fold(
      (failure) => emit(SignInFailure(errorMessage: failure.message)),
      (userEntity) => emit(SignInSuccess(userEntity: userEntity)),
    );
  }





}
