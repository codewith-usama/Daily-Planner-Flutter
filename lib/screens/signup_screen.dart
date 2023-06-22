import 'package:daily_planner/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:daily_planner/components/auth_button.dart';
import '../components/text_field_auth.dart';
import '../utils/config.dart';
import 'choose_account_screen.dart';
import 'home_page.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    double fontSize = mediaQuery.size.width;
    return Scaffold(
      backgroundColor: onBoardingColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: mediaQuery.size.height * 0.01,
            horizontal: mediaQuery.size.width * 0.08,
          ),
          child: Column(
            children: [
              Text(
                'Sign Up',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: fontSize * 0.11,
                ),
              ),
              SizedBox(
                height: mediaQuery.size.height * 0.015,
              ),
              const TextFieldAuth(
                text: 'Full Name',
              ),
              SizedBox(
                height: mediaQuery.size.height * 0.01,
              ),
              const TextFieldAuth(
                text: 'E-mail',
              ),
              SizedBox(
                height: mediaQuery.size.height * 0.01,
              ),
              const TextFieldAuth(
                text: 'Password',
              ),
              SizedBox(
                height: mediaQuery.size.height * 0.01,
              ),
              const TextFieldAuth(
                text: 'Re-type password',
              ),
              SizedBox(
                height: mediaQuery.size.height * 0.025,
              ),
              AuthButton(
                text: 'Sign Up',
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                  );
                },
                height: mediaQuery.size.height * 0.10,
                width: mediaQuery.size.width * 0.80,
                backgroundColor: const Color(0xFF7B3400),
                textColor: Colors.white,
              ),
              SizedBox(
                height: mediaQuery.size.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: mediaQuery.size.width * 0.25,
                    height: 2.0,
                    color: const Color(0xFFD9D9D9),
                  ),
                  Text(
                    '  OR  ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: fontSize * 0.07,
                    ),
                  ),
                  Container(
                    width: mediaQuery.size.width * 0.25,
                    height: 2.0,
                    color: const Color(0xFFD9D9D9),
                  ),
                ],
              ),
              SizedBox(
                height: mediaQuery.size.width * 0.001,
              ),
              Text(
                'continue with',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: fontSize * 0.05,
                ),
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ChooseAccountScreen(),
                          ),
                        );
                      },
                      child: Icon(
                        Icons.facebook,
                        size: mediaQuery.size.width * 0.12,
                        color: const Color(0xFF7B3400),
                      ),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ChooseAccountScreen(),
                          ),
                        );
                      },
                      child: Icon(
                        Icons.g_mobiledata,
                        size: mediaQuery.size.width * 0.21,
                        color: const Color(0xFF7B3400),
                      ),
                    ),
                  ],
                ),
              ),
              const Expanded(
                flex: 1,
                child: Text(""),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: fontSize * 0.05,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ),
                      );
                    },
                    child: Text(
                      'Log In',
                      style: TextStyle(
                        color: const Color(0xFF7B3400),
                        fontSize: fontSize * 0.05,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
