import 'package:flutter/material.dart';

import 'package:muslim/wedget/tasbih/appbar.dart';
import 'package:muslim/wedget/tasbih/tasabihbody.dart';

// ignore: camel_case_types
class tasbihview extends StatelessWidget {
  const tasbihview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbartasbeeh(context),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: const [
            Expanded(child: tasbihbody()),
          ],
        ),
      ),
    );
  }
}
