import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../core/theme/my_colors.dart';
import '../../providers/settings_provider.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<SettingsProvider>(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 20.h),
      child: Column(
          // mainAxisAlignment: MainAxisAlignment.,
          children: [
            SizedBox(
              height: 35.h,
            ),
            Icon(
              Icons.settings,
              size: 100,
            ),
            Row(
              children: [
                Text(AppLocalizations.of(context)!.language),
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            InkWell(
              onTap: () {
                showModalBottomSheet<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      height: 300.h,
                      decoration: BoxDecoration(
                        color: provider.isLightMode
                            ? Colors.white
                            : MyColors.primaryDarkColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.r),
                          topRight: Radius.circular(20.r),
                        ),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            InkWell(
                              onTap: () {
                                provider.changeLanguage('ar');
                              },
                              child: Container(
                                margin: EdgeInsets.symmetric(
                                  horizontal: 20.w,
                                ),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 20.w,
                                ),
                                height: 50.h,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(25),
                                  color: MyColors.primaryLightColor,
                                ),
                                child: Center(
                                  child: Text(
                                    AppLocalizations.of(context)!.arabic,
                                    style:
                                        Theme.of(context).textTheme.bodyLarge,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 30.h),
                            InkWell(
                                onTap: () {
                                  provider.changeLanguage('en');
                                },
                                child: Container(
                                    margin: EdgeInsets.symmetric(
                                      horizontal: 20.w,
                                    ),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 20.w,
                                    ),
                                    height: 50.h,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.circular(25),
                                      color: MyColors.primaryLightColor,
                                    ),
                                    child: Center(
                                      child: Text(
                                        AppLocalizations.of(context)!.english,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyLarge,
                                      ),
                                    ))),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.w,
                ),
                height: 50.h,
                // width: 200.w,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(25),
                  color: MyColors.primaryLightColor,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    provider.language == "ar"
                        ? Center(
                            child: Text(AppLocalizations.of(context)!.arabic))
                        : Center(
                            child: Text(AppLocalizations.of(context)!.english)),
                    IconButton(
                      onPressed: () {
                        // provider.changeLanguage();
                      },
                      icon: Icon(
                        Icons.arrow_drop_down,
                        size: 30,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Row(
              children: [
                Text(AppLocalizations.of(context)!.theme),
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            InkWell(
              onTap: () {
                showModalBottomSheet<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      height: 300.h,
                      decoration: BoxDecoration(
                        color: provider.isLightMode
                            ? Colors.white
                            : MyColors.primaryDarkColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.r),
                          topRight: Radius.circular(20.r),
                        ),
                      ),

                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            InkWell(
                              onTap: () {
                                provider.changeThemeMode(ThemeMode.light);
                              },
                              child: Container(
                                margin: EdgeInsets.symmetric(
                                  horizontal: 20.w,
                                ),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 20.w,
                                ),
                                height: 50.h,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(25),
                                  color: MyColors.primaryLightColor,
                                ),
                                child: Center(
                                  child: Text(
                                    AppLocalizations.of(context)!.light,
                                    style:
                                        Theme.of(context).textTheme.bodyLarge,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 30.h),
                            InkWell(
                                onTap: () {
                                  provider.changeThemeMode(ThemeMode.dark);
                                },
                                child: Container(
                                    margin: EdgeInsets.symmetric(
                                      horizontal: 20.w,
                                    ),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 20.w,
                                    ),
                                    height: 50.h,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.circular(25),
                                      color: MyColors.primaryLightColor,
                                    ),
                                    child: Center(
                                      child: Text(
                                        AppLocalizations.of(context)!.dark,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyLarge,
                                      ),
                                    ))),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.w,
                ),
                height: 50.h,
                // width: 200.w,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(25),
                  color: MyColors.primaryLightColor,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    provider.themeMode == ThemeMode.dark
                        ? Center(
                            child: Text(AppLocalizations.of(context)!.dark))
                        : Center(
                            child: Text(AppLocalizations.of(context)!.light)),
                    IconButton(
                      onPressed: () {
                        // provider.changeLanguage();
                      },
                      icon: Icon(
                        Icons.arrow_drop_down,
                        size: 30,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ]),
    );
  }
}
