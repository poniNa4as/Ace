import 'package:ace/sections/flutter_section/flutter_question.dart';
import 'package:ace/utility/fn_for_add.dart';
import 'package:flutter/material.dart';

class FlutterAddWidget extends StatelessWidget {
  const FlutterAddWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         Text('Dart Question'),
         SizedBox(width: 8,),
        ElevatedButton(onPressed: () => setToFirebase(flutterQuestions, 'Flutter'), child: Icon(Icons.add)),
      ],
    );
  }
}