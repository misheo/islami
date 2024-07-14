import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami/core/theme/widgets/default_background.dart';

import '../../../core/theme/my_colors.dart';
import '../data/soura_details_args.dart';

class SouraDetails extends StatelessWidget {
  static const String routeName = "soura_details";
  SouraDetails({super.key});
  List<String> verse = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as SouraDetailsArgs;
    Future<void> loadFile(int index) async {
      String content =
          await rootBundle.loadString('assets/files/${index + 1}.txt');
      List<String> lines = content.split('\n');
      verse = lines;
      print(verse);
    }

    loadFile(args.index);
    return DefaultBackground(
        title: "${args.name}",
        child: Column(
          children: [
            Container(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                height: 200.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white,
                ),
                child: ListView.builder(
                    itemCount: verse.length,
                    itemBuilder: (context, index) {
                      return Text(verse[index]);
                    }))
          ],
        ));
  }
}
