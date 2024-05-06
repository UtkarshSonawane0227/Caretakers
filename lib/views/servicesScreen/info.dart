// import 'package:flutter/material.dart';

// // Assume you have a backend API for sending OTP and verifying OTP
// // You would need to implement these functions in your backend server

// // Function to send OTP via email (backend implementation)
// Future<void> sendOTP(String email) async {
//   // Call backend API to send OTP to email
// }

// // Function to verify OTP (backend implementation)
// Future<bool> verifyOTP(String email, String otp) async {
//   // Call backend API to verify OTP
//   // Return true if OTP is valid, false otherwise
// }

// class RegisterScreen extends StatefulWidget {
//   @override
//   _RegisterScreenState createState() => _RegisterScreenState();
// }

// class _RegisterScreenState extends State<RegisterScreen> {
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController otpController = TextEditingController();

//   String errorMessage = '';

//   // Function to handle register button press
//   Future<void> register() async {
//     String email = emailController.text.trim();
//     String otp = otpController.text.trim();

//     try {
//       // Call backend API to verify OTP
//       bool otpValid = await verifyOTP(email, otp);

//       if (otpValid) {
//         // OTP is valid, proceed with registration
//         // Call backend API to complete registration
//         // Redirect to next screen or perform necessary actions
//         // For simplicity, just print success message
//         print('Registration successful!');
//       } else {
//         setState(() {
//           errorMessage = 'Invalid OTP. Please try again.';
//         });
//       }
//     } catch (e) {
//       print('Error: $e');
//       setState(() {
//         errorMessage = 'An error occurred. Please try again later.';
//       });
//     }
//   }

//   // Function to handle send OTP button press
//   Future<void> sendOtp() async {
//     String email = emailController.text.trim();

//     try {
//       // Call backend API to send OTP to email
//       await sendOTP(email);
//       // OTP sent successfully
//       setState(() {
//         errorMessage = 'OTP sent to $email. Please check your email.';
//       });
//     } catch (e) {
//       print('Error: $e');
//       setState(() {
//         errorMessage = 'Failed to send OTP. Please try again later.';
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Register'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             Text(
//               'Enter your email address:',
//               style: TextStyle(fontSize: 16),
//             ),
//             TextField(
//               controller: emailController,
//               keyboardType: TextInputType.emailAddress,
//               decoration: InputDecoration(
//                 hintText: 'Email',
//               ),
//             ),
//             SizedBox(height: 16),
//             RaisedButton(
//               onPressed: sendOtp,
//               child: Text('Send OTP'),
//             )
//             SizedBox(height: 16),
//             Text(
//               'Enter OTP:',
//               style: TextStyle(fontSize: 16),
//             ),
//             TextField(
//               controller: otpController,
//               keyboardType: TextInputType.number,
//               decoration: InputDecoration(
//                 hintText: 'OTP',
//               ),
//             ),
//             SizedBox(height: 16),
//             RaisedButton(
//               onPressed: register,
//               child: Text('Register'),
//             ),
//             if (errorMessage.isNotEmpty)
//               Padding(
//                 padding: const EdgeInsets.only(top: 8.0),
//                 child: Text(
//                   errorMessage,
//                   style: TextStyle(color: Colors.red),
//                 ),
//               ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// void main() {
//   runApp(MaterialApp(
//     home: RegisterScreen(),
//   ));
// }
