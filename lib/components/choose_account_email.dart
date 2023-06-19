import 'package:flutter/material.dart';

class ChooseAccountEmail extends StatelessWidget {
  const ChooseAccountEmail({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    double fontSize = mediaQuery.size.width;
    return Row(
      children: [
        Container(
          width: mediaQuery.size.width * 0.17,
          height: mediaQuery.size.height * 0.08,
          decoration: const BoxDecoration(
            color: Color(0xFF7B3400),
            shape: BoxShape.circle,
          ),
          child: ClipOval(
            child: Icon(
              Icons.person,
              color: const Color(0xFFEC9665),
              size: fontSize * 0.15,
            ),
          ),
        ),
        const SizedBox(
          width: 10.0,
        ),
        Text(
          'someone@domain.com',
          style: TextStyle(
            color: Colors.white,
            fontSize: fontSize * 0.06,
          ),
        ),
      ],
    );
  }
}
