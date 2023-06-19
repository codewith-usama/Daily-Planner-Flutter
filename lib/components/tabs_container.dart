import 'package:flutter/material.dart';

class TabsContainer extends StatelessWidget {
  const TabsContainer({
    required this.height,
    required this.width,
    required this.text,
    required this.color,
    required this.imagePath,
    required this.fontSize,
    required this.horizontalPaddingValue,
    super.key,
  });
  final double height;
  final double width;
  final String text;
  final Color color;
  final String imagePath;
  final double fontSize;
  final double horizontalPaddingValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 4,
              horizontal: 7,
            ),
            child: Image(
              image: AssetImage(imagePath),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: horizontalPaddingValue,
            ),
            child: Center(
              child: Text(
                text,
                style: TextStyle(
                  color: const Color(0xFF7B3400),
                  fontSize: fontSize,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
