import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../../core/theme/my_colors.dart';
import '../../providers/settings_provider.dart';

class SebhaScreen extends StatefulWidget {
  const SebhaScreen({super.key});

  @override
  State<SebhaScreen> createState() => _SebhaScreenState();
}

class _SebhaScreenState extends State<SebhaScreen> with SingleTickerProviderStateMixin {
  int count = 0;
  int subcount = 0;
  late AnimationController _controller;
  List<String > azkare = ['الحمدلله','الحمدلله','الحمدلله','الحمدلله','الحمدلله', 'سبحان الله', 'سبحان الله','سبحان الله','سبحان الله','سبحان الله'];
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _rotateImage() {
    _controller.forward(from: 0.0);
    setState(() {
      if(subcount < azkare.length - 1){
        subcount++;
      }else{
        subcount = 0;
      }
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    return Column(
      children: [
        GestureDetector(
          onTap: _rotateImage,
          child: AnimatedBuilder(
            animation: _controller,
            child: Container(
              child: provider.isLightMode
                  ? Image.asset('assets/images/sebha.png')
                  : Image.asset('assets/images/dark_sibha.png'),
            ),
            builder: (context, child) {
              return Transform.rotate(
                angle: _controller.value * 2.0 * 3.141592653589793,
                child: child,
              );
            },
          ),
        ),
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
                color: provider.isLightMode
                    ? MyColors.primaryLightColor
                    : MyColors.primaryDarkColor,
              ),
              child: Center(
                  child: Text(
                '$count',
              )),
            ),
          ],
        ),
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
                color: provider.isLightMode
                    ? MyColors.primaryLightColor
                    : MyColors.goldDarkColor,
              ),
              child: Center(
                  child: Text(
                '${azkare[subcount]}',
              )),
            ),
          ],
        )
      ],
    );
  }
}
