import 'package:flutter/material.dart';
import 'package:fruits_hub_app/features/home/presentation/views/widgets/feature_item.dart';

class FeatureList extends StatelessWidget {
  const FeatureList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.2,
      child: ListView.builder(
        
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: FeatureItem(),
          );
        },
        ),
    );
  }
}