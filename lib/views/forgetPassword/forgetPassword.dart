import 'package:caretaker/views/common/TextFiled/customTextField.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:email_auth/email_auth.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  TextEditingController mailController = TextEditingController();
  TextEditingController otpController = TextEditingController();

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
                      'Forgot Password',
                      style: TextStyle(
                          fontFamily: 'Syne-Medium',
                          fontSize: 30,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      'We just need your registered Email id \n to sent you a reset password link.',
                      style: TextStyle(
                          fontFamily: 'Mulish-Medium',
                          fontSize: 16,
                          fontWeight: FontWeight.w300),
                    ),
                    80.heightBox,
                    Center(
                      child: SizedBox(
                        width: 400,
                        child: Column(
                          children: [
                            customTextField(
                              title: 'Email Id',
                              controller: mailController,
                              hints: 'Abc@3421',
                            ),
                            20.heightBox,
                            customTextField(
                              title: 'OTP',
                              controller: otpController,
                              hints: '1256',
                              keyboardtype: TextInputType.number,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                    Center(
                      child: SizedBox(
                        width: 250,
                        height: MediaQuery.of(context).size.height * 0.06,
                        child: FilledButton(
                            onPressed: () {},
                            style: FilledButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  side: BorderSide.none,
                                  borderRadius: BorderRadius.circular(14)),
                              backgroundColor:
                                  Color.fromARGB(255, 222, 168, 151),
                            ),
                            child: Text(
                              'Next',
                              style: TextStyle(
                                  color: Colors.blueGrey.shade900,
                                  fontFamily: 'Mulish-Medium',
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
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
            TextButton(
                    style: ButtonStyle(
                        overlayColor:
                            MaterialStateProperty.all(Colors.transparent)),
                    onPressed: () {
                      print('hello');
                    },
                    child: Text('send otp'))
                .positioned(top: 265, right: 55),
          ],
        ),
      ),
    ));
  }
}
