import 'package:caretaker/views/HomeMenu/SideMenu/drawerScree.dart';
import 'package:flutter/material.dart';

class SideMenuBar extends StatefulWidget {
  const SideMenuBar({super.key});

  @override
  State<SideMenuBar> createState() => _SideMenuBarState();
}

class _SideMenuBarState extends State<SideMenuBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        title: Text('Side Menu Drawer'),
      ),
      body: Container(
        child: Text('Hello'),
      ),
    );
  }
}
