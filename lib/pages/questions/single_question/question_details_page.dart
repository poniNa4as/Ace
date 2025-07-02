import 'package:ace/pages/questions/single_question/widgets/add_to_favorites_button.dart';
import 'package:ace/providers/favorite_notifier.dart';
import 'package:flutter/material.dart';
import 'package:ace/models/question_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class QuestionDetailPage extends ConsumerStatefulWidget {
  final QuestionModel question;
  final bool flag;

  const QuestionDetailPage({
    super.key,
    required this.question,
    required this.flag,
  });

  @override
  ConsumerState<QuestionDetailPage> createState() => _QuestionDetailPageState();
}

class _QuestionDetailPageState extends ConsumerState<QuestionDetailPage> {
  bool isLiked = false;
  int likeCount = 0;
  List<String> comentaries = [];

  @override
  void initState() {
    super.initState();
    likeCount = widget.question.likes ?? 0;
    
  }

  void toggleLike() {
    setState(() {

      isLiked = !isLiked;
      likeCount += isLiked ? 1 : -1;
    });
  }

  @override
  Widget build(BuildContext context) {
    final favoriteList = ref.watch(favorProvider);
    
    final 
    bool isFavorite = favoriteList.maybeWhen(
      data: (data) => data.any((el) => el.id == widget.question.id),
      orElse: () => false,
    );

    final theme = Theme.of(context);
    final question = widget.question;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Details'),
        actions: [
          AnimatedSwitcher(
            duration: const Duration(seconds: 1),
            transitionBuilder:
                (child, animation) =>
                    FadeTransition(opacity: animation, child: child),
            child:
                isFavorite
                    ? const SizedBox.shrink()
                    : AddToFavoritesButton(
                      key: const ValueKey('AddButton'),
                      question: question,
                    ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              question.question,
              style: theme.textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 10),
            Chip(
              label: Text(question.difficulty.name.toUpperCase()),
              backgroundColor: _getDifficultyColor(question.difficulty),
              labelStyle: const TextStyle(color: Colors.white),
            ),

            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: theme.cardColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                question.answer,
                style: theme.textTheme.bodyLarge?.copyWith(height: 1.4),
              ),
            ),

            const SizedBox(height: 24),

            Wrap(
              spacing: 8,
              runSpacing: 8,
              children:
                  question.tags.map((tag) {
                    return Chip(
                      label: Text('#$tag'),
                      backgroundColor: theme.colorScheme.secondary,
                      labelStyle: const TextStyle(color: Colors.white),
                    );
                  }).toList(),
            ),

            const SizedBox(height: 30),

            Row(
              children: [
                IconButton(
                  icon: Icon(
                    isLiked ? Icons.thumb_up_alt : Icons.thumb_up_off_alt,
                    color: theme.primaryColor,
                  ),
                  onPressed: toggleLike,
                ),
                Text('$likeCount', style: theme.textTheme.bodyLarge),
                const SizedBox(width: 24),
                IconButton( onPressed: () {}, icon: Icon(Icons.comment), color: theme.primaryColor),
                const SizedBox(width: 8),
                Text(
                  '${question.comments?.length ?? 0}',
                  style: theme.textTheme.bodyLarge,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Color _getDifficultyColor(Difficulty difficulty) {
    switch (difficulty) {
      case Difficulty.junior:
        return Colors.green;
      case Difficulty.middle:
        return Colors.orange;
      case Difficulty.senior:
        return Colors.redAccent;
    }
  }
}
