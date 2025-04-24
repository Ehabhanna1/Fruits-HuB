import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub_app/core/utils/app_colors.dart';
import 'package:fruits_hub_app/core/utils/app_images.dart';
import 'package:fruits_hub_app/core/utils/app_text.dart';
import 'package:fruits_hub_app/core/utils/spacing.dart';
import 'package:fruits_hub_app/core/widgets/custom_button.dart';
import 'package:fruits_hub_app/core/widgets/custom_password_field.dart';
import 'package:fruits_hub_app/core/widgets/custom_text_form_field.dart';
import 'package:fruits_hub_app/features/auth/presentation/cubits/signin_cubit/sign_in_cubit.dart';
import 'package:fruits_hub_app/features/auth/presentation/views/widgets/dont_have_account.dart';
import 'package:fruits_hub_app/features/auth/presentation/views/widgets/or_divider_widgets.dart';
import 'package:fruits_hub_app/features/auth/presentation/views/widgets/social_login_button.dart';

class SigninViewBody extends StatefulWidget {
  const SigninViewBody({super.key});

  @override
  State<SigninViewBody> createState() => _SigninViewBodyState();
}

class _SigninViewBodyState extends State<SigninViewBody> {
  late String email, password;
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          autovalidateMode: autoValidateMode,
          child: Column(
            children: [
              verticalSpacing(30),
              CustomTextFormField(
                onSaved: (value){
                  email = value!;
                },
                hintText: 'البريد الالكتروني',
                keyboardType: TextInputType.emailAddress,
              ),
              verticalSpacing(20),
              CustomPasswordField(
                onSaved: (value){
                  password = value!;
                },
               
              ),
              verticalSpacing(20),
              Align(
                alignment: AlignmentDirectional.centerEnd,
                child: Text(
                  "نسيت كلمة المرور؟",
                  style: TextStyles.bold15.copyWith(
                    color: AppColors.lightPrimaryColor,
                  ),
                ),
              ),
              verticalSpacing(35),
              CustomButton(
                text: 'تسجيل الدخول',
                onPressed: () {
                  // Handle login action
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    context.read<SignInCubit>().signInWithEmailAndPassword( email,  password);
                    
                  } else {
                    autoValidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              ),
              verticalSpacing(35),
              const DontHaveAccount(),
              verticalSpacing(30),
          
              const OrDividerWidgets(),
              verticalSpacing(15),
              SocialLoginButton(
                title: 'تسجيل بواسطة جوجل',
                image: AppImages.imagesGoogleIcon,
                onPressed: () {
                  // Handle Google login action
                  context.read<SignInCubit>().signInWithGoogle();
                },
              ),
              verticalSpacing(15),
              SocialLoginButton(
                title: 'تسجيل بواسطة فيسبوك',
                image: AppImages.imagesFacebookIcon,
                onPressed: () {
                  // Handle Facebook login action
                 // context.read<SignInCubit>().signInWithFacebook();
                },
              ),
              verticalSpacing(15),
              SocialLoginButton(
                title: 'تسجيل بواسطة أبل',
                image: AppImages.imagesApplIcon,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
