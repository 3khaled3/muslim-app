import 'package:flutter/material.dart';

PreferredSizeWidget homeappBar (BuildContext context) {
    return   AppBar(
        iconTheme: IconThemeData(color: Colors.blue[400]),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Quran",
          style: TextStyle(
              color: Colors.blue[400],
              fontSize: 28,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      );
  }
