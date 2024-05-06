import 'package:caretaker/consts/utils/color.dart';
import 'package:caretaker/consts/utils/textStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:velocity_x/velocity_x.dart';

customTextField(
    {title,
    onchange,
    hide = false,
    keyboardtype = TextInputType.text,
    controller,
    readOnly = false,
    sufixIcon,
    hints,
    errorText,
    validator,
    enabled}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "$title",
        style: AppTextStyles.body18,
      ),
      4.heightBox,
      TextFormField(
        // validator: (value) {
        //   if (value == null || value.isEmpty) {
        //     return 'please enter $title';
        //   }
        //   return null;
        // },

        onChanged: onchange,
        obscureText: hide,
        cursorErrorColor: Colors.red,
        cursorColor: black,
        style: AppTextStyles.textFieldTextStyle,
        keyboardType: keyboardtype,
        readOnly: readOnly,
        decoration: InputDecoration(
          suffixIcon: sufixIcon,
          contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          hintText: hints,
          hintStyle: AppTextStyles.textFieldHintTextStyle,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100),
            borderSide: BorderSide(color: grey),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: grey)),
          disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: white)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: grey)),
        ),
      ),
    ],
  );
}
