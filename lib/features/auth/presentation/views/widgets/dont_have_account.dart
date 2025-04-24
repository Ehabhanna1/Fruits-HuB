import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fruits_hub_app/core/helper_functions/routing/routes.dart';
import 'package:fruits_hub_app/core/utils/app_colors.dart';
import 'package:fruits_hub_app/core/utils/app_text.dart';

class DontHaveAccount extends StatelessWidget {
  const DontHaveAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
       
        children: [
          TextSpan(
           
            text: 'ليس لديك حساب؟ ', 
        style: TextStyles.semiBold18.copyWith(
          color: const Color(0xFF949D9E),
        ),

          ),
          TextSpan(
            recognizer: TapGestureRecognizer()
          ..onTap = () => Navigator.pushNamed(context, Routes.signUpView),
            text: 'سجل الآن',
            style: TextStyles.semiBold18.copyWith(
              color: AppColors.lightPrimaryColor,
            ),
          ),
        ],
      ),
    );
  }
} 