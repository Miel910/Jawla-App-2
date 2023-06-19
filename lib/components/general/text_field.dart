import 'package:flutter/material.dart';
import 'package:jawla_app/constants/constants.dart';

// ignore: must_be_immutable
class MyTextField extends StatefulWidget {
  const MyTextField({
    super.key,
    required this.hint,
    this.style = textFieldStyle,
    this.iconName,
    required this.controller,
    this.minLines = 1,
    this.maxLines = 1,
    this.isPassword = false,
    this.readOnly = false,
  });

  final String hint;
  final TextStyle? style;
  final IconData? iconName;
  final bool? isPassword;
  final bool? readOnly;
  final TextEditingController controller;
  final int? minLines;
  final int? maxLines;

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
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
        style: widget.style,
        controller: widget.controller,
        minLines: widget.minLines,
        maxLines: widget.maxLines,
        readOnly: widget.readOnly!,
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
