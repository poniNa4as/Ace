import 'package:ace/sections/solid_section/solid_questions.dart';
import 'package:ace/utility/fn_for_add.dart';
import 'package:flutter/material.dart';

class SolidAddWidget extends StatelessWidget {
  const SolidAddWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Solid'),
        SizedBox(width: 10,),
        ElevatedButton(onPressed: () => setToFirebase(solidPrinciples, 'SOLID'), child: Icon(Icons.add))
      ],
    );
  }
}