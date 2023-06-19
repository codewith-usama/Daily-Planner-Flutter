import 'package:flutter/material.dart';
import '../utils/config.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: homeScreenBackgroundColor,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30.0,
                vertical: 20.0,
              ),
              child: Column(
                children: const [
                  Text(
                    'Good Morning, Zara!',
                    style: TextStyle(
                      color: Color(0xFF7B3400),
                      fontSize: 50.0
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
