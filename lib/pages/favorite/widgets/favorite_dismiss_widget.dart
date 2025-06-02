import 'package:ace/models/question_model.dart';
import 'package:ace/providers/favorite_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class FavoriteDismissWidget extends ConsumerWidget {
  final QuestionModel q;
  const FavoriteDismissWidget({super.key, required this.q});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        context.push('/question_details', extra: q);
      },
      child: Dismissible(
        key: Key(q.id ?? ''),
        direction: DismissDirection.startToEnd,
        background: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.redAccent,
              borderRadius: BorderRadius.circular(16),
            ),
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.only(right: 20),
            child: const Icon(
              Icons.delete_forever,
              color: Colors.white,
              size: 28,
            ),
          ),
        ),
        onDismissed: (direction) {
          ref.read(favorProvider.notifier).removeFromFav(q.id!);
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: ListTile(
              contentPadding: const EdgeInsets.all(16),
              title: Text(
                q.question,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),

              trailing: const Icon(Icons.swipe_right, color: Colors.grey),
            ),
          ),
        ),
      ),
    );
  }
}
