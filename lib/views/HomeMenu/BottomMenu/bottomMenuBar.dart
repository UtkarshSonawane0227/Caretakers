import 'package:caretaker/views/AccountScreen/accountScreen.dart';
import 'package:caretaker/views/BillScreen/billsScreen.dart';
import 'package:caretaker/views/homeScreen/homeScreen.dart';
import 'package:caretaker/views/servicesScreen/servicesScreen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomMenuBar extends StatefulWidget {
  const BottomMenuBar({super.key});

  @override
  State<BottomMenuBar> createState() => _BottomMenuBarState();
}

class _BottomMenuBarState extends State<BottomMenuBar> {
  int myIndex = 0;
  List<Widget> widgetList = [
    HomeScreen(),
    ServicesScreen(),
    BillsScreen(),
    AccountScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        children: widgetList,
        index: myIndex,
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color.fromARGB(255, 210, 63, 1),
        // showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            myIndex = index;
          });
        },
        currentIndex: myIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              size: 30,
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                size: 30,
                FontAwesomeIcons.qrcode,
              ),
              label: 'favorite'),
          BottomNavigationBarItem(
              icon: Icon(
                size: 30,
                FontAwesomeIcons.scroll,
              ),
              label: 'Chat'),
          BottomNavigationBarItem(
              icon: Icon(
                size: 30,
                FontAwesomeIcons.user,
              ),
              label: 'Account'),
        ],
      ),
    );
  }
}
