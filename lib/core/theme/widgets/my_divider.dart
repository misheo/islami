import 'package:flutter/material.dart';

import '../my_colors.dart';

class MyDivider extends StatelessWidget {
  const MyDivider({super.key, required this.thickness});
  final double thickness;

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: MyColors.primaryLightColor,
      thickness: thickness,
    );
  }
}
