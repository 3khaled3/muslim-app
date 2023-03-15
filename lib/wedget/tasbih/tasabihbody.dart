import 'package:flutter/material.dart';

// ignore: camel_case_types
class tasbihbody extends StatefulWidget {
  const tasbihbody({super.key});

  @override
  State<tasbihbody> createState() => _tasbihbodyState();
}

// ignore: camel_case_types
class _tasbihbodyState extends State<tasbihbody> {
  static int number = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Spacer(),
        Text(
          "$number",
          style: TextStyle(
              color: Colors.blue[400],
              fontSize: 28,
              fontWeight: FontWeight.bold),
        ),
        const Spacer(),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            GestureDetector(
              onTap: () {
                number = 0;
                setState(() {});
              },
              child: CircleAvatar(
                backgroundColor: Colors.black45,
                maxRadius: MediaQuery.of(context).size.width * .09,
                child: CircleAvatar(
                  backgroundColor: Colors.white70,
                  maxRadius: MediaQuery.of(context).size.width * .086,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                number++;
                setState(() {});
              },
              child: CircleAvatar(
                backgroundColor: Colors.blue[400],
                maxRadius: MediaQuery.of(context).size.width * .43,
                child: CircleAvatar(
                  backgroundColor: Colors.white70,
                  maxRadius: MediaQuery.of(context).size.width * .425,
                ),
              ),
            ),
          ],
        ),
        const Spacer(),
      ],
    );
  }
}
