import 'package:flutter/material.dart';
import 'package:fruits_hub_app/core/utils/app_colors.dart';
import 'package:fruits_hub_app/core/utils/app_text.dart';

class BestSellingHeaders extends StatelessWidget {
  const BestSellingHeaders({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('الاكثر مبيعا',style: TextStyles.bold18),
        const Spacer(),
        Text('المزيد',style: TextStyles.regular16.copyWith(
          color: Color(0xFF949D9E)
        ),),
      ],
    );
  }
}