import 'package:flutter/material.dart';

class ChooseAccountEmail extends StatelessWidget {
  const ChooseAccountEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60.0,
          height: 60.0,
          decoration: const BoxDecoration(
            color: Color(0xFF7B3400),
            shape: BoxShape.circle,
          ),
          child: const ClipOval(
            child: Icon(
              Icons.person,
              color: Color(0xFFEC9665),
              size: 50.0,
            ),
          ),
        ),
        const SizedBox(
          width: 10.0,
        ),
        const Text(
          'someone@domain.com',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22.0,
          ),
        ),
      ],
    );
  }
}
