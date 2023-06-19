import 'package:flutter/material.dart';
import '../components/choose_account_email.dart';
import '../utils/config.dart';

class ChooseAccountScreen extends StatelessWidget {
  const ChooseAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    double fontSize = mediaQuery.size.width;
    return Scaffold(
      backgroundColor: onBoardingColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: mediaQuery.size.width * 0.05,
            vertical: mediaQuery.size.height * 0.15,
          ),
          child: Column(
            children: [
              Center(
                child: Text(
                  'Choose an account',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: fontSize * 0.08,
                  ),
                ),
              ),
              SizedBox(
                height: mediaQuery.size.height * 0.05,
              ),
              const ChooseAccountEmail(),
              SizedBox(
                height: mediaQuery.size.height * 0.05,
              ),
              const ChooseAccountEmail(),
            ],
          ),
        ),
      ),
    );
  }
}
