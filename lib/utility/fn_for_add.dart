import 'package:ace/models/question_model.dart';
import 'package:ace/models/suggested_question.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

Future<void> setToFirebase(List<QuestionModel> questions, String title) async {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  try {
    final collection = firestore.collection(title);
    final batch = firestore.batch();
    for (var q in questions) {
      final docRef = collection.doc();
      batch.set(docRef, q.toMap(docRef.id));
    }
    await batch.commit();
  } catch (e) {
    debugPrint('Error: $e');
  }
}

Future<void> setNewQuestion(SuggestedQuestion q) async {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  try {
    final collection = firestore.collection('newQuestion');
    final dokRef = collection.doc();
    await collection.add(q.toJson(dokRef.id));
  } catch (e) {
    debugPrint('Error submitting question : $e');
  }
}


