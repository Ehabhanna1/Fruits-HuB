import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub_app/core/services/depen_injection.dart';
import 'package:fruits_hub_app/core/widgets/custom_app_bar.dart';
import 'package:fruits_hub_app/features/auth/domain/repos/auth_repo.dart';
import 'package:fruits_hub_app/features/auth/presentation/cubits/signin_cubit/sign_in_cubit.dart';
import 'package:fruits_hub_app/features/auth/presentation/views/widgets/signin_view_body.dart';
import 'package:fruits_hub_app/features/auth/presentation/views/widgets/signin_view_body_bloc_consumer.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignInCubit(getIt<AuthRepo>()),
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: buildAppBar(context, title: 'تسجيل الدخول'),
        body: SafeArea(
          child: SignInNiewBodyBlocConsumer(),
        ),
      ),
    );
  }
}


