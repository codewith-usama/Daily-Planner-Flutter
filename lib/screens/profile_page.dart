import 'package:daily_planner/screens/languages.dart';
import 'package:daily_planner/screens/privacy_settings.dart';
import 'package:flutter/material.dart';

import '../components/profile_page_container.dart';
import '../utils/config.dart';
import 'daily_reminders.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return Scaffold(
      backgroundColor: homeScreenBackgroundColor,
      body: Padding(
        padding: EdgeInsets.only(
          left: mediaQuery.size.width * 0.14,
          top: mediaQuery.size.height * 0.07,
          bottom: mediaQuery.size.height * 0.07,
          right: mediaQuery.size.width * 0.16,
        ),
        child: Column(
          children: [
            SizedBox(
              height: mediaQuery.size.height * 0.08,
            ),
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: const AssetImage(
                    'assets/profile.jpg',
                  ),
                  radius: mediaQuery.size.width * 0.12,
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Name\nZara khan',
                          style: TextStyle(
                            fontSize: mediaQuery.size.width * 0.04,
                          ),
                        ),
                        SizedBox(
                          width: mediaQuery.size.width * 0.20,
                        ),
                        const Icon(
                          Icons.create,
                          size: 18.0,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 2.0,
                    ),
                    Container(
                      color: Colors.black,
                      height: 1.2,
                      width: mediaQuery.size.width * 0.42,
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: mediaQuery.size.width * 0.03,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'E-mail\nzarakhan@gmail.com',
                        style: TextStyle(
                          fontSize: mediaQuery.size.width * 0.04,
                        ),
                      ),
                      SizedBox(
                        width: mediaQuery.size.width * 0.22,
                      ),
                      const Icon(
                        Icons.create,
                        size: 18.0,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 2.0,
                  ),
                  Container(
                    color: Colors.black,
                    height: 1.2,
                    width: double.maxFinite,
                  )
                ],
              ),
            ),
            SizedBox(
              height: mediaQuery.size.height * 0.05,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DailyReminder(),
                  ),
                );
              },
              child: const ProfilePageContainer(
                text: 'Daily Reminders',
                color: Color(0xFFE3B8A0),
              ),
            ),
            SizedBox(
              height: mediaQuery.size.height * 0.03,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PrivacySettings(),
                  ),
                );
              },
              child: const ProfilePageContainer(
                text: 'Privacy Settings',
                color: Color(0xFFB8AAEF),
              ),
            ),
            SizedBox(
              height: mediaQuery.size.height * 0.03,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Languages(),
                  ),
                );
              },
              child: const ProfilePageContainer(
                text: 'Language',
                color: Color(0xFFA1BFB2),
              ),
            )
          ],
        ),
      ),
    );
  }
}
