import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

PreferredSizeWidget appbartasbeeh(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading: IconButton(
        onPressed: () {
          GoRouter.of(context).pop();
        },
        icon: Icon(
          Icons.home,
          color: Colors.blue[400],
          size: 28,
        )),
    title: Text(
      "Tasbih",
      style: TextStyle(
          color: Colors.blue[400], fontSize: 28, fontWeight: FontWeight.bold),
    ),
    centerTitle: true,
  );
}
