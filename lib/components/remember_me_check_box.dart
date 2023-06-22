import 'package:flutter/material.dart';

class RememberMeCheckBox extends StatefulWidget {
  const RememberMeCheckBox({
    required this.rememberMeMessage,
    required this.fillColor,
    required this.checkColor,
    required this.textColor,
    super.key,
  });
  final String rememberMeMessage;
  final Color fillColor;
  final Color checkColor;
  final Color textColor;

  @override
  State<RememberMeCheckBox> createState() => _RememberMeCheckBoxState();
}

class _RememberMeCheckBoxState extends State<RememberMeCheckBox> {
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          fillColor: MaterialStateProperty.resolveWith(
            (states) => widget.fillColor,
          ),
          checkColor: widget.checkColor,
          value: rememberMe,
          onChanged: (newValue) {
            setState(() {
              rememberMe = newValue ?? false;
            });
          },
        ),
        Text(
          widget.rememberMeMessage,
          style: TextStyle(
            color: widget.textColor,
          ),
        ),
      ],
    );
  }
}
