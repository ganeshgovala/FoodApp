// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AppWidget {
  static TextStyle boldTextFieldStyle() {
    return TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: const Color.fromARGB(255, 36, 36, 36),
                  fontFamily: 'Poppins',
                );
  }

  static TextStyle HeadingTextFieldStyle() {
    return TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  color: const Color.fromARGB(255, 16, 16, 16),
                  fontFamily: 'Poppins',
                );
  }

  static TextStyle SubHeadingTextFieldStyle() {
    return TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w200,
                  color: const Color.fromARGB(255, 88, 88, 88),
                  fontFamily: 'Poppins',
                );
  }

  static TextStyle MenuHeading() {
    return TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: const Color.fromARGB(255, 31, 31, 31),
                  fontFamily: 'Poppins',
                );
  }
}