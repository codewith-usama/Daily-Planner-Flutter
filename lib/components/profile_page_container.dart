import 'package:flutter/material.dart';

class ProfilePageContainer extends StatelessWidget {
  const ProfilePageContainer({
    required this.text,
    required this.color,
    super.key,
  });
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Container(
      width: double.maxFinite,
      height: mediaQuery.size.height * 0.08,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: color,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15.0,
          vertical: 10.0,
        ),
        child: Row(children: [
          Text(
            text,
            style: TextStyle(
              color: Colors.black,
              fontSize: mediaQuery.size.width * 0.04,
            ),
          ),
          const Expanded(
            flex: 1,
            child: Text(''),
          ),
          Text(
            '\u003E',
            style: TextStyle(
              fontSize: mediaQuery.size.width * 0.08,
              color: const Color(0xFF7B3400),
            ),
          ),
        ]),
      ),
    );
  }
}
