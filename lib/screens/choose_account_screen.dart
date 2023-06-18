import 'package:flutter/material.dart';

import '../components/choose_account_email.dart';

class ChooseAccountScreen extends StatelessWidget {
  const ChooseAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEC9665),
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: 50.0, vertical: 200.0),
          child: Column(
            children: const [
              Center(
                child: Text(
                  'Choose an account',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28.0,
                  ),
                ),
              ),
              SizedBox(
                height: 60.0,
              ),
              ChooseAccountEmail(),
              SizedBox(
                height: 30.0,
              ),
              ChooseAccountEmail(),
            ],
          ),
        ),
      ),
    );
  }
}
