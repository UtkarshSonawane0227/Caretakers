import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginAddScreen extends StatefulWidget {
  const LoginAddScreen({super.key});

  @override
  State<LoginAddScreen> createState() => _LoginAddScreenState();
}

class _LoginAddScreenState extends State<LoginAddScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            ListView(
              physics: BouncingScrollPhysics(),
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.6,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(50),
                    ),
                    image: DecorationImage(
                        image:
                            // width: MediaQuery.of(context).size.width,
                            // height: MediaQuery.of(context).size.height * 0.6,
                            AssetImage('assets/images/familyPic/family1.jpg'),
                        fit: BoxFit.cover),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'All that matters is \n your happiness',
                      style: TextStyle(
                          fontFamily: 'Tajawal',
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                    // SizedBox(height: 20),
                    FilledButton(
                      style: FilledButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 222, 168, 151),
                      ),
                      onPressed: () {
                        // print(index);
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'MadimiOne'),
                      ),
                    )
                        .box
                        .width(context.screenWidth * 0.8)
                        .height(context.screenWidth * 0.12)
                        .margin(EdgeInsets.only(top: 20))
                        .make()
                  ],
                )
              ],
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Skiped',
                style: TextStyle(
                    color: Colors.grey,
                    fontFamily: 'Poppins-Regular',
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ).positioned(
              top: 20,
              right: 10,
            ),
            Positioned(
                top: 630,
                left: 120,
                child: Row(
                  children: [
                    Text(
                      'New User ?',
                      style: TextStyle(
                          fontFamily: 'Poppins-Regular',
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Create An Account',
                        style: TextStyle(
                            color: const Color.fromARGB(255, 236, 163, 163),
                            fontFamily: 'Poppins-Regular',
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
