import 'package:flutter/material.dart';
import 'package:fruits_hub_app/core/widgets/custom_best_selling_app_bar.dart';
import 'package:fruits_hub_app/features/best_selling_fruits/presentation/views/widgets/best_selling_view_body.dart';

class BestSellingView extends StatelessWidget {
  const BestSellingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(context),
      body: const BestSellingViewBody(),
    );
  }
}
