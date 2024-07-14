import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami/core/widgets/default_background.dart';

class HadithDetails extends StatefulWidget {
  static const String routeName = "hadith_details";
  const HadithDetails({super.key});

  @override
  State<HadithDetails> createState() => _HadithDetailsState();
}

class _HadithDetailsState extends State<HadithDetails> {
  List<String> verse = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as String;
    return DefaultBackground(
      title: args.split("\n")[0],
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          height: 500.h,
          width: double.infinity,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(25),
            color: Colors.white.withOpacity(0.2),
          ),
          child: Center(child: SingleChildScrollView(child: Text(args.split("\n")[1] , textAlign: TextAlign.center, style: Theme.of(context).textTheme.bodyLarge)) ,)),
    );
  }
}
