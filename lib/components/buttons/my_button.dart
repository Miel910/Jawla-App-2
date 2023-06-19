import 'package:flutter/material.dart';
import '../../constants/constants.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.minimumSize = const Size(315, 65),
  });
  final Function() onPressed;
  final String text;
  final Size? minimumSize;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        backgroundColor: primaryColor,
        elevation: 0,
        minimumSize: minimumSize,
      ),
      onPressed: onPressed,
      child: Text(text, style: buttonStyle),
    );
  }
}
