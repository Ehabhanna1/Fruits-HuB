import 'package:flutter/material.dart';
import 'package:fruits_hub_app/features/home/presentation/views/widgets/custom_button_navigation_bar.dart';
import 'package:fruits_hub_app/features/home/presentation/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CustomButtonNavigationBar(),
      body: SafeArea(child: const HomeViewBody()),
    );
  }
}