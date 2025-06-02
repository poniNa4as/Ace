import 'package:ace/models/question_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ApiService {
  Future<List<QuestionModel>> fetchData (String title) async {
      try {
      final FirebaseFirestore firestore = FirebaseFirestore.instance;
      final snapshot = await firestore.collection(title).get();
      return  snapshot.docs.map((doc) => QuestionModel.fromMap(doc.data())).toList();
      } catch (e) {
        debugPrint('Error:$e');
        return [];
      }
  }
}

final questionProvider = FutureProvider.family<List<QuestionModel>, String>((ref, title) async {
 return await ApiService().fetchData(title);
});
