import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub_app/core/helper_functions/routing/routes.dart';
import 'package:fruits_hub_app/core/widgets/custom_progress_hud.dart';
import 'package:fruits_hub_app/features/auth/presentation/cubits/signin_cubit/sign_in_cubit.dart';
import 'package:fruits_hub_app/features/auth/presentation/views/widgets/signin_view_body.dart';

class SignInNiewBodyBlocConsumer extends StatelessWidget {
  const SignInNiewBodyBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInCubit, SignInState>(
      listener: (context, state) {
        if (state is SignInSuccess) {
          Navigator.pushNamed(context, Routes.homeView);
        }
        if (state is SignInFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.errorMessage),
              backgroundColor: Colors.red,
            ),
          );
        }
      },
      builder: (context, state) {
        return CustomProgressHud(
          isLoading: state is SignInLoading ? true : false,
         child: const signinViewBody(),
         );
      },
    );
  }
}
