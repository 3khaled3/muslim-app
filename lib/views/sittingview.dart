import 'package:flutter/material.dart';
import 'package:quran/quran.dart';
import '../constant.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
     // ignore: non_constant_identifier_names
     double Slidervaliue=arabicFontSize;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Settings",
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Text(
                  'Arabic Font Size:',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Slider(
                  value: arabicFontSize,
                  min: 20,
                  max: 40,
                  // ignore: non_constant_identifier_names
                  onChanged: (Slidervaliue) {
                    setState(() {
                      arabicFontSize = Slidervaliue;
                    });
                  },
                ),
                Text(
                  basmala,
                  style: TextStyle(
                    fontFamily: 'quran',
                    fontSize: arabicFontSize,
                  ),
                  textDirection: TextDirection.rtl,
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        arabicFontSize = 28;
                        setState(() {
                          
                        });
                      },
                      child: const Text('Reset'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        arabicFontSize = Slidervaliue;
                        Navigator.of(context).pop();
                        Navigator.of(context).pop();
                      },
                      child: const Text('Save'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
