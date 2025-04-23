import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub_app/core/services/depen_injection.dart';
import 'package:fruits_hub_app/core/widgets/custom_app_bar.dart';
import 'package:fruits_hub_app/features/auth/domain/repos/auth_repo.dart';
import 'package:fruits_hub_app/features/auth/presentation/cubits/signup_cubit/signup_cubit.dart';
import 'package:fruits_hub_app/features/auth/presentation/views/widgets/signup_view_body_bloc_consumer.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignupCubit(getIt<AuthRepo>()),
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: buildAppBar(context, title: 'حساب جديد'),
        body: SafeArea(
          child: SignUpViewBlocConsumer()),
      ),
    );
  }
} 


