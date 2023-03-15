import 'package:flutter/material.dart';

import 'package:quran/quran.dart';

import '../../constant.dart';

// ignore: camel_case_types, must_be_immutable
class showsurahlist extends StatelessWidget {
  showsurahlist({super.key,required this.fullpage});
  List<String> fullpage = [];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: fullpage.length,
            itemBuilder: (context, index) {
              bool surahname = false;

              if (fullpage[index].contains("سورة")) {
                surahname = true;
              }
              bool isbasmala = false;
              if (fullpage[index].contains(basmala)) {
                isbasmala = true;
              }

              return Text(
                fullpage[index],
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.center,
                style: surahname
                    ? TextStyle(
                        fontSize: arabicFontSize + 4,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontFamily: "quran")
                    : (isbasmala
                        ? TextStyle(
                            fontSize: arabicFontSize,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFFEE5250),
                            fontFamily: "basmala")
                        : TextStyle(
                            fontSize: arabicFontSize,
                          )),
              );
            },
          );
  }
}