import 'package:flutter/material.dart';

Container buildDot(int index, int currentIndex, BuildContext context) {
  final mediaQuery = MediaQuery.of(context);

  return Container(
    height: mediaQuery.size.height * 0.03,
    width: mediaQuery.size.height * 0.03,
    margin: EdgeInsets.only(
      left: mediaQuery.size.height * 0.05,
      right: mediaQuery.size.height * 0.05,
    ),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20.0),
      color: currentIndex == index ? const Color(0xFF7B3400) : Colors.white,
    ),
  );
}
