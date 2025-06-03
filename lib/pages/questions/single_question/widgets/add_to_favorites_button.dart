import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ace/models/question_model.dart';
import 'package:ace/providers/favorite_notifier.dart';

class AddToFavoritesButton extends ConsumerStatefulWidget {
  final QuestionModel question;

  const AddToFavoritesButton({super.key, required this.question});

  @override
  ConsumerState<AddToFavoritesButton> createState() =>
      _AddToFavoritesButtonState();
}

class _AddToFavoritesButtonState extends ConsumerState<AddToFavoritesButton> {
  bool isAnimating = false;

  void _handleAdd() {
    setState(() => isAnimating = true);

    Future.delayed(500.ms, () {
      if (mounted) setState(() => isAnimating = false);
    });

    ref.read(favorProvider.notifier).addToFav(widget.question);

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: const [
            Icon(Icons.check_circle, color: Colors.green),
            SizedBox(width: 8),
            Text('Added to favorites'),
          ],
        ),
        duration: const Duration(seconds: 1),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return IconButton(
      icon: Image.asset('assets/icons/add.png', color: theme.primaryColor)
          .animate(target: isAnimating ? 1 : 0)
          .scaleXY(
            begin: 1.0,
            end: 1.2,
            duration: 200.ms,
            curve: Curves.easeOutBack,
          )
          .then()
          .scaleXY(end: 1.0, duration: 200.ms, curve: Curves.easeIn),
      onPressed: _handleAdd,
    );
  }
}
