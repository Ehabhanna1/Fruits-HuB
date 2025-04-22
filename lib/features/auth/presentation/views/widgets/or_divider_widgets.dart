import 'package:flutter/material.dart';
import 'package:fruits_hub_app/core/utils/app_text.dart';

class OrDividerWidgets extends StatelessWidget {
  const OrDividerWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(child: Divider(thickness: 2,color: Color(0xFFDCDEDE),)),
        Padding(
          padding: const EdgeInsets.all(18),
          child: Text('أو', style: TextStyles.semiBold18),
        ),
        Expanded(child: Divider(thickness: 2,color: Color(0xFFDCDEDE),)),
      ],
      );
  }
}
     
