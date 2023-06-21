import 'package:daily_planner/components/auth_button.dart';
import 'package:daily_planner/screens/signup_screen.dart';
import 'package:flutter/material.dart';
import '../components/remember_me_check_box.dart';
import '../components/text_field_auth.dart';
import '../utils/config.dart';
import 'choose_account_screen.dart';
import 'home_page.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
              SizedBox(
                height: mediaQuery.size.height * 0.01,
              ),
              Text(
                'Log In',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: fontSize * 0.12,
                ),
              ),
              SizedBox(
                height: mediaQuery.size.height * 0.04,
              ),
              const TextFieldAuth(
                text: 'E-mail',
              ),
              SizedBox(
                height: mediaQuery.size.height * 0.03,
              ),
              const TextFieldAuth(
                text: 'Password',
              ),
              const RememberMeCheckBox(
                rememberMeMessage: 'Remember me',
              ),
              SizedBox(
                height: mediaQuery.size.height * 0.03,
              ),
              AuthButton(
                text: 'Log In',
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
                height: mediaQuery.size.height * 0.03,
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
                  ), // Add some spacing between the line and icons
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
                  fontSize: fontSize * 0.06,
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
              // SizedBox(
              //   height: mediaQuery.size.height * 0.02,
              // ),
              const Expanded(
                flex: 1,
                child: Text(""),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account",
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
                          builder: (context) => const SignupScreen(),
                        ),
                      );
                    },
                    child: Text(
                      'Sign up now',
                      style: TextStyle(
                        color: const Color(0xFF7B3400),
                        fontSize: fontSize * 0.05,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: mediaQuery.size.height * 0.01,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
