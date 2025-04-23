import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub_app/core/utils/spacing.dart';
import 'package:fruits_hub_app/core/widgets/custom_button.dart';
import 'package:fruits_hub_app/core/widgets/custom_password_field.dart';
import 'package:fruits_hub_app/core/widgets/custom_text_form_field.dart';
import 'package:fruits_hub_app/features/auth/presentation/cubits/signup_cubit/signup_cubit.dart';
import 'package:fruits_hub_app/features/auth/presentation/views/widgets/have_account_widgets.dart';
import 'package:fruits_hub_app/features/auth/presentation/views/widgets/terms_and_conditions.dart';

class SignupViewBody extends StatefulWidget {
  const SignupViewBody({super.key});

  @override
  State<SignupViewBody> createState() => _SignupViewBodyState();
}

class _SignupViewBodyState extends State<SignupViewBody> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  late String userName, email, password;
  bool isTermsAccepted = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Form(
          key: _formKey,
          autovalidateMode: autoValidateMode,
          child: Column(
            children: [
              verticalSpacing(25),
              CustomTextFormField(
                onSaved: (value) {
                  userName = value!;
                },

                hintText: 'الاسم كامل',
                keyboardType: TextInputType.name,
              ),
              const SizedBox(height: 17),
              CustomTextFormField(
                onSaved: (value) {
                  email = value!;
                },
                hintText: 'البريد الالكتروني',
                keyboardType: TextInputType.emailAddress,
              ),

              const SizedBox(height: 17),
              CustomPasswordField(
                onSaved: (value) {
                  password = value!;
                },
              ),
              verticalSpacing(20),
               TermsAndConditions(
                onChanged: (value) {
                  isTermsAccepted = value;
                },
               ),
              verticalSpacing(30),
              CustomButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    if (isTermsAccepted) {
  context.read<SignupCubit>()
                          .createUserWithEmailAndPassword(
                            email,
                            password,
                            userName,
                          );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('الرجاء قبول الشروط والأحكام'),
                        ),
                      );
                    }
                  } else {
                    autoValidateMode = AutovalidateMode.always;
                  }
                },
                text: "إنشاء حساب جديد",
              ),
              verticalSpacing(30),
              const HaveAccountWidgets(),
            ],
          ),
        ),
      ),
    );
  }
}


