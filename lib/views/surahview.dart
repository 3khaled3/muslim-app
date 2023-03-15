import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:muslim/wedget/showsurah.dart';
import 'package:quran/quran.dart';

// ignore: camel_case_types
class surahview extends StatefulWidget {
  const surahview({super.key, required this.pagenum});
  final int pagenum;

  @override
  State<surahview> createState() => _surahviewState();
}

// ignore: camel_case_types
class _surahviewState extends State<surahview> {
  List<Widget> slideList = [];
  CarouselController controller = CarouselController();
  int num = 0;
  int page=1;
  @override
  void initState() {
    super.initState();
    num = (widget.pagenum);
   page= getPageNumber(num, 1);
    

    for (var i = 0; i < 604; i++) {
      slideList.add(showsurah(pagenum: i + 1));
    }
    WidgetsBinding.instance.addPostFrameCallback((_) {
      moveto();
    });
  }

  moveto() async {
    await controller.animateToPage(page-1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEFBEC),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SafeArea(
          child: CarouselSlider(
            carouselController: controller, items: slideList,

            options: CarouselOptions(
              viewportFraction: 1.0,
              enlargeCenterPage: false,
              height: MediaQuery.of(context).size.height,

              enableInfiniteScroll: true,
              
            ),
            
          ),
        ),
      ),
    );
  }
}
