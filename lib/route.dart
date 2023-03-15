import 'package:go_router/go_router.dart';

import 'package:muslim/views/homeview.dart';
import 'package:muslim/views/myquran.dart';
import 'package:muslim/views/sittingview.dart';
import 'package:muslim/views/splashview.dart';
import 'package:muslim/views/surahview.dart';
import 'package:muslim/views/surahviewbypage.dart';
import 'package:muslim/views/tasbih_view.dart';

// ignore: camel_case_types
abstract class navegat {
  static const homeViewRoute = "/homeview";
  static const tasbihViewRoute = "/tasbihview";
  static const myquranviewRoute = "/myquranview";
  static const surahtextview = "/surahtextview";
  static const surahviewbypageview = "/surahviewbypageview";
  // ignore: constant_identifier_names
  static const SettingsviewRoute = "/Settingsviewview";
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: "/",
        builder: (context, state) => const splashview(),
      ),
      GoRoute(
        path: homeViewRoute,
        builder: (context, state) =>  homeview(),
      ),
      GoRoute(
        path: tasbihViewRoute,
        builder: (context, state) => const tasbihview(),
      ),
      GoRoute(
        path: myquranviewRoute,
        builder: (context, state) => const myquranview(),
      ),
      GoRoute(
        path: surahtextview,
        builder: (context, state) {
          dynamic surahnum = state.extra as int;
          return surahview(pagenum: surahnum);
        },
      ),
       GoRoute(
      path: surahviewbypageview,
      builder: (context, state) {
        dynamic surahnum = state.extra as int;
        return surahviewbypage(pagenum:surahnum);
      },
    ),
    GoRoute(
        path: SettingsviewRoute,
        builder: (context, state) => const Settings(),
      ),
      GoRoute(
        path: SettingsviewRoute,
        builder: (context, state) => const Settings(),
      ),
    ],
  );
}
