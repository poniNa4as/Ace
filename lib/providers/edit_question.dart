import 'package:ace/models/question_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

Future<void> editQuestionModel(QuestionModel question, {
  String? newComment,
  int? newLikes,
}) async {
  final updatedQuestion = question.copyWith(
    question: newComment ?? '',
    likes: newLikes ?? question.likes,
    updatedAt: Timestamp.now(),
  );

  final firestore = FirebaseFirestore.instance;
  final docRef = firestore.collection(updatedQuestion.mainCategory.name).doc(updatedQuestion.id);

  try {
    await docRef.update(updatedQuestion.toMap(updatedQuestion.id));
    debugPrint('Question updated');
  } catch (e) {
    debugPrint('Error updating question: $e');
  }
}
