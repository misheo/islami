import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami/core/widgets/default_background.dart';

import '../data/soura_details_args.dart';

class SouraDetails extends StatefulWidget {
  static const String routeName = "soura_details";
  const SouraDetails({super.key});

  @override
  State<SouraDetails> createState() => _SouraDetailsState();
}

class _SouraDetailsState extends State<SouraDetails> {
  List<String> verse = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as SouraDetailsArgs;
    Future<void> loadFile(int index) async {
      String content =
          await rootBundle.loadString('assets/files/${index + 1}.txt');
      List<String> lines = content.split('\n');
      setState(() {
        verse = lines;
      });
    }

    loadFile(args.index);
    return DefaultBackground(
        title: "${args.name}",
        child: verse.isEmpty
            ? CircularProgressIndicator()
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.w, vertical: 20.h),
                      margin: EdgeInsets.symmetric(
                          horizontal: 20.w, vertical: 20.h),
                      height: 200.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white.withOpacity(0.2),
                      ),
                      child: ListView.builder(
                          itemCount: verse.length,
                          itemBuilder: (context, index) {
                            return Text(verse[index] , style: Theme.of(context).textTheme.bodyLarge, textAlign: TextAlign.center,);
                          }))
                ],
              ));
  }
}
