import 'package:flutter/material.dart';
import 'package:daily_planner/onboarding/content_model.dart';
import '../auth/auth_page.dart';
import '../components/build_dot.dart';

class Onbording extends StatefulWidget {
  const Onbording({super.key});

  @override
  State<Onbording> createState() => OnbordingState();
}

class OnbordingState extends State<Onbording> {
  int currentIndex = 0;
  final PageController _pageController = PageController(
    initialPage: 0,
  );

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    double fontSize = mediaQuery.size.width;
    double circleavatarSize = mediaQuery.size.width;
    return Scaffold(
        backgroundColor: const Color(0xFFEC9665),
        body: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (int index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemCount: contents.length,
                itemBuilder: (_, i) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                      vertical: 15.0,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(contents[i].image),
                          radius: circleavatarSize * 0.30,
                        ),
                        SizedBox(
                          height: mediaQuery.size.height * 0.04,
                        ),
                        Text(
                          contents[i].description,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: fontSize * 0.06,
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                contents.length,
                (index) => buildDot(index, currentIndex, context),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: TextButton(
                onPressed: () {
                  if (currentIndex == contents.length - 1) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AuthPage(),
                      ),
                    );
                  }
                  _pageController.nextPage(
                    duration: const Duration(milliseconds: 400),
                    curve: Curves.ease,
                  );
                },
                child: Text(
                  "Get Started",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: fontSize * 0.08,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: mediaQuery.size.height * 0.04,
            )
          ],
        ));
  }

  
}
