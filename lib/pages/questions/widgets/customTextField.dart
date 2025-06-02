import 'package:animated_hint_textfield/animated_hint_textfield.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final ValueChanged<String>  handleInput;

  const CustomTextField({super.key, required this.controller, required this.handleInput});

  @override
  Widget build(BuildContext context) {
    return AnimatedTextField(
      onChanged: handleInput,
      controller: controller,
      animationType: Animationtype.fade,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.search),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFF57C00), width: 2),
          borderRadius: BorderRadius.circular(4),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFF57C00), width: 2),
          borderRadius: BorderRadius.circular(4),
        ),
        contentPadding: EdgeInsets.all(12),
      ),
      hintTexts: [
        'Search...'
      ],
    );
  }
}
