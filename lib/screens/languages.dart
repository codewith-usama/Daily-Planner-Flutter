import 'package:flutter/material.dart';
import '../utils/config.dart';

class Languages extends StatefulWidget {
  const Languages({super.key});

  @override
  State<Languages> createState() => _LanguagesState();
}

enum Language { english, french, spanish, german, arabic }

class _LanguagesState extends State<Languages> {
  Language _selectedLanguague = Language.english;

  void _handleGenderChange(Language value) {
    setState(() {
      _selectedLanguague = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: homeScreenBackgroundColor,
      appBar: AppBar(
        elevation: 1,
        backgroundColor: homeScreenBackgroundColor,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Languages',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 10,
          vertical: mediaQuery.size.height * 0.08,
        ),
        child: Column(
          children: [
            Center(
              child: Text(
                'Select preferred language',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: mediaQuery.size.width * 0.05,
                ),
              ),
            ),
            SizedBox(
              height: mediaQuery.size.height * 0.08,
            ),
            // Container(
            //   padding: EdgeInsets.symmetric(vertical: 8.0),
            //   child: Row(
            //     children: [
            //       Text('English'),

            //       RadioListTile<Language>(
            //         value: Language.english,
            //         groupValue: _selectedLanguague,
            //         onChanged: (Language? value) {
            //           _handleGenderChange(value!);
            //         },
            //       ),
            //     ],
            //   ),
            // ),
            RadioListTile<Language>(
              value: Language.english,
              groupValue: _selectedLanguague,
              onChanged: (Language? value) {
                _handleGenderChange(value!);
              },
            ),
          ],
        ),
      ),
    );
  }
}
