import 'package:flutter/material.dart';

class TextFieldAuth extends StatelessWidget {
  final String text;
  const TextFieldAuth({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        hintText: text,
        fillColor: const Color(0xFFD9D9D9),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
