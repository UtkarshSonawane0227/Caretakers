// import 'dart:isolate';

import 'package:caretaker/views/Pages/PopolorService/popolorServices.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Stack(children: [
            ListView(
              padding: EdgeInsets.only(right: 35, left: 35, top: 50),
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello,',
                      style: TextStyle(
                          fontFamily: 'Syne-Medium',
                          fontSize: 29,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Which services do you want today?',
                      style: TextStyle(
                          fontFamily: 'Mulish-Medium',
                          fontSize: 18,
                          fontWeight: FontWeight.w300),
                    ),
                    15.heightBox,
                    Container(
                        height: 190,
                        width: MediaQuery.of(context).size.width * 350,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/Services/carpenter.jpg'),
                              fit: BoxFit.fill),
                        ),
                        child: ListView(
                            physics: NeverScrollableScrollPhysics(),
                            padding: EdgeInsets.only(right: 30, left: 15),
                            children: [
                              Image(
                                  image: AssetImage(
                                      'assets/images/Logo/discount.png'))
                            ])),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 60,
                                width: MediaQuery.of(context).size.width * 0.15,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 174, 178, 255),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Icon(
                                  size: 35,
                                  Icons.home,
                                  color: Color.fromARGB(255, 67, 4, 215),
                                ),
                              ),
                              15.widthBox,
                              Container(
                                  height: 60,
                                  width:
                                      MediaQuery.of(context).size.width * 0.15,
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 236, 169, 255),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Container(
                                    child: Image(
                                        image: AssetImage(
                                            'assets/images/Icons/female.png')),
                                  )),
                              15.widthBox,
                              Container(
                                height: 60,
                                width: MediaQuery.of(context).size.width * 0.15,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 177, 180, 182),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Image(
                                    image: AssetImage(
                                        'assets/images/Icons/airCare.png')),
                              ),
                              15.widthBox,
                              Container(
                                height: 60,
                                width: MediaQuery.of(context).size.width * 0.15,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 196, 196, 233),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Image(
                                    image: AssetImage(
                                        'assets/images/Icons/salon.png')),
                              ),
                              15.widthBox,
                              Container(
                                height: 60,
                                width: MediaQuery.of(context).size.width * 0.15,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 152, 196, 183),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Image(
                                    image: AssetImage(
                                        'assets/images/Icons/Electriction.png')),
                              ),
                            ],
                          ),
                          10.heightBox,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Home\ncleanning',
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontFamily: 'Syne-Medium'),
                                  )),
                              // 0.widthBox,
                              TextButton(
                                  onPressed: () {},
                                  child: Text('Beauty',
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontFamily: 'Syne-Medium'))),
                              5.widthBox,
                              TextButton(
                                  onPressed: () {},
                                  child: Text('AC\nRepair',
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontFamily: 'Syne-Medium'))),
                              2.widthBox,
                              TextButton(
                                  style: ButtonStyle(
                                      backgroundColor: MaterialStatePropertyAll(
                                          Colors.white)),
                                  onPressed: () {},
                                  child: Text('Salon',
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontFamily: 'Syne-Medium'))),

                              TextButton(
                                  onPressed: () {},
                                  child: Text('Eletriction',
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontFamily: 'Syne-Medium'))),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Popolor Services',
                          style: TextStyle(
                              fontFamily: 'Mulish-Medium',
                              fontSize: 16,
                              fontWeight: FontWeight.w800),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        PopolorServiceScreen()));
                          },
                          child: Text(
                            'View All',
                            style: TextStyle(
                                fontFamily: 'Mulish-Medium',
                                fontSize: 16,
                                fontWeight: FontWeight.w800),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          serviceContainer(
                            Image: AssetImage(
                                'assets/images/Services/salonPaller.jpg'),
                            text: 'Hair spa & trim',
                            PriceText: '₹200-₹300',
                          ),
                          15.widthBox,
                          serviceContainer(
                            Image: AssetImage(
                                'assets/images/Services/gasFitter.png'),
                            text: 'Hair spa & trim',
                            PriceText: '₹500-₹600',
                          ),
                          15.widthBox,
                          serviceContainer(
                            Image: AssetImage(
                                'assets/images/Services/AcService.jpg'),
                            text: 'Hair spa & trim',
                            PriceText: '₹800-₹900',
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
            Image(
              width: 180,
              height: 150,
              image: AssetImage('assets/images/Logo/CareConnectpic.png'),
            ).positioned(top: -40, right: 0),
          ]),
        ),
      ),
    );
  }
}

class serviceContainer extends StatelessWidget {
  const serviceContainer({
    super.key,
    required this.Image,
    required this.text,
    required this.PriceText,
  });
  final dynamic Image;
  final String text;
  final String PriceText;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 175,
      height: MediaQuery.of(context).size.height * 0.25,
      width: MediaQuery.of(context).size.width * 0.45,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color.fromARGB(255, 243, 235, 235)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 120,
            width: MediaQuery.of(context).size.width * 0.43,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(image: Image, fit: BoxFit.fill),
            ),
          ),
          // 5.heightBox,
          Text(text, style: TextStyle(fontSize: 16, fontFamily: 'Syne-Medium')),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // 0widthBox,
              Text(
                  // textAlign: TextAlign.end,
                  PriceText,
                  // ₹',
                  style: TextStyle(
                      fontSize: 19,
                      fontFamily: 'Syne-Medium',
                      fontWeight: FontWeight.bold)),
            ],
          ),
        ],
      ),
    );
  }
}
