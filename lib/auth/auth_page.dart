import 'package:daily_planner/components/auth_button.dart';
import 'package:flutter/material.dart';
import '../screens/login_screen.dart';
import '../screens/signup_screen.dart';
import '../utils/config.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    double fontSize = mediaQuery.size.width;
    double circleavatarSize = mediaQuery.size.width;
    return Scaffold(
      backgroundColor: onBoardingColor,
      body: Container(
        width: mediaQuery.size.width,
        height: mediaQuery.size.height,
        padding: const EdgeInsets.symmetric(
          vertical: 15.0,
          horizontal: 15.0,
        ),
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: mediaQuery.size.height * 0.02,
              ),
              Center(
                child: CircleAvatar(
                  backgroundImage: const AssetImage('assets/auth_page_flower.jpg'),
                  radius: circleavatarSize * 0.30,
                ),
              ),
              SizedBox(
                height: mediaQuery.size.height * 0.04,
              ),
              Text(
                'PLAN MY DAY',
                style: TextStyle(
                  color: const Color(0xFFFFFCF4),
                  fontSize: fontSize * 0.10,
                  letterSpacing: 1,
                ),
              ),
              SizedBox(
                height: mediaQuery.size.height * 0.01,
              ),
              Text(
                'DAILY PLANNER APP',
                style: TextStyle(
                  fontSize: fontSize * 0.03,
                  color: const Color(0xFFFFEED8),
                  letterSpacing: 1,
                ),
              ),
              SizedBox(
                height: mediaQuery.size.height * 0.03,
              ),
              Text(
                'Your daily tasks tracker',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: fontSize * 0.06,
                ),
              ),
              SizedBox(
                height: mediaQuery.size.height * 0.05,
              ),
              AuthButton(
                text: 'Log In',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ),
                  );
                },
                height: mediaQuery.size.height * 0.11,
                width: mediaQuery.size.width * 0.65,
                backgroundColor: const Color(0xFFD9D9D9),
                textColor: const Color(0xFF7B3400),
              ),
              SizedBox(
                height: mediaQuery.size.height * 0.03,
              ),
              AuthButton(
                text: 'Sign Up',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignupScreen(),
                    ),
                  );
                },
                height: mediaQuery.size.height * 0.11,
                width: mediaQuery.size.width * 0.65,
                backgroundColor: const Color(0xFFD9D9D9),
                textColor: const Color(0xFF7B3400),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
