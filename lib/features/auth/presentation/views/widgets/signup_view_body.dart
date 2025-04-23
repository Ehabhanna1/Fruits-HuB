import 'package:flutter/material.dart';
import 'package:fruits_hub_app/core/utils/spacing.dart';
import 'package:fruits_hub_app/core/widgets/custom_button.dart';
import 'package:fruits_hub_app/core/widgets/custom_text_form_field.dart';
import 'package:fruits_hub_app/features/auth/presentation/views/widgets/have_account_widgets.dart';
import 'package:fruits_hub_app/features/auth/presentation/views/widgets/terms_and_conditions.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            verticalSpacing(25),
            CustomTextFormField(hintText: 'الاسم كامل', keyboardType: TextInputType.name),
            const SizedBox(height: 17),
            CustomTextFormField(hintText: 'البريد الالكتروني', keyboardType: TextInputType.emailAddress),
          
            const SizedBox(height: 17),
            CustomTextFormField(
              hintText: 'كلمة المرور',
               keyboardType: TextInputType.visiblePassword,
               suffixIcon: IconButton(
                onPressed: (){},
                 icon: const Icon(Icons.remove_red_eye,
                 color: Color(0xffC9CECF),
                 
                 )
                 ),
              ),
              verticalSpacing(20),
              const TermsAndConditions(),
            verticalSpacing(30),
            CustomButton(onPressed: (){}, text: "إنشاء حساب جديد",),
            verticalSpacing(30),
           const HaveAccountWidgets()
            
       
            
          ],
        ),
      ),
    );
  }
}