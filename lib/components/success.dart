import 'package:daily_planner/components/auth_button.dart';
import 'package:daily_planner/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../utils/config.dart';

class Success extends StatefulWidget {
  const Success({
    required this.message,
    super.key,
  });
  final String message;
  @override
  State<Success> createState() => _SuccessState();
}

class _SuccessState extends State<Success> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: homeScreenBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: mediaQuery.size.width * 0.12,
            vertical: mediaQuery.size.height * 0.15,
          ),
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 0,
                child: Lottie.asset('assets/success.json'),
              ),
              Container(
                width: double.infinity,
                alignment: Alignment.center,
                child: Text(
                  widget.message,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF7B3400),
                  ),
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 15,
                ),
                child: AuthButton(
                  text: 'Go to home',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ),
                    );
                  },
                  height: 60,
                  width: double.maxFinite,
                  backgroundColor: const Color(0xFFDDCAC0),
                  textColor: const Color(0xFF7B3400),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
