import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  late TextEditingController controller;
  late TextInputType keyboardType;
  late bool obscureText;
  final String obscureCharacter;
  final String hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;

  CustomTextField({
    Key? key,
    required this.controller,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.obscureCharacter = '*',
    this.prefixIcon,
    this.suffixIcon,
    required this.hintText, required InputDecoration decoration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText,
      obscuringCharacter: obscureCharacter,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 14,
      ),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.only(top: 12.0),
        constraints: BoxConstraints(
          maxHeight: height * 0.065,
          maxWidth: width,
        ),
        filled: true,
        fillColor: Colors.white,
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Colors.grey,
          fontSize: 15,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.zero, // Set circular radius to zero
          borderSide: const BorderSide(
            color: Colors.black,
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.zero, // Set circular radius to zero
          borderSide: const BorderSide(
            color: Colors.black,
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.zero, // Set circular radius to zero
          borderSide: const BorderSide(
            color: Colors.black,
            width: 1.0,
          ),
        ),
      ),
    );
  }
}
