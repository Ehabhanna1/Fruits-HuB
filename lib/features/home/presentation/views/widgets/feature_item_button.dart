import 'package:flutter/material.dart';
import 'package:fruits_hub_app/core/utils/app_colors.dart';
import 'package:fruits_hub_app/core/utils/app_text.dart';

class FeatureItemButton extends StatelessWidget {
  const FeatureItemButton({super.key,  required this.onPressed});


  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
     
      height:38,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: Colors.white,
          
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        
        onPressed: onPressed,
         child: Padding(
           padding: const EdgeInsets.symmetric(horizontal: 21,),
           child: FittedBox(
             child: Text('تسوق الآن',style: TextStyles.bold15.copyWith(
               color: AppColors.primaryColor
             )),
           ),
         )
         ),
    );
  }
}