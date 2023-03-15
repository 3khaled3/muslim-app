import 'package:flutter/material.dart';

import 'package:hive/hive.dart';
import 'package:quran/quran.dart';

import '../../constant.dart';

// ignore: camel_case_types, must_be_immutable
class surahviewappbar extends StatelessWidget {
   surahviewappbar({super.key,required this.pagenumm,required this.surahnameheadpage});
String surahnameheadpage ;
int pagenumm;
  @override
  Widget build(BuildContext context) {
    return Row(
            children: [
              GestureDetector(
                onTap: () {
                  var box = Hive.box('saved');

                  box.put('pagenum', pagenumm);

                  // ignore: unused_local_variable
                  var pagenum = box.get('pagenum');
                
                  
                },
                child: CircleAvatar(
                  backgroundColor: const Color.fromARGB(0, 255, 255, 255),
                  child: Image.asset(
                      
                      assets.bookmarkicon),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                getVerseEndSymbol(pagenumm, arabicNumeral: true),
                style: TextStyle(
                  fontSize: arabicFontSize,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const Spacer(),
              Text(
                surahnameheadpage,
                style: TextStyle(
                    fontSize: arabicFontSize + 4,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFFEE5250),
                    fontFamily: "quran"),
              ),
            ],
          );
  }
}