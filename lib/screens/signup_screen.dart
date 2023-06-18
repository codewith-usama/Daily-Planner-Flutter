import 'package:daily_planner/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:daily_planner/components/auth_button.dart';
import 'package:daily_planner/screens/home_screen.dart';
import '../components/text_field_auth.dart';
import 'choose_account_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEC9665),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 20.0,
              horizontal: 45.0,
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 30.0,
                ),
                const Text(
                  'Sign Up',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 36.0,
                  ),
                ),
                const SizedBox(
                  height: 50.0,
                ),
                const TextFieldAuth(
                  text: 'Full Name',
                ),
                const SizedBox(
                  height: 30.0,
                ),
                const TextFieldAuth(
                  text: 'E-mail',
                ),
                const SizedBox(
                  height: 30.0,
                ),
                const TextFieldAuth(
                  text: 'Password',
                ),
                const SizedBox(
                  height: 30.0,
                ),
                const TextFieldAuth(
                  text: 'Re-type password',
                ),
                const SizedBox(
                  height: 80.0,
                ),
                AuthButton(
                  text: 'Sign Up',
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ),
                    );
                  },
                  height: 70.0,
                  width: 280.0,
                  backgroundColor: const Color(0xFF7B3400),
                  textColor: Colors.white,
                ),
                const SizedBox(
                  height: 40.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 130.0,
                      height: 2.0,
                      color: const Color(0xFFD9D9D9),
                    ),
                    const Text(
                      '  OR  ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                      ),
                    ), // Add some spacing between the line and icons
                    Container(
                      width: 130.0,
                      height: 2.0,
                      color: const Color(0xFFD9D9D9),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const Text(
                  'continue with',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
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
                        child: const Icon(
                          Icons.facebook,
                          size: 70.0,
                          color: Color(0xFF7B3400),
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
                        child: const Icon(
                          Icons.g_mobiledata,
                          size: 105.0,
                          color: Color(0xFF7B3400),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already have an account?",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
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
                      child: const Text(
                        'Log in',
                        style: TextStyle(
                          color: Color(0xFF7B3400),
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
