import 'dart:js_util';

import 'package:caretaker/views/HomeMenu/BottomMenu/bottomMenuBar.dart';
import 'package:caretaker/views/Pages/ContactUS/contactus.dart';
import 'package:caretaker/views/Pages/aboutPage/appAboutScreen.dart';
import 'package:caretaker/views/homeScreen/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:velocity_x/velocity_x.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.90,
      child: Drawer(
        backgroundColor: Colors.transparent,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(90),
                  topRight: Radius.circular(60))),
          child: ListView(
            padding: EdgeInsets.only(bottom: 10),
            children: [
              Image(image: AssetImage('assets/images/Logo/CareConnectpic.png')),
              // UserAccountsDrawerHeader(
              //   accountName: const Text('Utkarsh Sonawane'),
              //   accountEmail: const Text('utk@gmail.com'),
              //   currentAccountPicture: CircleAvatar(
              //     backgroundImage: AssetImage(
              //       'assets/images/Services/salonPaller.jpg',
              //     ),
              //   ),
              //   decoration: BoxDecoration(
              //       color: const Color.fromARGB(255, 206, 89, 128),
              //       borderRadius:
              //           BorderRadius.only(bottomRight: Radius.circular(70))),
              // ),

              10.heightBox,
              sideMenuIcons(
                icons: FontAwesomeIcons.igloo,
                text: 'Home',
                index: 1,
                selectedIndex: _selectedIndex,
                onpressed: () {
                  _selectedIndex = 1;
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BottomMenuBar()),
                  );
                  setState(() {});

                  print('Home icons is pressed');
                },
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.0040),
              sideMenuIcons(
                icons: FontAwesomeIcons.globe,
                text: 'Language',
                index: 2,
                selectedIndex: _selectedIndex,
                onpressed: () {
                  setState(() {
                    _selectedIndex = 2;
                  });
                  print('Language icons is pressed');
                },
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.0040),
              sideMenuIcons(
                icons: FontAwesomeIcons.heart,
                text: 'Favorite Service ',
                index: 3,
                selectedIndex: _selectedIndex,
                onpressed: () {
                  setState(() {
                    _selectedIndex = 3;
                  });
                  print('Favorite Service icons is pressed');
                },
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.0040),
              sideMenuIcons(
                icons: FontAwesomeIcons.tag,
                index: 4,
                selectedIndex: _selectedIndex,
                text: 'Offers',
                onpressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                  setState(() {
                    _selectedIndex = 4;
                  });
                  print('Home icons is pressed');
                },
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.0040),
              sideMenuIcons(
                icons: FontAwesomeIcons.unlockKeyhole,
                text: 'Change Password',
                index: 5,
                selectedIndex: _selectedIndex,
                onpressed: () {
                  _selectedIndex = 5;

                  print('Home icons is pressed');
                },
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.0040),
              sideMenuIcons(
                icons: FontAwesomeIcons.circleInfo,
                text: 'About Us',
                index: 6,
                selectedIndex: _selectedIndex,
                onpressed: () {
                  _selectedIndex = 6;
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AboutScreen()),
                  );

                  print('Home icons is pressed');
                },
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.0040),
              sideMenuIcons(
                icons: FontAwesomeIcons.headset,
                text: 'Contact Us',
                index: 7,
                selectedIndex: _selectedIndex,
                onpressed: () {
                  _selectedIndex = 7;
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ContactUsScreen()),
                  );

                  print('Home icons is pressed');
                },
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.0040),
              sideMenuIcons(
                icons: FontAwesomeIcons.rightFromBracket,
                text: 'Logout',
                index: 8,
                selectedIndex: _selectedIndex,
                onpressed: () {
                  _selectedIndex = 8;

                  print('Home icons is pressed');
                },
              ),
              Padding(
                padding: const EdgeInsets.only(top: 170, left: 25),
                child: Text(
                  'version 1.0',
                  style: TextStyle(
                      color: Colors.grey.shade600,
                      fontFamily: 'Syne-Medium',
                      fontSize: 14,
                      fontWeight: FontWeight.w700),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class sideMenuIcons extends StatelessWidget {
  const sideMenuIcons({
    super.key,
    this.icons,
    required this.text,
    required this.onpressed,
    required this.index,
    required this.selectedIndex,
  });
  final dynamic icons;
  final String text;
  final dynamic onpressed;
  final int index;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icons,
          color: index == selectedIndex
              ? Color.fromARGB(255, 243, 110, 33)
              : null),
      title: Text(
        text,
        style: TextStyle(
            fontFamily: 'Syne-Medium',
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: index == selectedIndex
                ? const Color.fromARGB(255, 243, 110, 33)
                : null),
      ),
      onTap: onpressed,
    );
  }
}
