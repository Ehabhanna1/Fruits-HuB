import 'package:flutter/material.dart';
import 'package:fruits_hub_app/core/utils/app_colors.dart';
import 'package:fruits_hub_app/core/utils/app_text.dart';

class FeatureItemButton extends StatelessWidget {
  const FeatureItemButton({super.key,  required this.onPressed});


  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: Colors.white,
          
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        
        onPressed: onPressed,
         child: Text('تسوق الآن',style: TextStyles.bold15.copyWith(
           color: AppColors.primaryColor
         ))
         ),
    );
  }
}