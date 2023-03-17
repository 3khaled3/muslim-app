import 'package:flutter/material.dart';
import 'package:quran/quran.dart';
import '../../constant.dart';

// ignore: camel_case_types, must_be_immutable
class surahviewappbar extends StatelessWidget {
  surahviewappbar(
      {super.key,
      required this.pagenumm,
      required this.surahnameheadpage,
      required this.onTap,
      required this.isselectedpage,
      // ignore: non_constant_identifier_names
      required this.Jaznumber,
     });
  String surahnameheadpage;
  // ignore: non_constant_identifier_names
  int Jaznumber=0;
  int pagenumm;
  bool isselectedpage = false;
  void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: onTap,
          child: CircleAvatar(
            backgroundColor: const Color.fromARGB(0, 255, 255, 255),
            child: Image.asset(
                isselectedpage ? assets.selectbookmark : assets.bookmarkicon),
          ),
        ),
        Text(
          getVerseEndSymbol(pagenumm, arabicNumeral: true),
          style: TextStyle(
              fontSize: arabicFontSize,
              fontWeight: FontWeight.bold,
              color: Colors.blue),
        ),
        const Spacer(),
        Text(
          "{الجزء ${getVerseEndSymbol(Jaznumber, arabicNumeral: true)}}",
          style: TextStyle(
            fontSize: arabicFontSize,
            color: Colors.black,
             
          ),
        ),
        const Spacer(),
        Text(
          surahnameheadpage,
          style: TextStyle(
              fontSize: arabicFontSize + 4,
              fontWeight: FontWeight.bold,
              color: const Color(0xFFEE5250),
              fontFamily: "quran",),
        ),
      ],
    );
  }
}
