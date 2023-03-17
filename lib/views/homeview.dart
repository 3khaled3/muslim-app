import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hive/hive.dart';
import 'package:muslim/constant.dart';
import 'package:muslim/route.dart';
import 'package:muslim/views/sidebarview.dart';
import 'package:muslim/wedget/home/lastread.dart';

import '../wedget/home/appbar.dart';

// ignore: camel_case_types, must_be_immutable
class homeview extends StatelessWidget {
  homeview({super.key});
  var box = Hive.box('saved');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: const NavDrawer(),
      appBar: homeappBar(context),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Image.asset(
              assets.ramadanicon,
              height: MediaQuery.of(context).size.height * .2,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          lastreadform(
              meantext: "last Read",
              icon: assets.lastreadicon,
              onTap: () {
                var num = box.get('pagenum');

                GoRouter.of(context)
                    .push(navegat.surahviewbypageview, extra: num ?? 1);
              }),
          const SizedBox(
            height: 20,
          ),
          lastreadform(
            meantext: "Quran",
            icon: assets.quranicon,
            onTap: () {
              GoRouter.of(context).push(navegat.myquranviewRoute);
            },
          ),
          const SizedBox(
            height: 20,
          ),
          lastreadform(
            meantext: "tasbih",
            icon: assets.tasbehicon,
            onTap: () {
              GoRouter.of(context).push(navegat.tasbihViewRoute);
            },
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
