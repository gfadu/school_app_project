import 'package:flutter/material.dart';
import '../constants/color_constants.dart';

Widget codePickerDropDown(dropdownvalue) {
  return DropdownButton(
    underline: Container(),
    icon: Icon(
      Icons.arrow_downward_outlined,
      color: Colors.white,
      size: 16,
    ),
    style: TextStyle(color: Colors.white),
    value: dropdownvalue,
    focusColor: appBlueColor,
    items: <String>['+91', 'B', 'C', 'D'].map((String value) {
      return new DropdownMenuItem<String>(
        value: value,
        child: new Text(value),
      );
    }).toList(),
    onChanged: (_) {},
  );
}

Widget phoneTextField() {
  return TextFormField(
    decoration: InputDecoration(
      hintText: '123456789',
    ),
  );
}
