import 'package:flutter/material.dart';

class RememberMeCheckBox extends StatefulWidget {
  const RememberMeCheckBox({super.key});

  @override
  State<RememberMeCheckBox> createState() => _RememberMeCheckBoxState();
}

class _RememberMeCheckBoxState extends State<RememberMeCheckBox> {
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          fillColor: MaterialStateProperty.resolveWith(
            (states) => const Color(0xFFD9D9D9),
          ),
          checkColor: Colors.black,
          value: rememberMe,
          onChanged: (newValue) {
            setState(() {
              rememberMe = newValue ?? false;
            });
          },
        ),
        const Text(
          'Remember Me',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
