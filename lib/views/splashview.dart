import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:muslim/constant.dart';
import 'package:muslim/route.dart';

// ignore: camel_case_types
class splashview extends StatefulWidget {
  const splashview({super.key});

  @override
  State<splashview> createState() => _splashviewState();
}

// ignore: camel_case_types
class _splashviewState extends State<splashview> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      GoRouter.of(context).push(navegat.homeViewRoute);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Image.asset(assets.logo)),
    );
  }
}
