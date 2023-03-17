import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:muslim/models/surahmodel.dart';
import 'package:muslim/route.dart';
import 'package:quran/quran.dart';

// ignore: camel_case_types
class surah extends StatelessWidget {
  const surah({super.key, required this.surahh});
  final surahmodel surahh;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context)
            .push(navegat.surahtextview, extra: surahh.surahnum);
      },
      child: Container(
        color: const Color.fromARGB(0, 255, 193, 7),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    getVerseEndSymbol(surahh.surahnum, arabicNumeral: true),
                    style: TextStyle(color: Colors.blue[400], fontSize: 20),
                  ),
                  const Spacer(),
                  Text(
                    surahh.surahnameAR,
                    style: TextStyle(color: Colors.blue[400], fontSize: 24),
                  ),
                ],
              ),
              const Divider(
                thickness: .9,
              )
            ],
          ),
        ),
      ),
    );
  }
}
