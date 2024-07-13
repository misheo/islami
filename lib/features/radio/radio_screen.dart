import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class RadioScreen extends StatelessWidget {
  const RadioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 157.h,
        ),
        Image.asset('assets/images/radio_image.png'),
        SizedBox(
          height: 57.h,
        ),
        Text(AppLocalizations.of(context)!.radio,
            style: Theme.of(context).textTheme.headlineLarge),
        SizedBox(
          height: 57.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.skip_previous_rounded , size: 35,)),
            IconButton(onPressed: () {}, icon: Icon(Icons.play_arrow , size: 35,)),
            IconButton(onPressed: () {}, icon: Icon(Icons.skip_next_rounded , size: 35,)),
          ],
        )
      ],
    );
  }
}
