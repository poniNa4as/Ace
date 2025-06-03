import 'package:ace/models/question_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class QuestionCart extends StatelessWidget {
  final QuestionModel question;
  const QuestionCart({super.key, required this.question});

  @override
  Widget build(BuildContext context) {
    bool flag = true;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: GestureDetector(
        onTap: () {
          context.push('/question_details', extra: {
            'question': question,
            'flag': flag
          });
        },
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xFF1A1A1A),
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withValues(alpha: 0.5),
                spreadRadius: 1,
                blurRadius: 8,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              question.question,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500,
                height: 1.4,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
