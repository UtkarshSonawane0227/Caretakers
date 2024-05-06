import 'package:caretaker/consts/utils/color.dart';
import 'package:caretaker/views/common/TextFiled/customTextField.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ContactUsScreen extends StatefulWidget {
  const ContactUsScreen({super.key});

  @override
  State<ContactUsScreen> createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController gmailController = TextEditingController();
  TextEditingController commentsController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Contact Us',
          style: TextStyle(
              fontFamily: 'Syne-Medium',
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.only(right: 30, left: 28, top: 20),
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Center(
                      child: Image(
                          image: AssetImage(
                              'assets/images/Logo/ContactAnimation.png')),
                    ),
                  ),
                  Text(
                    'Were delighted to hear from you! Whether you have a question about our services, want to provide feedback, or just want to say hello, we re here to assist you.',
                    style: TextStyle(
                        fontFamily: 'Mulish-Medium',
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade500),
                  ),
                  20.heightBox,
                  customTextField(
                      controller: nameController,
                      hints: 'Name',
                      title: 'Full Name'),
                  25.heightBox,
                  customTextField(
                      controller: gmailController,
                      hints: 'email@gmail.com',
                      title: 'Email'),
                  25.heightBox,
                  customTextField(
                      controller: gmailController,
                      title: 'Comments',
                      hints: 'Write a short msg'),
                  30.heightBox,
                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 187, 165, 165),
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 25),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          side: BorderSide(
                              color: Color.fromARGB(255, 225, 222, 222),
                              width: 1.0)),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Book Now',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Mulish-Medium',
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
