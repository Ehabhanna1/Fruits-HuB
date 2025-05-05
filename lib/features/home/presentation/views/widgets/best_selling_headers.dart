import 'package:flutter/material.dart';
import 'package:fruits_hub_app/core/helper_functions/routing/routes.dart';
import 'package:fruits_hub_app/core/utils/app_text.dart';

class BestSellingHeaders extends StatelessWidget {
  const BestSellingHeaders({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, Routes.bestSellingView);
      },
      child: Row(
        children: [
          Text('الاكثر مبيعا',style: TextStyles.bold18),
          const Spacer(),
          Text('المزيد',style: TextStyles.regular16.copyWith(
            color: Color(0xFF949D9E)
          ),),
        ],
      ),
    );
  }
}