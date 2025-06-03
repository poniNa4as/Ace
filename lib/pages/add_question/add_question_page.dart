import 'package:ace/models/suggested_question.dart';
import 'package:ace/utility/fn_for_add.dart';
import 'package:flutter/material.dart';

class AddQuestionPage extends StatefulWidget {
  const AddQuestionPage({super.key});

  @override
  State<AddQuestionPage> createState() => _AddQuestionPageState();
}

class _AddQuestionPageState extends State<AddQuestionPage> {
  final _formKey = GlobalKey<FormState>();

  String? _question;
  String? _topic;
  String _difficulty = 'Junior';
  String? _answer;

  final List<String> _difficultyLevels = ['Junior', 'Middle', 'Senior'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Suggest a Question',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [Image.asset('assets/icons/question.png')],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Question',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 4),
              TextFormField(
                maxLines: 2,
                decoration: const InputDecoration(
                  hintText: 'Enter your question...',
                  hintStyle: TextStyle(color: Colors.white38),
                  border: OutlineInputBorder(),
                ),
                validator:
                    (value) =>
                        value == null || value.trim().isEmpty
                            ? 'Required'
                            : null,
                onSaved: (value) => _question = value?.trim(),
              ),
              const SizedBox(height: 16),

              const Text(
                'Topic',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 4),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Language or framework...',
                  hintStyle: TextStyle(color: Colors.white38),
                  border: OutlineInputBorder(),
                ),
                validator:
                    (value) =>
                        value == null || value.trim().isEmpty
                            ? 'Required'
                            : null,
                onSaved: (value) => _topic = value?.trim(),
              ),
              const SizedBox(height: 16),

              const Text(
                'Difficulty',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Wrap(
                spacing: 12,
                children:
                    _difficultyLevels.map((level) {
                      return ChoiceChip(
                        label: Text(level),
                        selected: _difficulty == level,
                        onSelected: (_) {
                          setState(() {
                            _difficulty = level;
                          });
                        },
                      );
                    }).toList(),
              ),
              const SizedBox(height: 24),

              const Text(
                'Answer (optional)',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 4),
              TextFormField(
                maxLines: 5,
                decoration: const InputDecoration(
                  hintText: 'You can add an explanation or sample answer...',
                  hintStyle: TextStyle(color: Colors.white38),
                  border: OutlineInputBorder(),
                ),
                onSaved: (value) => _answer = value?.trim(),
              ),
              const SizedBox(height: 32),

              Center(
                child: ElevatedButton(
                  onPressed: _submitForm,
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 32,
                      vertical: 14,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text('Submit', style: TextStyle(fontSize: 16)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _submitForm() {
    final form = _formKey.currentState!;
    if (form.validate()) {
      form.save();

      final newQuestion = SuggestedQuestion(
        question: _question!,
        topic: _topic!,
        difficulty: _difficulty,
        submittedAt: DateTime.now(),
        answer: _answer ?? '',
      );

      setNewQuestion(newQuestion);

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            'Thank you! Your question was submitted.',
            style: TextStyle(color: Colors.amberAccent),
          ),
        ),
      );
    }
  }
}
