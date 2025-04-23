import 'package:flutter/material.dart';
import 'package:fruits_hub_app/core/widgets/custom_text_form_field.dart';

class CustomPasswordField extends StatefulWidget {
  const CustomPasswordField({super.key, this.onSaved});

  final void Function(String?)? onSaved;

  @override
  State<CustomPasswordField> createState() => _CustomPasswordFieldState();
}

class _CustomPasswordFieldState extends State<CustomPasswordField> {

  bool isObscureText = true;
  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      obscureText: isObscureText,
      onSaved: widget.onSaved,
      hintText: 'كلمة المرور',
      keyboardType: TextInputType.visiblePassword,
      suffixIcon: IconButton(
        onPressed: () {
          isObscureText = !isObscureText;
          setState(() {});
        },
        icon: isObscureText ? const Icon(Icons.remove_red_eye, color: Color(0xffC9CECF)) : const Icon(Icons.visibility_off, color: Color(0xffC9CECF)),
      ),
    );
  }
}
    