import 'package:caretaker/consts/utils/color.dart';
import 'package:caretaker/consts/utils/textStyle.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:velocity_x/velocity_x.dart';

class MobileNumberTextFiled extends StatelessWidget {
  const MobileNumberTextFiled({
    super.key,
    required this.mobileController,
  });

  final TextEditingController mobileController;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Mobile Number', style: AppTextStyles.body18),
        4.heightBox,
        IntlPhoneField(
          // onChanged: onchange,
          // validator: validator,
          // enabled: enabled,
          controller: mobileController,
          readOnly: false,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            hintText: '0000-00-0000',
            hintStyle: AppTextStyles.textFieldHintTextStyle,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(100),
              borderSide: BorderSide(color: grey),
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(100),
                borderSide: BorderSide(color: black)),
            disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(color: grey)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(color: grey)),
          ),
        )
      ],
    );
  }
}
