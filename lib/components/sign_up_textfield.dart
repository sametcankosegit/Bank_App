import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SignUpTextField extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final int maxLength;
  final TextInputType keyboardType;

  const SignUpTextField({
    Key? key,
    required this.hintText,
    required this.obscureText,
    required this.maxLength,
    this.keyboardType = TextInputType.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        obscureText: obscureText,
        keyboardType: keyboardType,
        inputFormatters: keyboardType == TextInputType.number
            ? [
                FilteringTextInputFormatter.digitsOnly,
                LengthLimitingTextInputFormatter(maxLength),
              ]
            : null,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue),
          ),
          fillColor: const Color.fromARGB(255, 255, 255, 255),
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey[500]),
          counterText: '',
        ),
      ),
    );
  }
}
