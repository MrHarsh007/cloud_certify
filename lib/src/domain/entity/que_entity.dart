class StaticQuestionModel {
  final String questionId; // Unique ID for the question
  final String questionText;
  final List<String> options;
  final String correctAnswer;
  final String explanation; // Explanation for the correct answer
  String userAnswer; // Tracks the user's attempt

  StaticQuestionModel({
    required this.questionId,
    required this.questionText,
    required this.options,
    required this.correctAnswer,
    required this.explanation,
    this.userAnswer = '',
  });

  // Convert Question to Map for storing in Hive or JSON
  Map<String, dynamic> toJson() {
    return {
      'questionId': questionId,
      'questionText': questionText,
      'options': options,
      'correctAnswer': correctAnswer,
      'explanation': explanation,
      'userAnswer': userAnswer,
    };
  }

  // Convert from Map to Question object
  factory StaticQuestionModel.fromJson(Map<String, dynamic> json) {
    return StaticQuestionModel(
      questionId: json['questionId'],
      questionText: json['questionText'],
      options: List<String>.from(json['options']),
      correctAnswer: json['correctAnswer'],
      explanation: json['explanation'],
      userAnswer: json['userAnswer'] ?? '',
    );
  }
}

List<StaticQuestionModel> dummyQuestions = [
  StaticQuestionModel(
    questionId: '9d125e57-1fc0-4eb2-a5b2-c6aaf3a4ad75',
    questionText: 'What does IaaS stand for in cloud computing?',
    options: [
      'Internet as a Service',
      'Infrastructure as a Service',
      'Integration as a Service',
      'Interface as a Service'
    ],
    correctAnswer: 'Infrastructure as a Service',
    explanation:
        'IaaS stands for Infrastructure as a Service, where cloud providers offer virtualized computing resources over the internet.',
  ),
  StaticQuestionModel(
    questionId: '2f57aa03-9b4e-4cd2-9a6a-8fdb3254cf82',
    questionText:
        'Which of the following is a serverless compute service offered by AWS?',
    options: ['EC2', 'Lambda', 'S3', 'CloudFront'],
    correctAnswer: 'Lambda',
    explanation:
        'AWS Lambda lets you run code without provisioning or managing servers, making it a serverless compute service.',
  ),
  StaticQuestionModel(
    questionId: '4c34fcb0-df82-4f06-b207-d4c4028f12f1',
    questionText:
        'Which service is used to store unstructured data like images and videos in the cloud?',
    options: ['RDS', 'EC2', 'S3', 'DynamoDB'],
    correctAnswer: 'S3',
    explanation:
        'Amazon S3 (Simple Storage Service) is designed for storing and retrieving any amount of unstructured data like images, videos, and backups.',
  ),
  StaticQuestionModel(
    questionId: '3a4debe3-9b74-45ec-b153-93d9cfcc3f6c',
    questionText:
        'What does the term "multi-tenancy" refer to in cloud computing?',
    options: [
      'Multiple servers for one user',
      'Multiple users sharing the same resources',
      'Private cloud setup',
      'Cloud with multiple vendors'
    ],
    correctAnswer: 'Multiple users sharing the same resources',
    explanation:
        'Multi-tenancy allows multiple customers (tenants) to share the same computing resources securely in a cloud environment.',
  ),
  StaticQuestionModel(
    questionId: 'b0417db3-2fcd-4a38-9212-2d60a30e8c36',
    questionText: 'Which Google Cloud service is used for big data processing?',
    options: ['Cloud SQL', 'BigQuery', 'App Engine', 'Firestore'],
    correctAnswer: 'BigQuery',
    explanation:
        'BigQuery is Google Cloud’s fully-managed data warehouse designed for fast SQL queries and big data analytics.',
  ),
];
