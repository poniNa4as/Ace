class SuggestedQuestion {
  final String question;
  final String topic;
  final String difficulty;
  final String? answer;
  final DateTime submittedAt;
  final String? userNickname;

  SuggestedQuestion({
    required this.question,
    required this.topic,
    required this.difficulty,
    this.answer,
    required this.submittedAt,
    this.userNickname,
  });

  Map<String, dynamic> toJson(String dokId) {
    return {
      'id': dokId,
      'question': question,
      'topic': topic,
      'difficulty': difficulty,
      'answer': answer,
      'submittedAt': submittedAt.toIso8601String(),
      'userNickname': userNickname,
      'approved': false,
    };
  }

  factory SuggestedQuestion.fromJson(Map<String, dynamic> json) {
    return SuggestedQuestion(
      question: json['question'],
      topic: json['topic'],
      difficulty: json['difficulty'],
      answer: json['answer'],
      submittedAt: DateTime.parse(json['submittedAt']),
      userNickname: json['userNickname'],
    );
  }
}
