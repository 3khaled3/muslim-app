import 'package:flutter/material.dart';
import 'package:muslim/wedget/myquran/suralist.dart';
import '../wedget/myquran/appbarmyquran.dart';
import '../wedget/myquran/surahpageslist.dart';

// ignore: camel_case_types
class myquranview extends StatelessWidget {
  const myquranview({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: appbarmyquran(context),
        body: const TabBarView(
          children: [
            surahlist(),
            surahpageslist(),
          ],
        ),
      ),
    );
  }
}
