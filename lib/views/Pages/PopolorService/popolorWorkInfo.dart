import 'dart:html';

import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:video_player/video_player.dart';

import 'extractWidgetAndMethod/datePicker.dart';
import 'extractWidgetAndMethod/radioButtonRow.dart';
import 'extractWidgetAndMethod/timeTextButton.dart';
import 'extractWidgetAndMethod/vedioDemo.dart';

class PopolorSecondScreen extends StatefulWidget {
  const PopolorSecondScreen({super.key});

  @override
  State<PopolorSecondScreen> createState() => _PopolorSecondScreenState();
}

class _PopolorSecondScreenState extends State<PopolorSecondScreen> {
  int _selectedIndex = 0;

  List<String> _images = [
    'assets/images/Services/salonPaller.jpg',
    'assets/images/salon/salon2.jpg',
    'assets/images/salon/salon3.jpg',
    'assets/images/salon/salon4.jpg'
  ];

  void _changeImage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  TextEditingController _dateController = TextEditingController();
  String selectedTime = ''; // time selected
  ///////
  String _selectedOption = '';

  void _handleRadioValueChange(String? value) {
    setState(() {
      _selectedOption = value ?? '';
    });
  }

  ////////
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 246, 246, 246),
        title: Text(
          'Popolor Service',
          style: TextStyle(
              fontFamily: 'Syne-Medium',
              fontSize: 20,
              fontWeight: FontWeight.w600),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(FontAwesomeIcons.solidEnvelope)),
                10.widthBox,
                IconButton(onPressed: () {}, icon: Icon(FontAwesomeIcons.phone))
              ],
            ),
          )
        ],
      ),
      body: Container(
        child: Stack(
          children: [
            ListView(
              // padding: EdgeInsets.only(right: 30, left: 28, top: 20),
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 246, 246, 246),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(35),
                        bottomLeft: Radius.circular(35)),
                  ),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(right: 30, left: 28, top: 10),
                        child: Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.69,
                              height: MediaQuery.of(context).size.width *
                                  0.69 *
                                  0.80,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 1, 1, 1),
                                borderRadius: BorderRadius.circular(45),
                              ),
                              child: Image.network(
                                _images[_selectedIndex],
                                fit: BoxFit.cover,
                              ),
                            ),
                            10.widthBox,
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                GestureDetector(
                                  onTap: () => _changeImage(0),
                                  child: CircleAvatar(
                                    radius: MediaQuery.of(context).size.width *
                                        0.065,
                                    backgroundImage: AssetImage(
                                      'assets/images/Services/salonPaller.jpg',
                                    ),
                                  ),
                                ),
                                10.heightBox,
                                GestureDetector(
                                  onTap: () => _changeImage(1),
                                  child: CircleAvatar(
                                    radius: MediaQuery.of(context).size.width *
                                        0.065,
                                    backgroundImage: AssetImage(
                                        'assets/images/salon/salon2.jpg'),
                                  ),
                                ),
                                10.heightBox,
                                GestureDetector(
                                  onTap: () => _changeImage(2),
                                  child: CircleAvatar(
                                    radius: MediaQuery.of(context).size.width *
                                        0.065,
                                    backgroundImage: AssetImage(
                                      'assets/images/salon/salon3.jpg', // Replace 'your_image.jpg' with your image path
                                    ),
                                  ),
                                ),
                                10.heightBox,
                                GestureDetector(
                                  onTap: () => _changeImage(3),
                                  child: CircleAvatar(
                                    radius: MediaQuery.of(context).size.width *
                                        0.065,
                                    backgroundImage: AssetImage(
                                      'assets/images/salon/salon4.jpg', // Replace 'your_image.jpg' with your image path
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(right: 30, left: 28, top: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Hair Services',
                                style: TextStyle(
                                    fontFamily: 'Syne-Medium',
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold)),
                            Text(
                                'Hair services encompass a diverse range of offerings aimed at enhancing the health,hair services may include cutting, coloring, highlighting ',
                                style: TextStyle(
                                    fontFamily: 'Mulish-Medium',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600)),
                            Divider(
                              thickness: 1,
                            ),
                            10.heightBox,
                            Row(
                              children: [
                                CircleAvatar(
                                  radius:
                                      MediaQuery.of(context).size.width * 0.065,
                                  backgroundImage: AssetImage(
                                      'assets/images/salon/salonProfile.jpg'),
                                ),
                                20.widthBox,
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Pankaj Patil',
                                        style: TextStyle(
                                            fontFamily: 'Syne-Medium',
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold)),
                                    Text('5+year ago ',
                                        style: TextStyle(
                                            color: Colors.grey.shade500,
                                            fontFamily: 'Syne-Medium',
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold)),
                                  ],
                                )
                              ],
                            ),
                            25.heightBox,
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30, left: 28, top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Watch A Demo',
                        style: TextStyle(
                            fontFamily: 'Syne-Medium',
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.045,
                      ),
                      vedioDemo(),
                      20.heightBox,
                      Text(
                        'Select Date & Time',
                        style: TextStyle(
                            fontFamily: 'Syne-Medium',
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      20.heightBox,
                      Container(
                        width: MediaQuery.of(context).size.width * 0.95,
                        height: MediaQuery.of(context).size.height * 0.28,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: const Color.fromARGB(255, 236, 234, 234)),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              right: 30, left: 28, top: 20),
                          child: Column(
                            children: [
                              DatePicker(),
                              10.heightBox,
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  timeTextButton(
                                    time: '9.00AM',
                                    onPressed: () {
                                      setState(() {
                                        selectedTime = '9:00AM';
                                      });
                                    },
                                    isSelected: selectedTime == '9:00AM',
                                  ),
                                  timeTextButton(
                                    time: '11:30AM',
                                    onPressed: () {
                                      setState(() {
                                        selectedTime = '11:30AM';
                                      });
                                    },
                                    isSelected: selectedTime == '11:30AM',
                                  ),
                                  timeTextButton(
                                    time: '02:30PM',
                                    onPressed: () {
                                      setState(() {
                                        selectedTime = '02:30PM';
                                      });
                                    },
                                    isSelected: selectedTime == '02:30PM',
                                  ),
                                ],
                              ),
                              15.heightBox,
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  timeTextButton(
                                    time: '04:00PM',
                                    onPressed: () {
                                      setState(() {
                                        selectedTime = '04:00PM';
                                      });
                                    },
                                    isSelected: selectedTime == '04:00PM',
                                  ),
                                  timeTextButton(
                                    time: '05:30PM',
                                    onPressed: () {
                                      setState(() {
                                        selectedTime = '05:30PM';
                                      });
                                    },
                                    isSelected: selectedTime == '05:30PM',
                                  ),
                                  timeTextButton(
                                    time: '08:00PM',
                                    onPressed: () {
                                      setState(() {
                                        selectedTime = '08:00PM';
                                      });
                                    },
                                    isSelected: selectedTime == '08:00PM',
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ), //time duration Button
                      20.heightBox,
                      Text(
                        'Select Services ',
                        style: TextStyle(
                            fontFamily: 'Syne-Medium',
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      20.heightBox,
                      Container(
                        width: MediaQuery.of(context).size.width * 0.95,
                        height: MediaQuery.of(context).size.height * 0.20,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: const Color.fromARGB(255, 236, 234, 234)),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              right: 30, left: 28, top: 10),
                          child: Column(
                            children: [
                              RadioButtonRow(
                                value: 'option1',
                                groupValue: _selectedOption,
                                onChanged: _handleRadioValueChange,
                                text: 'Keratin Repair Hair Spa',
                              ),
                              RadioButtonRow(
                                value: 'option2',
                                groupValue: _selectedOption,
                                onChanged: _handleRadioValueChange,
                                text: 'Style & Trim',
                              ),
                              RadioButtonRow(
                                value: 'option3',
                                groupValue: _selectedOption,
                                onChanged: _handleRadioValueChange,
                                text: 'Hair Spa & Trim',
                              ),
                              RadioButtonRow(
                                value: 'option4',
                                groupValue: _selectedOption,
                                onChanged: _handleRadioValueChange,
                                text: 'Relaxing Head Oil Massage',
                              ),
                            ],
                          ),
                        ),
                      ),
                      20.heightBox,
                      Text(
                        'Promocode / Offers ',
                        style: TextStyle(
                            fontFamily: 'Syne-Medium',
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      10.heightBox,
                      Column(
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                                hintText: 'Types Of Code',
                                hintStyle: TextStyle(
                                    fontFamily: 'Mulish-Medium',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(50))),
                          ),
                          15.heightBox,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Apply the Code => =>',
                                  style: TextStyle(
                                      color: Colors.grey.shade500,
                                      fontFamily: 'Mulish-Medium',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700)),
                              TextButton(
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 10),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                      side: BorderSide(
                                          color: Colors.black, width: 1.0)),
                                ),
                                onPressed: () {},
                                child: Text(
                                  'Apply',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Mulish-Medium',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700),
                                ),
                              )
                            ],
                          ),
                          50.heightBox
                        ],
                      ),
                      35.heightBox,
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('50.00 ',
                              style: TextStyle(
                                  fontFamily: 'Mulish-Medium',
                                  fontSize: 30,
                                  fontWeight: FontWeight.w700)),
                          130.widthBox,
                          TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 187, 165, 165),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 25, vertical: 20),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                  side: BorderSide(
                                      color: Colors.black, width: 1.0)),
                            ),
                            onPressed: () {},
                            child: Text(
                              'Book Now',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Mulish-Medium',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ],
                      ),
                      30.heightBox
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
