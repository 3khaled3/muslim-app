import 'package:flutter/material.dart';
import 'package:muslim/wedget/myquran/surahname.dart';
import 'package:quran/quran.dart';

import '../../models/surahmodel.dart';

// ignore: camel_case_types
class surahlist extends StatelessWidget {
  const surahlist({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        surahmodel a = surahmodel(
            surahnum: index + 1,
            surahnameEN: getSurahNameEnglish(index + 1),
            surahnameAR: getSurahNameArabic(index + 1),);
        return surah(surahh: a);
      },
      itemCount: 114,
    );
  }
}
