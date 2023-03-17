import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:muslim/wedget/showsurah/surahappbar.dart';
import 'package:muslim/wedget/showsurah/surahlistview.dart';
import 'package:quran/quran.dart';

import '../constant.dart';

// ignore: camel_case_types, must_be_immutable
class showsurah extends StatefulWidget {
  const showsurah({
    super.key,
    required this.pagenum,
  });
  final int pagenum;

  @override
  State<showsurah> createState() => _showsurahState();
}

// ignore: camel_case_types
class _showsurahState extends State<showsurah> {
  final List<String> fullpage = [];
  String surahnameheadpage = "";
  String fullsura = "";
  var box = Hive.box('saved');
  bool isselectedpage = false;
  dynamic Jaznumber;
  @override
  void initState() {
    if ((box.get('pagenum')) == widget.pagenum) {
      isselectedpage = true;
    }
    super.initState();
    Jaznumber = JazNum(widget.pagenum);
    formatpage();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: surahviewappbar(
            Jaznumber: Jaznumber,
            isselectedpage: isselectedpage,
            onTap: () {
              box.put('pagenum', widget.pagenum);
              isselectedpage = true;
              setState(() {});
              // ignore: unused_local_variable
            },
            pagenumm: widget.pagenum,
            surahnameheadpage: surahnameheadpage,
          ),
        ),
        const Divider(),
        Expanded(
          child: showsurahlist(fullpage: fullpage),
        ),
      ],
    );
  }

  void formatpage() {
    List<Map<String, int>>? padgeinfo =
        getPageData((widget.pagenum)).cast<Map<String, int>>();
    List<String> verses = [];
    verses.addAll(getVersesTextByPage(widget.pagenum, verseEndSymbol: true));
    {
      //((end-start)+1)  ->count surea verces
      int addverses = 0;

      for (var i = 0; i < padgeinfo.length; i++) {
        fullsura = "";
        surahnameheadpage =
            "سورة ${getSurahNameArabic(padgeinfo[i]["surah"]!)}";
        if ((padgeinfo[i]["start"]) == 1) {
          fullpage.add("سورة ${getSurahNameArabic(padgeinfo[i]["surah"]!)}");

          if ((padgeinfo[i]["surah"]) != 1) {
            fullpage.add(basmala);
          }
        }
        for (var a = 0;
            a < (((padgeinfo[i]["end"])! - (padgeinfo[i]["start"])!) + 1);
            a++) {
          fullsura += verses[addverses];

          addverses++;
        }
        fullpage.add(fullsura);
      }
    }
  }
}
