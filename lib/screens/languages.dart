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
        elevation: 0,
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
          horizontal: mediaQuery.size.width * 0.20,
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
            languageRadioTile(
              Language.english,
              'English',
              mediaQuery.size.height * 0.08,
            ),
            languageRadioTile(
              Language.french,
              'French',
              mediaQuery.size.height * 0.08,
            ),
            languageRadioTile(
              Language.spanish,
              'Spanish',
              mediaQuery.size.height * 0.08,
            ),
            languageRadioTile(
              Language.german,
              'German',
              mediaQuery.size.height * 0.08,
            ),
            languageRadioTile(
              Language.arabic,
              'Arabic',
              mediaQuery.size.height * 0.08,
            ),
          ],
        ),
      ),
    );
  }

  Container languageRadioTile(
      Language languageSelected, String language, double height) {
    // ignore: sized_box_for_whitespace
    return Container(
      width: double.maxFinite,
      height: height,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Text(language),
          ),
          const SizedBox(
            width: 30.0,
          ),
          Expanded(
            child: RadioListTile<Language>(
              value: languageSelected,
              groupValue: _selectedLanguague,
              onChanged: (Language? value) {
                _handleGenderChange(value!);
              },
            ),
          ),
        ],
      ),
    );
  }
}
