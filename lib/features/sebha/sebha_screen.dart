import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../core/theme/my_colors.dart';

class SebhaScreen extends StatefulWidget {
  const SebhaScreen({super.key});

  @override
  State<SebhaScreen> createState() => _SebhaScreenState();
}

class _SebhaScreenState extends State<SebhaScreen> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
  
        Image.asset('assets/images/sebha.png'),
        SizedBox(
          height: 57.h,
        ),
        Text(AppLocalizations.of(context)!.count_of_tasbih,
            style: Theme.of(context).textTheme.headlineLarge),
        SizedBox(
          height: 57.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 70.w,
              height: 81.h,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(25),
              color: MyColors.primaryLightColor,
              
              ),
              child:  Center(child: Text('$count',)),
            ),
          ],
        )  , 
        SizedBox(
          height: 22.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 137.w,
              height: 51.h,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(25),
              color: MyColors.primaryLightColor,
              
              ),
              child:  Center(child: Text('$count',)),
            ),
          ],
        ) 
      ],
    );
  }
}