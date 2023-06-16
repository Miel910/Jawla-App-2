import 'package:flutter/material.dart';
import '../../constants/constants.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
    required this.onPressed,
    required this.text,
  });
  final Function() onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        backgroundColor: primaryColor,
        elevation: 0,
        minimumSize: const Size(315, 65),
      ),
      onPressed: onPressed,
      child: Text(text, style: buttonStyle),
    );
  }
}
