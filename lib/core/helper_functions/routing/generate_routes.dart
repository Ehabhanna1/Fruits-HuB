


import 'package:flutter/material.dart';
import 'package:fruits_hub_app/core/helper_functions/routing/routes.dart';
import 'package:fruits_hub_app/features/auth/presentation/views/login_view.dart';
import 'package:fruits_hub_app/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:fruits_hub_app/features/splash/presentation/views/splash_view.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case Routes.splashView:
      return MaterialPageRoute(builder: (_) => const SplashView());
    case Routes.onBoardingView:
      return MaterialPageRoute(builder: (_) => const OnBoardingView());
    case Routes.loginScreen:
      return MaterialPageRoute(builder: (_) => const LoginView());
    default:
      return MaterialPageRoute(builder: (_) => const SplashView());
  }
}