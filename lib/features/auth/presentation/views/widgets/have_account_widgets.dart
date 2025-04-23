import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fruits_hub_app/core/utils/app_colors.dart';
import 'package:fruits_hub_app/core/utils/app_text.dart';

class HaveAccountWidgets extends StatelessWidget {
  const HaveAccountWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
       
        children: [
          TextSpan(
           
            text: 'تمتلك حساب بالفعل؟ ', 
        style: TextStyles.semiBold18,

          ),
          TextSpan(
            recognizer: TapGestureRecognizer()
          ..onTap = () => Navigator.pop(context),
            text: 'تسجيل دخول',
            style: TextStyles.semiBold18.copyWith(
              color: AppColors.lightPrimaryColor,
            ),
          ),
        ],
      ),
    );
  }
}