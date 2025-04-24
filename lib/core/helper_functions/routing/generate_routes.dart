import 'package:flutter/material.dart';
import 'package:fruits_hub_app/core/helper_functions/routing/routes.dart';
import 'package:fruits_hub_app/features/auth/presentation/views/sign_in_view.dart';
import 'package:fruits_hub_app/features/auth/presentation/views/signup_view.dart';
import 'package:fruits_hub_app/features/home/presentation/views/home_view.dart';
import 'package:fruits_hub_app/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:fruits_hub_app/features/splash/presentation/views/splash_view.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case Routes.splashView:
      return MaterialPageRoute(builder: (_) => const SplashView());
    case Routes.onBoardingView:
      return MaterialPageRoute(builder: (_) => const OnBoardingView());
    case Routes.signInView:
      return MaterialPageRoute(builder: (_) => const SignInView());
    case Routes.signUpView:
      return MaterialPageRoute(builder: (_) => const SignupView());
    case Routes.homeView:
      return MaterialPageRoute(builder: (_) => const HomeView());
    default:
      return MaterialPageRoute(builder: (_) => const SplashView());
  }
}
