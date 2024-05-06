import 'dart:js_util';

import 'package:caretaker/consts/utils/textStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:velocity_x/velocity_x.dart';

class YorAreCus_Serv extends StatefulWidget {
  const YorAreCus_Serv({super.key});

  @override
  State<YorAreCus_Serv> createState() => _YorAreCus_ServState();
}

class _YorAreCus_ServState extends State<YorAreCus_Serv> {
  int _selectedValue = 0;

  int selectedSnack = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        child: Stack(
          children: [
            ListView(
              padding: EdgeInsets.only(right: 40, left: 35, top: 60),
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'You are',
                      style: TextStyle(
                          fontFamily: 'Syne-Medium',
                          fontSize: 30,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      'Please select your role for this app.',
                      style: TextStyle(
                          fontFamily: 'Mulish-Medium',
                          fontSize: 16,
                          fontWeight: FontWeight.w300),
                    ),
                    20.heightBox,
                    Column(
                      children: [
                        // Text('selected text$selectedSnack'),
                        Row(
                          children: [
                            radioMenuButton(1),
                            Text(
                              'Customer',
                              style: TextStyle(
                                  fontFamily: 'Mulish-Medium',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300),
                            )
                          ],
                        ),
                        5.heightBox,
                        imageContainer(
                            context, 'assets/images/familyPic/family1.jpg'),
                        15.heightBox,
                        Text('______Or______',
                            style: TextStyle(
                                fontFamily: 'Rancho',
                                color: Colors.grey.shade500)),
                        Row(
                          children: [
                            radioMenuButton(2),
                            Text(
                              'Service Provider',
                              style: TextStyle(
                                  fontFamily: 'Mulish-Medium',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300),
                            )
                          ],
                        ),
                        imageContainer(
                            context, 'assets/images/familyPic/family1.jpg'),

                        30.heightBox,
                        FilledButton(
                            onPressed: () {},
                            style: FilledButton.styleFrom(
                              shape: BeveledRectangleBorder(
                                  borderRadius: BorderRadius.circular(4)),
                              backgroundColor:
                                  Color.fromARGB(255, 222, 168, 151),
                            ),
                            child: Text(
                              'Next',
                              style: TextStyle(
                                  color: Colors.blueGrey.shade900,
                                  fontFamily: 'Mulish-Medium',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300),
                            ))
                      ],
                    )
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

  Container imageContainer(BuildContext context, path) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.25,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          20,
        ),
        image: DecorationImage(
            image:
                // width: MediaQuery.of(context).size.width,
                // height: MediaQuery.of(context).size.height * 0.6,
                AssetImage(path),
            fit: BoxFit.cover),
      ),
    );
  }

  SizedBox radioMenuButton(number) {
    return SizedBox(
      width: 42,
      child: RadioMenuButton(
        value: number,
        groupValue: selectedSnack,
        onChanged: (selectedValue) {
          setState(() => selectedSnack = selectedValue!);
        },
        style: ButtonStyle(
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          elevation: const MaterialStatePropertyAll(2),
          backgroundColor: const MaterialStatePropertyAll(Colors.white),
        ),
        child: const Text(''),
      ),
    );
  }
}
