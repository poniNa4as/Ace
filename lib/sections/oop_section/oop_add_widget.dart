import 'package:ace/sections/oop_section/oop_questions.dart';
import 'package:ace/utility/fn_for_add.dart';
import 'package:flutter/material.dart';

class OopAddWidget extends StatelessWidget {
  const OopAddWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('OOP'),
        SizedBox(width: 8),
        ElevatedButton(
          onPressed: () => setToFirebase(oopPillars, 'OOP'),
          child: Icon(Icons.add),
        ),
      ],
    );
  }
}
