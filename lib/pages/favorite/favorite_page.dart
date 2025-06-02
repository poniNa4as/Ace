import 'package:ace/pages/favorite/widgets/favorite_dismiss_widget.dart';
import 'package:ace/providers/favorite_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FavoritePage extends ConsumerWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncFavorite = ref.watch(favorProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite'),
      ),
      body: asyncFavorite.when(
        data: (favorite) {
         if (favorite.isEmpty) {
          return Center(child: Text('No Favorite'),);
         }

         return ListView.builder(
          itemCount: favorite.length,
          itemBuilder: (context, i) {
            final q = favorite[i];
            return FavoriteDismissWidget(q: q);
          });
        }, 
        error: ((context, err) => Center(child: Text('Error: $err'),)), 
        loading: () => Center(child: CircularProgressIndicator(),))
    );
  }
}