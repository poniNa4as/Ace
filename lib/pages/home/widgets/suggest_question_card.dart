import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SuggestQuestionCard extends StatelessWidget {
  const SuggestQuestionCard({super.key, });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFFF57C00)),
        borderRadius: BorderRadius.circular(12),
        color: Colors.transparent,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Your Voice Matters!',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Your questions shape the future of this app. '
            'Help us stay accurate, relevant, and useful — one great question at a time. ',
            style: TextStyle(fontSize: 14),
          ),
          const SizedBox(height: 12),
          Align(
            alignment: Alignment.centerRight,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(const Color.fromARGB(255, 11, 11, 11))
              ),
              onPressed: () {
                context.push('/add');
              },
              child: const Text('Suggest a Question'),
            ),
          ),
        ],
      ),
    );
  }
}
