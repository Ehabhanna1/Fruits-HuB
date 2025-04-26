import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub_app/core/helper_functions/routing/routes.dart';
import 'package:fruits_hub_app/core/widgets/custom_progress_hud.dart';
import 'package:fruits_hub_app/features/auth/presentation/cubits/signup_cubit/signup_cubit.dart';
import 'package:fruits_hub_app/features/auth/presentation/views/widgets/signup_view_body.dart';

class SignUpViewBlocConsumer extends StatelessWidget {
  const SignUpViewBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignupCubit, SignupState>(
    listener: (context, state) {
      if(state is SignupSuccess){
      //  Navigator.pushNamed(context, Routes.homeView);
      }
      if(state is SignupFailure){
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(state.errorMessage))
        );
        
      }
    },
    builder: (context, state) {
      return CustomProgressHud(
        isLoading: state is SignupLoading ? true : false,
         child: const SignupViewBody(),
         );
    },
            );
  }
} 