import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

PreferredSizeWidget appbarmyquran(BuildContext context) {
  return AppBar(
    bottom: const TabBar(
      tabs: [
        Tab(child: Text("Surah")),
        Tab(child: Text("Pages")),
      ],
    ),
    backgroundColor: Colors.grey[500],
    elevation: 0,
    leading: IconButton(
        onPressed: () {
          GoRouter.of(context).pop();
        },
        icon: const Icon(
          Icons.home_outlined,
          color: Color.fromARGB(255, 255, 255, 255),
          size: 28,
        )),
    title: const Text(
      "Quran",
      style: TextStyle(
          color: Color.fromARGB(255, 255, 255, 255),
          fontSize: 28,
          fontWeight: FontWeight.bold),
    ),
    centerTitle: true,
  );
}
