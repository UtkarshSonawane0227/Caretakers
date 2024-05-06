import 'package:caretaker/consts/utils/textStyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AuthController extends ChangeNotifier {
  bool isChecked = false;
  bool passwordValid = false;
  bool passwordsMatch = false;

  set validPass(value) {
    passwordValid = value;
    notifyListeners();
  }

  set matchPass(value) {
    passwordsMatch = value;
    notifyListeners();
  }

  set check(value) {
    isChecked = value;
    notifyListeners();
  }

  void register(context) {
    if (isChecked) {
      // Perform registration logic here
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              "Registration Successful",
              style: AppTextStyles.body18Bold,
            ),
            content: Text(
              "You have been successfully registered.",
              style: AppTextStyles.body14,
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(
                  'OK',
                  style: AppTextStyles.heading22Bold,
                ),
              ),
            ],
          );
        },
      );
    } else {
      // Show message if checkbox is not checked
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              "Error",
              style: AppTextStyles.body18Bold,
            ),
            content: Text(
              "Please check the checkbox to register.",
              style: AppTextStyles.body14,
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(
                  'OK',
                  style: AppTextStyles.heading22Bold,
                ),
              ),
            ],
          );
        },
      );
    }
  }

  // bool isPasswordValidFormat(String password) {
  //   // Define a regular expression pattern for password validation
  //   RegExp regex = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$');
  //   return regex.hasMatch(password);
  // }

  // void validatePassword(pass) {
  //   validPass = isPasswordValidFormat(pass);
  // }
}
