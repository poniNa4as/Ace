import 'dart:async';
import 'dart:convert';

import 'package:ace/models/question_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FavorNotifier extends AsyncNotifier<List<QuestionModel>> {
  @override
  Future<List<QuestionModel>> build() async {
    final pref = await SharedPreferences.getInstance();
    final favorJson = pref.getStringList('favorites');
    if (favorJson != null) {
      final loadFav =
          favorJson.map((item) {
            final favMap = jsonDecode(item);
            return QuestionModel.fromMap(favMap);
          }).toList();
      return loadFav;
    }
    return [];
  }

  Future<void> addToFav(QuestionModel item) async {
    final currentState = state.value ?? [];

    final exist = currentState.any((el) => el.id == item.id);

    if (exist) return;
    final updatedList = [...currentState, item];

    state = AsyncValue.data(updatedList);
    await _saveFav(updatedList);
  }

  Future<void> removeFromFav(String id) async {
    final currentState = state.value ?? [];
    final updatedState = currentState.where((item) => item.id != id).toList();

    state = AsyncValue.data(updatedState);
    await _saveFav(updatedState);
  }

  Future<void> _saveFav(List<QuestionModel> arr) async {
    final pref = await SharedPreferences.getInstance();
    final favorJson =
        arr.map((el) => jsonEncode(el.toMap(el.id ?? ''))).toList();
    await pref.setStringList('favorites', favorJson);
  }
}

final favorProvider = AsyncNotifierProvider<FavorNotifier, List<QuestionModel>>(
  () => FavorNotifier(),
);
