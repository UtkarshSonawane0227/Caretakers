import 'package:caretaker/consts/utils/textStyle.dart';
import 'package:caretaker/controllers/auth_controller.dart';
import 'package:caretaker/views/common/TextFiled/customTextField.dart';
import 'package:caretaker/views/common/TextFiled/mobileNumberTextFiled.dart';
import 'package:caretaker/views/loginPage/loginScreen/loginScreen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:velocity_x/velocity_x.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({
    super.key,
  });

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  // var controller = Provider.of<AuthController>( listen: false
  TextEditingController nameController = TextEditingController();
  TextEditingController mailController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  final formkey = GlobalKey<FormState>();

  bool _passwordValid = false;
  bool _passwordsMatch = false;

  @override
  void initState() {
    super.initState();
    passwordController.addListener(_validatePassword);
    confirmPasswordController.addListener(__validatePasswordMatch);
  }

  @override
  void dispose() {
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  void _validatePassword() {
    String password = passwordController.text;
    setState(() {
      _passwordValid = _isPasswordValidFormat(password);
      print(_passwordValid);
    });
  }

  void __validatePasswordMatch() {
    String password = passwordController.text;
    String confirmPassword = confirmPasswordController.text;
    setState(() {
      _passwordsMatch = password == confirmPassword;
      print(_passwordsMatch);
    });
  }

  bool _isPasswordValidFormat(String password) {
    // Define a regular expression pattern for password validation
    RegExp regex =
        RegExp(r'^(?=.*?[A-Z])(?=.*?[0-9])(?=.*?[!@#$%^&*()_+{}|:"<>?]).{7,}$');
    return regex.hasMatch(password);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Color.fromARGB(255, 246, 243, 243),
        body: Consumer<AuthController>(builder: (context, controller, x) {
          return Container(
            child: Stack(children: [
              ListView(
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.only(right: 30, left: 30, top: 60),
                children: [
                  Form(
                    key: formkey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Lets Get Started',
                          style: TextStyle(
                              fontFamily: 'Syne-Medium',
                              fontSize: 30,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          'Crate an account ""',
                          style: TextStyle(
                              fontFamily: 'Mulish-Medium',
                              fontSize: 18,
                              fontWeight: FontWeight.w300),
                        ),
                        20.heightBox,
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            customTextField(
                              title: 'First Name',
                              controller: nameController.text,
                              hints: 'utkson',

                              //(value) {
                              //   if (value == null || value.isEmpty) {
                              //     return 'please enter $title';
                              //   }
                              //   return null;
                              // },
                            ),
                            5.heightBox,
                            customTextField(
                                title: 'Email Id',
                                controller: mailController,
                                hints: 'utkson@gmail.com',
                                keyboardtype: TextInputType.emailAddress),
                            5.heightBox,
                            customTextField(
                              hide: false,
                              title: 'Password',
                              controller: passwordController,
                              hints: 'Abc@1234',
                              sufixIcon: _passwordValid
                                  ? Icon(
                                      FontAwesomeIcons.check,
                                      color: Colors.green,
                                    )
                                  : Icon(
                                      FontAwesomeIcons.xmark,
                                      color: Colors.red,
                                    ),
                            ),
                            5.heightBox,
                            customTextField(
                              hide: true,
                              title: 'Confirm Password',
                              controller: confirmPasswordController,
                              hints: 'Abc@234',
                              sufixIcon: _passwordsMatch
                                  ? Icon(
                                      FontAwesomeIcons.check,
                                      color: Colors.green,
                                    )
                                  : Icon(
                                      FontAwesomeIcons.xmark,
                                      color: Colors.red,
                                    ),
                            ),
                            5.heightBox,
                            MobileNumberTextFiled(
                                mobileController: mobileController),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Checkbox(
                                    value: controller.isChecked,
                                    onChanged: (bool? newValue) {
                                      controller.check = newValue;
                                    }),
                                Text(
                                  'I agree to the terms and conditions',
                                  style: AppTextStyles.small12Bold,
                                ),
                              ],
                            ),
                            10.heightBox,
                            FilledButton(
                              style: FilledButton.styleFrom(
                                shape: BeveledRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                                backgroundColor:
                                    Color.fromARGB(255, 222, 168, 151),
                              ),
                              onPressed: () async {
                                controller.register(context);
                                print(mailController);

                                if (formkey.currentState!.validate()) {
                                  controller.isChecked = true;
                                }
                              },
                              child: Text("Create an Account",
                                  style: TextStyle(
                                      fontFamily: 'Mulish-Medium',
                                      fontSize: 16.00,
                                      fontWeight: FontWeight.w700)),
                            )
                                .box
                                .width(context.screenWidth * 0.6)
                                .height(context.screenHeight * 0.04)
                                // .margin(EdgeInsets.only(top: 3))
                                .make()
                          ],
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.1),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Already have an account?',
                              style: TextStyle(
                                  fontFamily: 'Poppins-Regular',
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginScreen()),
                                );
                              },
                              child: Text(
                                'Login',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 244, 117, 117),
                                    fontFamily: 'Poppins-Regular',
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ]),
          );
        }),
      ),
    );
  }
}
