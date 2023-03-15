import 'package:flutter/material.dart';

// ignore: camel_case_types
class custombuttom extends StatelessWidget {
  const custombuttom({super.key, required this.title, required this.onPressed});
  final String? title;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            Colors.white70,
          ),
          // minimumSize: MaterialStateProperty.all(const Size(double.infinity, 40)),
        ),
        child: Text(
          title!,
          style: const TextStyle(
            color: Color.fromARGB(255, 25, 51, 123),
          ),
        ),
      ),
    );
  }
}
