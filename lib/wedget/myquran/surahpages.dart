import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:muslim/models/surahmodel.dart';
import 'package:muslim/route.dart';
import 'package:quran/quran.dart';

// ignore: camel_case_types
class SurahPages extends StatelessWidget {
  const SurahPages({super.key, required this.surahh});
  final surahmodel surahh;
  @override
  Widget build(BuildContext context) {
    List<int> countsurahpages = [];
    countsurahpages.clear();
    countsurahpages.addAll(getSurahPages(surahh.surahnum));
    return ListView.builder(
      // physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: countsurahpages.length,
      itemBuilder: (context, index) {
        return GestureDetector(onTap: () {
            GoRouter.of(context)
            .push(navegat.surahviewbypageview, extra: countsurahpages[index]);
        },
          child: Padding(
            padding:
                const EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      getVerseEndSymbol(
                        countsurahpages[index],
                        arabicNumeral: true,
                      ),
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
        );
      },
    );
  }
}
