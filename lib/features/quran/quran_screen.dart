import 'package:flutter/material.dart';
import 'package:islami/core/theme/widgets/default_background.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/core/theme/widgets/my_divider.dart';
import 'package:islami/features/quran/widgets/sura_details.dart';

import '../../core/theme/my_colors.dart';
import 'data/soura_details_args.dart';

class QuranScreen extends StatelessWidget {
  const QuranScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> suraNames = [
      "الفاتحه",
      "البقرة",
      "آل عمران",
      "النساء",
      "المائدة",
      "الأنعام",
      "الأعراف",
      "الأنفال",
      "التوبة",
      "يونس",
      "هود",
      "يوسف",
      "الرعد",
      "إبراهيم",
      "الحجر",
      "النحل",
      "الإسراء",
      "الكهف",
      "مريم",
      "طه",
      "الأنبياء",
      "الحج",
      "المؤمنون",
      "النّور",
      "الفرقان",
      "الشعراء",
      "النّمل",
      "القصص",
      "العنكبوت",
      "الرّوم",
      "لقمان",
      "السجدة",
      "الأحزاب",
      "سبأ",
      "فاطر",
      "يس",
      "الصافات",
      "ص",
      "الزمر",
      "غافر",
      "فصّلت",
      "الشورى",
      "الزخرف",
      "الدّخان",
      "الجاثية",
      "الأحقاف",
      "محمد",
      "الفتح",
      "الحجرات",
      "ق",
      "الذاريات",
      "الطور",
      "النجم",
      "القمر",
      "الرحمن",
      "الواقعة",
      "الحديد",
      "المجادلة",
      "الحشر",
      "الممتحنة",
      "الصف",
      "الجمعة",
      "المنافقون",
      "التغابن",
      "الطلاق",
      "التحريم",
      "الملك",
      "القلم",
      "الحاقة",
      "المعارج",
      "نوح",
      "الجن",
      "المزّمّل",
      "المدّثر",
      "القيامة",
      "الإنسان",
      "المرسلات",
      "النبأ",
      "النازعات",
      "عبس",
      "التكوير",
      "الإنفطار",
      "المطفّفين",
      "الإنشقاق",
      "البروج",
      "الطارق",
      "الأعلى",
      "الغاشية",
      "الفجر",
      "البلد",
      "الشمس",
      "الليل",
      "الضحى",
      "الشرح",
      "التين",
      "العلق",
      "القدر",
      "البينة",
      "الزلزلة",
      "العاديات",
      "القارعة",
      "التكاثر",
      "العصر",
      "الهمزة",
      "الفيل",
      "قريش",
      "الماعون",
      "الكوثر",
      "الكافرون",
      "النصر",
      "المسد",
      "الإخلاص",
      "الفلق",
      "الناس"
    ];
    return Column(
      children: [
        Center(child: Image.asset('assets/images/quran_logo.png')),
        const Divider(color: MyColors.primaryLightColor, thickness: 3),
        Text(AppLocalizations.of(context)!.sura_name,
            style: Theme.of(context).textTheme.titleLarge),
        const Divider(color: MyColors.primaryLightColor, thickness: 3),
        Expanded(
          child: ListView.separated(
            separatorBuilder: (context, index) {
              return const MyDivider(thickness: 1);
            },
            itemCount: suraNames.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, SouraDetails.routeName, arguments: SouraDetailsArgs(index: index , name: suraNames[index]));
                } , 
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(suraNames[index],
                        style: Theme.of(context).textTheme.bodyLarge),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
