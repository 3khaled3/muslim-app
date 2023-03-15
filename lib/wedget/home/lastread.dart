import 'package:flutter/material.dart';

// ignore: camel_case_types
class lastreadform extends StatelessWidget {
  const lastreadform(
      {super.key,
      this.headtext,
      required this.meantext,
      required this.icon,
      required this.onTap});
  final String? headtext;
  final String meantext;
  final String icon;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Container(
          height: 100,
          decoration: BoxDecoration(
            color: Colors.blue[200],
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    headtext ?? "",
                    style: const TextStyle(
                        color: Colors.white60,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  Text(
                    meantext,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  const Spacer(
                    flex: 2,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 8, right: 8, top: 10),
                    child: Text(
                      "Go to >",
                      style: TextStyle(
                        color: Colors.white60,
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  icon,
                  height: 80,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
