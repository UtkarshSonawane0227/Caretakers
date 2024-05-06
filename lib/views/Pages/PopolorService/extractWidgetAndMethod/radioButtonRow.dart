import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class RadioButtonRow extends StatelessWidget {
  final String value;
  final String groupValue;
  final Function(String?)? onChanged;
  final String text;
  const RadioButtonRow({
    super.key,
    required this.value,
    required this.groupValue,
    required this.onChanged,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Radio(
          value: value,
          groupValue: groupValue,
          onChanged: onChanged != null
              ? (String? newValue) => onChanged!(newValue)
              : null,
        ),
        10.widthBox,
        Text(
          text,
          style: TextStyle(
              fontFamily: 'Mulish-Medium',
              fontSize: 16,
              fontWeight: FontWeight.w700),
        ),
      ],
    );
  }
}
