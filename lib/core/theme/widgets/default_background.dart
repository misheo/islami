import 'package:flutter/material.dart';

class DefaultBackground extends StatelessWidget {
  const DefaultBackground({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/images/light_bg.png' , width:  double.infinity, fit: BoxFit.fill, height:  double.infinity,),
        child

      ]
    );
  }
}