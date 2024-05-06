import 'package:flutter/material.dart';

class timeTextButton extends StatelessWidget {
  const timeTextButton({
    super.key,
    required this.time,
    required this.onPressed,
    required this.isSelected,
  });
  final String time;
  final Function() onPressed;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(
          backgroundColor: isSelected ? Colors.blue : Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
              side: BorderSide(color: Colors.black, width: 1.0)),
        ),
        autofocus: true,
        onPressed: onPressed,
        child: Text(
          time,
          style: TextStyle(
              color: isSelected ? Colors.white : Colors.black,
              fontFamily: 'Rancho',
              fontSize: 15,
              fontWeight: FontWeight.w500),
        ));
  }
}
