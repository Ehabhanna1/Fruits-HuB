import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_hub_app/core/utils/app_colors.dart';
import 'package:fruits_hub_app/core/utils/app_text.dart';

class ActiveIcon extends StatelessWidget {
  const ActiveIcon({super.key, required this.image, required this.text});
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.only(left:15),
      
        decoration: ShapeDecoration(
          color: Color(0xFFEEEEEE),
          shape: RoundedRectangleBorder(
            
            borderRadius: BorderRadius.circular(30),
          ),
          
        ),
        child: Row(
         mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: ShapeDecoration(
                color: Color(0xFF1B5E37),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                )
              ),
              child: Center(child: SvgPicture.asset(image,)),
            ),
      
            SizedBox(width: 5,),
            Text(text,
            
            style: TextStyles.semiBold13.copyWith(color:AppColors.primaryColor),),
          ], 
        ), 
          
      ),
    );
  }
}