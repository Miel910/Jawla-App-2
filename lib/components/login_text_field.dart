import 'package:flutter/material.dart';
import 'package:jawla_app/constants/constants.dart';

// ignore: must_be_immutable
class LoginTextField extends StatefulWidget {
  const LoginTextField(
      {super.key,
      required this.hint,
      required this.iconName,
      this.isPassword = false,
      required this.controller,
      this.minLines = 1,
      this.maxLines = 1});

  final String hint;
  final IconData iconName;
  final bool? isPassword;
  final TextEditingController controller;
  final int? minLines;
  final int? maxLines;

  @override
  State<LoginTextField> createState() => _LoginTextFieldState();
}

class _LoginTextFieldState extends State<LoginTextField> {
  bool? isEncrypted;

  @override
  void initState() {
    isEncrypted = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // show and hide password icon button
    final showHidePassword = IconButton(
      onPressed: () {
        setState(() {
          isEncrypted = !isEncrypted!;
        });
      },
      icon: Icon(
        isEncrypted!
            ? Icons.visibility_outlined
            : Icons.visibility_off_outlined,
        color: Colors.grey,
        size: 18,
      ),
    );

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7),
      child: TextField(
        style: textFieldStyle,
        controller: widget.controller,
        minLines: widget.minLines,
        maxLines: widget.maxLines,
        cursorColor: primaryColor,
        decoration: InputDecoration(
          filled: false,
          fillColor: Colors.white,
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.all(
              Radius.circular(16),
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.all(
              Radius.circular(16),
            ),
          ),
          hintText: widget.hint,
          hintStyle: const TextStyle(color: Colors.grey),
          prefixIcon: Icon(widget.iconName, color: Colors.grey, size: 18),
          suffixIcon: widget.isPassword ?? false ? showHidePassword : null,
        ),
        obscureText: widget.isPassword ?? false ? isEncrypted! : false,
      ),
    );
  }
}
