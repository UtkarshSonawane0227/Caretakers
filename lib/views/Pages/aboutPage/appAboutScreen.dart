import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us',
            style: TextStyle(
                fontFamily: 'Syne-Medium',
                fontSize: 20,
                fontWeight: FontWeight.bold)),
      ),
      body: Container(
        child: Stack(
          children: [
            ListView(
              padding: EdgeInsets.only(right: 30, left: 30, top: 0),
              children: [
                Image(
                    width: MediaQuery.of(context).size.width * 0.2,
                    height: MediaQuery.of(context).size.height * 0.2,
                    image: AssetImage('assets/images/Logo/aboutus.png')),
                Divider(
                  thickness: 0.8,
                ),
                10.heightBox,
                Text(
                  'Probity IT Solutions Nashik is a dynamic and innovative company committed to providing top-tier IT solutions to businesses across various industries. With a steadfast focus on customer satisfaction, Probity IT Solutions Nashik delivers tailored services that align with each client\'s unique needs and goals. Our team of skilled professionals combines extensive technical expertise with creative problem-solving, ensuring that we deliver cutting-edge solutions that drive efficiency, productivity, and growth for our clients.',
                  style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Mulish-Medium',
                      fontWeight: FontWeight.w500),
                ),
                10.heightBox,
                Text(
                  'At Probity IT Solutions Nashik, we believe in fostering long-term partnerships built on trust, transparency, and integrity. Our dedication to excellence is reflected in every project we undertake, whether it\'s developing custom software applications, implementing robust IT infrastructure, or providing comprehensive cybersecurity solutions. With a client-centric approach and a commitment to staying ahead of the technological curve, Probity IT Solutions Nashik is poised to be your trusted partner in navigating the ever-evolving landscape of information technology.',
                  style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Mulish-Medium',
                      fontWeight: FontWeight.w600),
                ),
                50.heightBox,
              ],
            )
          ],
        ),
      ),
    );
  }
}
