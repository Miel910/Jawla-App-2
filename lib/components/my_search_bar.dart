import 'package:flutter/material.dart';

import '../constants/constants.dart';

class MySearchBar extends StatelessWidget {
  final String hintText;

  const MySearchBar({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(23.5),
          borderSide: const BorderSide(width: 0, color: Colors.transparent),
        ),
        filled: true,
        fillColor: const Color(0xFFF0F0F0),
        contentPadding: const EdgeInsets.symmetric(vertical: 4.0),
        prefixIcon: const Icon(Icons.search, size: 20),
        suffixIcon: const Icon(Icons.filter_list_rounded, size: 20),
        prefixIconColor: greyTextColor,
        hintText: hintText,
        hintStyle: headLineStyle5,
      ),
      style: const TextStyle(),
    );
  }
}
