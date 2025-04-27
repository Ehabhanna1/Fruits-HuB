
import 'package:flutter/material.dart';
import 'package:fruits_hub_app/core/utils/spacing.dart';
import 'package:fruits_hub_app/core/widgets/search_text_field.dart';
import 'package:fruits_hub_app/features/home/presentation/views/widgets/custom_home_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
        slivers: [
          
          SliverToBoxAdapter(
            child: Column(
              children: [
                CustomHomeAppBar(),
                verticalSpacing(16),
                SearchTextField(),
              ],
            ),
          ),
          
        ],
      ),
    );
  }
}