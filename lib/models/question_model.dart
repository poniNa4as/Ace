import 'package:cloud_firestore/cloud_firestore.dart';

enum Difficulty { junior, middle, senior }

enum MainCategory { fundamentals, languagesAndFrameworks }

class QuestionModel {
  final String? id;
  final String question;
  final String answer;
  final MainCategory mainCategory;
  final String subCategory;
  final List<String> tags;
  final Difficulty difficulty;
  final Timestamp? createdAt;
  final Timestamp? updatedAt;
  final int? likes;
  final List<String>? comments;

  QuestionModel({
    this.id,
    required this.question,
    required this.answer,
    required this.mainCategory,
    required this.subCategory,
    required this.tags,
    required this.difficulty,
    this.createdAt,
    this.updatedAt,
    this.likes,
    this.comments,
  });

  QuestionModel copyWith({
    String? id,
    String? question,
    String? answer,
    MainCategory? mainCategory,
    String? subCategory,
    List<String>? tags,
    Difficulty? difficulty,
    Timestamp? createdAt,
    Timestamp? updatedAt,
    int? likes,
    List<String>? comments,
  }) {
    return QuestionModel(
      id: id ?? this.id,
      question: question ?? this.question,
      answer: answer ?? this.answer,
      mainCategory: mainCategory ?? this.mainCategory,
      subCategory: subCategory ?? this.subCategory,
      tags: tags ?? this.tags,
      difficulty: difficulty ?? this.difficulty,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      likes: likes ?? this.likes,
      comments: comments ?? this.comments,
    );
  }

  factory QuestionModel.fromMap(Map<String, dynamic> data) {
    return QuestionModel(
      id: data['id'] ?? '',
      question: data['question'] ?? '',
      answer: data['answer'] ?? '',
      mainCategory: _mainCategoryFromString(data['mainCategory']),
      subCategory: data['subCategory'] ?? '',
      tags: List<String>.from(data['tags'] ?? []),
      difficulty: _difficultyFromString(data['difficulty']),
      createdAt: data['createdAt'],
      updatedAt: data['updatedAt'],
      likes: data['likes'], 
      comments: data['comments'] != null
          ? List<String>.from(data['comments'])
          : null,
    );
  }

  Map<String, dynamic> toMap(String docId) {
    final now = Timestamp.now();
    return {
      'id': docId,
      'question': question,
      'answer': answer,
      'mainCategory': mainCategory.name,
      'subCategory': subCategory,
      'tags': tags,
      'difficulty': difficulty.name,
      'createdAt': createdAt ?? now,
      'updatedAt': updatedAt ?? now,
      if (likes != null) 'likes': likes,
      if (comments != null) 'comments': comments,
    };
  }

  static Difficulty _difficultyFromString(String value) {
    return Difficulty.values.firstWhere(
      (e) => e.name == value,
      orElse: () => Difficulty.junior,
    );
  }

  static MainCategory _mainCategoryFromString(String value) {
    return MainCategory.values.firstWhere(
      (e) => e.name == value,
      orElse: () => MainCategory.fundamentals,
    );
  }
}
