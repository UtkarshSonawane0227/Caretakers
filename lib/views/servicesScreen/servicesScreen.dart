import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:velocity_x/velocity_x.dart';

class ServicesScreen extends StatefulWidget {
  const ServicesScreen({super.key});

  @override
  State<ServicesScreen> createState() => _ServicesScreenState();
}

class _ServicesScreenState extends State<ServicesScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        child: Stack(
          children: [
            ListView(
              // padding: EdgeInsets.only(right: 35, left: 35, top: 50),
              children: [
                Container(
                  padding:
                      EdgeInsets.only(top: 15, right: 25, left: 25, bottom: 10),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 249, 248, 246),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25),
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.menu),
                          Text('Care Connect',
                              style: TextStyle(
                                  fontFamily: 'Rancho',
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold)),
                          Icon(Icons.notifications),
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 3, bottom: 15),
                        child: Row(
                          children: [
                            Icon(Icons.edit_location_alt_outlined),
                            Text(
                              '441 4th Street,NW,DC',
                              style: TextStyle(
                                  fontFamily: 'Mulish-Medium',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                      ),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 5, bottom: 35),
                            width: MediaQuery.of(context).size.width * 0.75,
                            height: 55,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: 'Type service name',
                                hintStyle: TextStyle(
                                    fontFamily: 'Syne-Medium',
                                    fontSize: 16,
                                    color: Colors.grey.shade400),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.blue, width: 2.0),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8.0)),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.blue, width: 2.0),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8.0)),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 25),
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(size: 25, FontAwesomeIcons.filter)),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 35, left: 35, top: 25),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      Text('All Services',
                          style: TextStyle(
                              fontFamily: 'Syne-Medium',
                              fontSize: 22,
                              color: Colors.black,
                              fontWeight: FontWeight.w500)),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.04,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          iconContainer(
                            imageUrl: 'assets/images/Icons/HomeIcons.png',
                            title: 'Home \ncleaning',
                            onPressed: () {},
                            Color: const Color.fromARGB(255, 145, 137, 137),
                          ),
                          30.widthBox,
                          iconContainer(
                            imageUrl: 'assets/images/Icons/female.png',
                            title: 'Beauty\n',
                            onPressed: () {},
                            Color: Color.fromARGB(255, 236, 169, 255),
                          ),
                          30.widthBox,
                          iconContainer(
                            imageUrl: 'assets/images/Icons/airCare.png',
                            title: 'AC \nRepair',
                            onPressed: () {},
                            Color: Color.fromARGB(255, 177, 180, 182),
                          ),
                          30.widthBox,
                          iconContainer(
                            imageUrl: 'assets/images/Icons/salon.png',
                            title: 'Salon\n',
                            onPressed: () {},
                            Color: Color.fromARGB(255, 196, 196, 233),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.04,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          iconContainer(
                            imageUrl: 'assets/images/Icons/carpenter.png',
                            title: 'Home \ncleaning',
                            onPressed: () {},
                            Color: Color.fromARGB(255, 199, 174, 174),
                          ),
                          30.widthBox,
                          iconContainer(
                            imageUrl: 'assets/images/Icons/elctricion.png',
                            title: 'Beauty\n',
                            onPressed: () {},
                            Color: Color.fromARGB(255, 181, 233, 233),
                          ),
                          30.widthBox,
                          iconContainer(
                            imageUrl: 'assets/images/Icons/cleaning.png',
                            title: 'AC \nRepair',
                            onPressed: () {},
                            Color: Color.fromARGB(255, 154, 176, 190),
                          ),
                          30.widthBox,
                          iconContainer(
                            imageUrl: 'assets/images/Icons/penter.png',
                            title: 'Salon\n',
                            onPressed: () {},
                            Color: Color.fromARGB(255, 236, 196, 171),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.04,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          iconContainer(
                            imageUrl: 'assets/images/Icons/womentheripy.png',
                            title: 'Home \ncleaning',
                            onPressed: () {},
                            Color: Color.fromARGB(255, 194, 149, 149),
                          ),
                          30.widthBox,
                          iconContainer(
                            imageUrl: 'assets/images/Icons/rapair.png',
                            title: 'Beauty\n',
                            onPressed: () {},
                            Color: Color.fromARGB(255, 176, 183, 126),
                          ),
                          30.widthBox,
                        ],
                      )
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

class iconContainer extends StatelessWidget {
  final String imageUrl;
  final String title;
  // final dynamic Color;
  final Color;

  final VoidCallback onPressed;
  const iconContainer({
    required this.Color,
    required this.imageUrl,
    required this.title,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onPressed,
          child: Container(
            height: 60,
            width: MediaQuery.of(context).size.width * 0.15,
            decoration: BoxDecoration(
                color: Color, borderRadius: BorderRadius.circular(15)),
            child: Image(image: AssetImage(imageUrl)),
          ),
        ),
        10.heightBox,
        Text(
          title,
          style: TextStyle(
              fontFamily: 'Mulish-Medium',
              fontSize: 14,
              fontWeight: FontWeight.w600),
        )
      ],
    );
  }
}
