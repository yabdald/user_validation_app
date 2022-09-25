import 'package:flutter/material.dart';
import 'dart:core';

import 'package:flutter_pw_validator/Resource/Strings.dart';

InputDecoration buildInputDecoration(String hintText, IconData icon) {
  return InputDecoration(
      prefixIcon: Icon(icon, color: Color.fromARGB(50, 62, 72, 1)),
      hintText: hintText,
      contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15));
}

MaterialButton longButtons(String title, final Function() fun,
    {Color color: Colors.blue,
    Color textColor: Colors.white,
    Alignment: Center}) {
  var fun2 = fun;
  return MaterialButton(
    onPressed: fun,
    textColor: textColor,
    color: color,
    height: 45,
    minWidth: 150,
    child: SizedBox(
      width: 150,
      child: Text(
        title,
        textAlign: TextAlign.center,
      ),
    ),
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10))),
  );
}
