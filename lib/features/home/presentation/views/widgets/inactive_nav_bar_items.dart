
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InActiveIcon extends StatelessWidget {
  const InActiveIcon({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(image);
  }
}
