import 'package:caretaker/consts/utils/textStyle.dart';
import 'package:caretaker/views/HomeMenu/BottomMenu/bottomMenuBar.dart';
import 'package:caretaker/views/common/TextFiled/customTextField.dart';
import 'package:caretaker/views/homeScreen/homeScreen.dart';
import 'package:caretaker/views/registerPage/registerScreen.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController mailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Stack(
          children: [
            ListView(
              padding: EdgeInsets.only(right: 30, left: 30, top: 110),
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Welcome Back',
                        style: TextStyle(
                            fontFamily: 'Tajawal',
                            fontSize: 39,
                            fontWeight: FontWeight.w700)),
                    Text('Login to your existing account.',
                        style: TextStyle(
                            fontFamily: 'Tajawal',
                            fontSize: 18,
                            fontWeight: FontWeight.w300)),
                    90.heightBox,
                    Column(
                      children: [
                        customTextField(
                          controller: mailController,
                          title: 'Email ID',
                          hints: 'abc@gmail.com',
                        ),
                        20.heightBox,
                        customTextField(
                            controller: passwordController,
                            title: 'Password',
                            hints: 'Abc@334',
                            hide: true),
                        15.heightBox,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            // TextButton(
                            //     onPressed: () {},
                            //     child: Text('Forget Password'))

                            FilledButton(
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.white),
                                ),
                                onPressed: () {},
                                child: Text(
                                  'Forget Password',
                                  style: TextStyle(color: Colors.black),
                                ))
                          ],
                        ),
                        // 80.heightBox,
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.05,
                        ),
                        FilledButton(
                          style: FilledButton.styleFrom(
                            shape: BeveledRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            backgroundColor: Color.fromARGB(255, 222, 168, 151),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BottomMenuBar()),
                            );
                          },
                          child: Text("Create an Account",
                              style: AppTextStyles.body18Bold),
                        )
                            .box
                            .width(context.screenWidth * 0.5)
                            .height(context.screenHeight * 0.05)
                            // .margin(EdgeInsets.only(top: 3))
                            .make()
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'New User ?',
                          style: TextStyle(
                              fontFamily: 'Poppins-Regular',
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RegisterScreen()),
                            );
                          },
                          child: Text(
                            'Create An Account',
                            style: TextStyle(
                                color: const Color.fromARGB(255, 236, 163, 163),
                                fontFamily: 'Poppins-Regular',
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
