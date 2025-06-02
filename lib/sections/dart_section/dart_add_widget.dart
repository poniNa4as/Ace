import 'package:ace/sections/dart_section/dart_question.dart';
import 'package:ace/utility/fn_for_add.dart';
import 'package:flutter/material.dart';

class DartAddWidget extends StatelessWidget {
 const DartAddWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Dart Question'),
        SizedBox(width: 8,),
        ElevatedButton(
          onPressed: () => setToFirebase(dartQuestions, 'Dart'),
           child: Icon(Icons.add)),
      ],
    );
  }
}
