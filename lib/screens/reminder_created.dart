import 'package:daily_planner/components/auth_button.dart';
import 'package:daily_planner/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ReminderCreated extends StatefulWidget {
  const ReminderCreated({super.key});

  @override
  State<ReminderCreated> createState() => _ReminderCreatedState();
}

class _ReminderCreatedState extends State<ReminderCreated> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
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
                child: const Text(
                  'Reminder Successfully\nupdated',
                  textAlign: TextAlign.center,
                  style: TextStyle(
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
