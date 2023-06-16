import 'package:flutter/material.dart';
import 'package:jawla_app/constants/constants.dart';

// ignore: must_be_immutable
class CustomTextField extends StatefulWidget {
  const CustomTextField(
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
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
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
        icon: Icon(isEncrypted! ? Icons.visibility : Icons.visibility_off,
            color: greyButtonColor));

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: TextField(
          style: const TextStyle(color: Color.fromARGB(255, 50, 50, 50)),
          controller: widget.controller,
          minLines: widget.minLines,
          maxLines: widget.maxLines,
          cursorColor: primaryColor,
          decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: greyButtonColor),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: greyButtonColor),
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              hintText: widget.hint,
              hintStyle: const TextStyle(color: greyButtonColor),
              prefixIcon: Icon(widget.iconName, color: greyButtonColor),
              suffixIcon: widget.isPassword ?? false ? showHidePassword : null),
          obscureText: widget.isPassword ?? false ? isEncrypted! : false),
    );
  }
}
