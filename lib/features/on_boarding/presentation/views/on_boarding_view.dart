import 'package:flutter/material.dart';
import 'package:fruits_hub_app/features/on_boarding/presentation/widgets/on_boarding_view_body.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: const OnBoardingViewBody()),
    );
  }
}