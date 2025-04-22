import 'package:flutter/material.dart';
import 'package:fruits_hub_app/core/utils/app_colors.dart';
import 'package:fruits_hub_app/core/utils/app_images.dart';
import 'package:fruits_hub_app/core/utils/app_text.dart';
import 'package:fruits_hub_app/core/utils/spacing.dart';
import 'package:fruits_hub_app/core/widgets/custom_button.dart';
import 'package:fruits_hub_app/core/widgets/custom_text_form_field.dart';
import 'package:fruits_hub_app/features/auth/presentation/views/widgets/dont_have_account.dart';
import 'package:fruits_hub_app/features/auth/presentation/views/widgets/or_divider_widgets.dart';
import 'package:fruits_hub_app/features/auth/presentation/views/widgets/social_login_button.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: SingleChildScrollView(
        child: Column(
          children: [
            verticalSpacing(30),
            CustomTextFormField(hintText: 'البريد الالكتروني', keyboardType: TextInputType.emailAddress,),
            verticalSpacing(20),
            CustomTextFormField(hintText:  'كلمة المرور', keyboardType: TextInputType.visiblePassword,
            suffixIcon: IconButton(
              icon: const Icon(Icons.remove_red_eye,color: Color(0xffC9CECF),),
              onPressed: () {
                // Handle visibility toggle
              },
            ),
            
            ),
            verticalSpacing(20),
            Align(
              alignment: AlignmentDirectional.centerEnd,
              child: Text("نسيت كلمة المرور؟",style: TextStyles.bold15.copyWith(
                color:AppColors.lightPrimaryColor,
              ),
              
              ),
            ),
            verticalSpacing(35),
           CustomButton(
              text: 'تسجيل الدخول',
              onPressed: () {
                // Handle login action
              },
            ),
            verticalSpacing(35),
           const DontHaveAccount(),
           verticalSpacing(30),

           const OrDividerWidgets(),
          verticalSpacing(15),
          SocialLoginButton(title: 'تسجيل بواسطة جوجل', image: AppImages.imagesGoogleIcon, onPressed: () {  },),
          verticalSpacing(15),
           SocialLoginButton(title: 'تسجيل بواسطة فيسبوك', image: AppImages.imagesFacebookIcon, onPressed: () {  },),
          verticalSpacing(15),
            SocialLoginButton(title: 'تسجيل بواسطة أبل', image: AppImages.imagesApplIcon, onPressed: () {  },)
          ],
        ),
      ),
    );
  }
}

