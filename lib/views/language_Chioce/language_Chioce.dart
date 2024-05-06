import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Language_Choice extends StatefulWidget {
  const Language_Choice({super.key});

  @override
  State<Language_Choice> createState() => _Language_ChoiceState();
}

class _Language_ChoiceState extends State<Language_Choice> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        child: Stack(
          children: [
            ListView(
              padding: EdgeInsets.only(right: 40, left: 35, top: 80),
              children: [
                Column(
                  children: [
                    Text(
                      'Choose Language',
                      style: TextStyle(
                          fontFamily: 'Syne-Medium',
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            ),
            Image(
              width: 180,
              height: 150,
              image: AssetImage('assets/images/CareConnectpic.png'),
            ).positioned(top: -40, right: 0),
          ],
        ),
      ),
    ));
  }
}
