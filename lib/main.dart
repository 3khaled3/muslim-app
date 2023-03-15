import 'package:flutter/material.dart';

import 'package:muslim/route.dart';
import 'package:hive_flutter/adapters.dart';
void main() async{
  await Hive.initFlutter();
  
 
   // ignore: unused_local_variable
   Box saved=await Hive.openBox("saved");
  runApp(const myApp());
}

// ignore: camel_case_types
class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: navegat.router,
      debugShowCheckedModeBanner: false,
    );
  }
}
