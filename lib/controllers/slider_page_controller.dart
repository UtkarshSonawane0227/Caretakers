import 'dart:math';

import 'package:caretaker/views/common/AddingPage/addLogin.dart';
import 'package:caretaker/views/homeScreen/homeScreen.dart';
import 'package:caretaker/views/loginPage/loginScreen/loginScreen.dart';
import 'package:flutter/material.dart';

class SliderPageController extends ChangeNotifier {
  int index = 0;

  set updateIndex(value) {
    index = value;
    notifyListeners();
  }

  setValue(context) {
    if (index < 2) {
      updateIndex = index + 1;
    } else {
      // Navigator.of(context).pushReplacement(newRoute)
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (_) => LoginScreen()));
    }
    notifyListeners();
    print(index);
  }

  List<String> title = ['family', 'home', 'PetCare'];
  List<String> headLine = [
    'Together Forever: The Essence of Family',
    'A Journey of Comfort and Belonging',
    'The Joy of Pet Companionship'
  ];
  List<String> SubTitle = [
    'The Cornerstone of Love, Support, and Endless Memories',
    ' Memories Flourish, and Hearts Find Solace',
    'Nurturing Bonds,and Enriching Lives of Our Furry Companions'
  ];

  generateRandom() {
    Random random = Random();
    updateIndex = random.nextInt(3);
  }
}
