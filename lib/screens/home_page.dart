import 'package:daily_planner/screens/calendar_page.dart';
import 'package:daily_planner/screens/create_task.dart';
import 'package:daily_planner/screens/home_screen.dart';
import 'package:daily_planner/screens/profile_page.dart';
import 'package:flutter/material.dart';
import '../utils/config.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _screens = const [
    HomeScreen(),
    CalendarPage(),
    CreateTask(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        body: _screens[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: bottomNavigationBarItemColor,
                size: mediaQuery.size.width * 0.09,
              ),
              backgroundColor: const Color(0xFFE3B59C),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.calendar_month_outlined,
                color: bottomNavigationBarItemColor,
                size: mediaQuery.size.width * 0.09,
              ),
              backgroundColor: const Color(0xFFE3B59C),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.add,
                color: bottomNavigationBarItemColor,
                size: mediaQuery.size.width * 0.09,
              ),
              backgroundColor: const Color(0xFFE3B59C),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: bottomNavigationBarItemColor,
                size: mediaQuery.size.width * 0.09,
              ),
              backgroundColor: const Color(0xFFE3B59C),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
