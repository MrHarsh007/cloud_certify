class StaticAttemptedQuestion {
  final int startTime;
  final int endTime;
  final int totalQuestiona;
  final int correctAnswer;
  final int wrongAnswer;
  final List<AnswerList> answerList;

  StaticAttemptedQuestion({
    required this.startTime,
    required this.endTime,
    required this.totalQuestiona,
    required this.correctAnswer,
    required this.wrongAnswer,
    required this.answerList,
  });

  factory StaticAttemptedQuestion.fromJson(Map<String, dynamic> json) {
    return StaticAttemptedQuestion(
      startTime: json['startTime'],
      endTime: json['endTime'],
      totalQuestiona: json['totalQuestiona'],
      correctAnswer: json['correctAnswer'],
      wrongAnswer: json['wrongAnswer'],
      answerList: (json['answerList'] as List)
          .map((item) => AnswerList.fromJson(item))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'startTime': startTime,
      'endTime': endTime,
      'totalQuestiona': totalQuestiona,
      'correctAnswer': correctAnswer,
      'wrongAnswer': wrongAnswer,
      'answerList': answerList.map((a) => a.toJson()).toList(),
    };
  }
}

class AnswerList {
  final String queId;
  final String selectedAnswer;

  AnswerList({
    required this.queId,
    required this.selectedAnswer,
  });

  // Convert to Map (for storage or JSON)
  Map<String, dynamic> toJson() {
    return {
      'queId': queId,
      'selectedAnswer': selectedAnswer,
    };
  }

  // Convert from Map to Object
  factory AnswerList.fromJson(Map<String, dynamic> json) {
    return AnswerList(
      queId: json['queId'],
      selectedAnswer: json['selectedAnswer'],
    );
  }
}
