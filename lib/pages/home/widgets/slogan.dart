import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class Slogan extends StatelessWidget {
  const Slogan({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: 300.0,
        child: DefaultTextStyle(
          style: const TextStyle(
            fontSize: 23.0,
            fontWeight: FontWeight.bold,
            color: Color(0xFFF57C00),
          ),
          child: AnimatedTextKit(
            animatedTexts: [
              TypewriterAnimatedText(
                'From prep to offer — Ace it!',
                speed: Duration(milliseconds: 180),
              ),
            ],
            repeatForever: true,
            pause: Duration(seconds: 3),
            displayFullTextOnTap: true,
          ),
        ),
      ),
    );
  }
}
