import 'package:daily_planner/components/auth_button.dart';
import 'package:flutter/material.dart';

import '../onboarding/onboarding.dart';
import '../screens/login_screen.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEC9665),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 150.0,
            ),
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/auth_page_flower.jpg'),
                radius: 120.0,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              'PLAN MY DAY',
              style: TextStyle(
                color: Color(0xFFFFFCF4),
                fontSize: 55.0,
                letterSpacing: 1,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              'DAILY PLANNER APP',
              style: TextStyle(
                fontSize: 18.0,
                color: Color(0xFFFFEED8),
                letterSpacing: 1,
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            const Text(
              'Your daily tasks tracker',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25.0,
              ),
            ),
            const SizedBox(
              height: 70.0,
            ),
            AuthButton(
              text: 'Log In',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Onbording(),
                  ),
                );
              },
              height: 70.0,
              width: 250.0,
              backgroundColor: const Color(0xFFD9D9D9),
              textColor: const Color(0xFF7B3400),
            ),
            const SizedBox(
              height: 20.0,
            ),
            AuthButton(
              text: 'Sign Up',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Onbording(),
                  ),
                );
              },
              height: 70.0,
              width: 250.0,
              backgroundColor: const Color(0xFFD9D9D9),
              textColor: const Color(0xFF7B3400),
            ),
          ],
        ),
      ),
    );
  }
}
