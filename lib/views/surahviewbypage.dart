import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:muslim/wedget/showsurah.dart';

// ignore: camel_case_types
class surahviewbypage extends StatefulWidget {
  const surahviewbypage({super.key, required this.pagenum});
  final int pagenum;

  @override
  State<surahviewbypage> createState() => _surahviewbypageState();
}

// ignore: camel_case_types
class _surahviewbypageState extends State<surahviewbypage> {
  List<Widget> slideList = [];
  CarouselController controller = CarouselController();
  int num = 0;
  @override
  void initState() {
    super.initState();
    num = (widget.pagenum);

    for (var i = 0; i < 604; i++) {
      slideList.add(showsurah(pagenum: i + 1));
    }
    WidgetsBinding.instance.addPostFrameCallback((_) {
      moveto();
    });
  }

  moveto() async {
    await controller.animateToPage(num-1);
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
              // autoPlay: true,
            ),
            // itemCount: 604,
          ),
        ),
      ),
    );
  }
}
