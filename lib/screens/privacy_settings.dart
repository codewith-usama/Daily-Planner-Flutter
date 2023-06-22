import 'package:flutter/material.dart';
import '../utils/config.dart';

class PrivacySettings extends StatefulWidget {
  const PrivacySettings({super.key});

  @override
  State<PrivacySettings> createState() => _PrivacySettingsState();
}

class _PrivacySettingsState extends State<PrivacySettings> {
  bool _notificationEnabled = false;
  bool _locationEnabled = false;
  bool _storageEnabled = false;
  bool _microphoneEnabled = false;

  void _toggleNotification(bool value) {
    setState(() {
      _notificationEnabled = value;
    });
  }

  void _toggleLocation(bool value) {
    setState(() {
      _locationEnabled = value;
    });
  }

  void _toggleStorage(bool value) {
    setState(() {
      _storageEnabled = value;
    });
  }

  void _toggleMicrophone(bool value) {
    setState(() {
      _microphoneEnabled = value;
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
          'Privacy Settings',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: mediaQuery.size.width * 0.12,
          vertical: mediaQuery.size.height * 0.07,
        ),
        child: Column(
          children: [
            SizedBox(
              height: mediaQuery.size.height * 0.08,
            ),
            notificationContainer(
              'Notifications',
              _notificationEnabled,
              _toggleNotification,
              mediaQuery.size.height * 0.08,
            ),
            notificationContainer(
              'Location access',
              _locationEnabled,
              _toggleLocation,
              mediaQuery.size.height * 0.08,
            ),
            notificationContainer(
              'Storage access',
              _storageEnabled,
              _toggleStorage,
              mediaQuery.size.height * 0.08,
            ),
            notificationContainer(
              'Microphone acces',
              _microphoneEnabled,
              _toggleMicrophone,
              mediaQuery.size.height * 0.08,
            ),
          ],
        ),
      ),
    );
  }

  Container notificationContainer(
      String text, bool status, toggle, double height) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 8.0,
        horizontal: 0,
      ),
      width: double.maxFinite,
      height: height,
      child: Row(
        children: [
          Text(
            text,
            style: TextStyle(
              fontSize: height * 0.33,
            ),
          ),
          const Expanded(
            flex: 1,
            child: Text(''),
          ),
          Switch(
            value: status,
            onChanged: toggle,
          ),
        ],
      ),
    );
  }
}
