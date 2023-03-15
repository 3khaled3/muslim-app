import 'package:flutter/material.dart';
import 'package:muslim/wedget/myquran/surahpages.dart';
import 'package:quran/quran.dart';
import '../../models/surahmodel.dart';

// ignore: camel_case_types
class surahpageslist extends StatelessWidget {
  const surahpageslist({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        getSurahPages(index + 1);
        surahmodel a = surahmodel(
          surahnum: index + 1,
          surahnameEN: getSurahNameEnglish(index + 1),
          surahnameAR: getSurahNameArabic(index + 1),
        );
        return SurahPages(surahh: a);
      },
      itemCount: 114,
    );
  }
}
