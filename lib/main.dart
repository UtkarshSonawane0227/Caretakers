import 'package:caretaker/controllers/auth_controller.dart';
import 'package:caretaker/controllers/slider_page_controller.dart';
import 'package:caretaker/views/loginPage/logoPage/logoScreen.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const CareConnect());
}

class CareConnect extends StatefulWidget {
  const CareConnect({super.key});

  @override
  State<CareConnect> createState() => _CareConnectState();
}

class _CareConnectState extends State<CareConnect> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => SliderPageController(),
          ),
          ChangeNotifierProvider(
            create: (_) => AuthController(),
          ),
        ],
        child:
            MaterialApp(debugShowCheckedModeBanner: false, home: LogoScreen()));
  }
}
