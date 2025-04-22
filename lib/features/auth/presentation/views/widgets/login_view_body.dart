import 'package:flutter/material.dart';
import 'package:fruits_hub_app/core/utils/spacing.dart';
import 'package:fruits_hub_app/core/widgets/custom_text_form_field.dart';

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
          ],
        ),
      ),
    );
  }
} 