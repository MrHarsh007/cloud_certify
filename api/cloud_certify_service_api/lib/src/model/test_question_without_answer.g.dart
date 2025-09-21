// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_question_without_answer.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TestQuestionWithoutAnswer extends TestQuestionWithoutAnswer {
  @override
  final String id;
  @override
  final String question;
  @override
  final String explanation;
  @override
  final BuiltMap<String, String> options;
  @override
  final String topic;
  @override
  final String difficulty;
  @override
  final AssessmentType? assessmentType;
  @override
  final String? correctOption;

  factory _$TestQuestionWithoutAnswer(
          [void Function(TestQuestionWithoutAnswerBuilder)? updates]) =>
      (new TestQuestionWithoutAnswerBuilder()..update(updates))._build();

  _$TestQuestionWithoutAnswer._(
      {required this.id,
      required this.question,
      required this.explanation,
      required this.options,
      required this.topic,
      required this.difficulty,
      this.assessmentType,
      this.correctOption})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        id, r'TestQuestionWithoutAnswer', 'id');
    BuiltValueNullFieldError.checkNotNull(
        question, r'TestQuestionWithoutAnswer', 'question');
    BuiltValueNullFieldError.checkNotNull(
        explanation, r'TestQuestionWithoutAnswer', 'explanation');
    BuiltValueNullFieldError.checkNotNull(
        options, r'TestQuestionWithoutAnswer', 'options');
    BuiltValueNullFieldError.checkNotNull(
        topic, r'TestQuestionWithoutAnswer', 'topic');
    BuiltValueNullFieldError.checkNotNull(
        difficulty, r'TestQuestionWithoutAnswer', 'difficulty');
  }

  @override
  TestQuestionWithoutAnswer rebuild(
          void Function(TestQuestionWithoutAnswerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TestQuestionWithoutAnswerBuilder toBuilder() =>
      new TestQuestionWithoutAnswerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TestQuestionWithoutAnswer &&
        id == other.id &&
        question == other.question &&
        explanation == other.explanation &&
        options == other.options &&
        topic == other.topic &&
        difficulty == other.difficulty &&
        assessmentType == other.assessmentType &&
        correctOption == other.correctOption;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, question.hashCode);
    _$hash = $jc(_$hash, explanation.hashCode);
    _$hash = $jc(_$hash, options.hashCode);
    _$hash = $jc(_$hash, topic.hashCode);
    _$hash = $jc(_$hash, difficulty.hashCode);
    _$hash = $jc(_$hash, assessmentType.hashCode);
    _$hash = $jc(_$hash, correctOption.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TestQuestionWithoutAnswer')
          ..add('id', id)
          ..add('question', question)
          ..add('explanation', explanation)
          ..add('options', options)
          ..add('topic', topic)
          ..add('difficulty', difficulty)
          ..add('assessmentType', assessmentType)
          ..add('correctOption', correctOption))
        .toString();
  }
}

class TestQuestionWithoutAnswerBuilder
    implements
        Builder<TestQuestionWithoutAnswer, TestQuestionWithoutAnswerBuilder> {
  _$TestQuestionWithoutAnswer? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _question;
  String? get question => _$this._question;
  set question(String? question) => _$this._question = question;

  String? _explanation;
  String? get explanation => _$this._explanation;
  set explanation(String? explanation) => _$this._explanation = explanation;

  MapBuilder<String, String>? _options;
  MapBuilder<String, String> get options =>
      _$this._options ??= new MapBuilder<String, String>();
  set options(MapBuilder<String, String>? options) => _$this._options = options;

  String? _topic;
  String? get topic => _$this._topic;
  set topic(String? topic) => _$this._topic = topic;

  String? _difficulty;
  String? get difficulty => _$this._difficulty;
  set difficulty(String? difficulty) => _$this._difficulty = difficulty;

  AssessmentType? _assessmentType;
  AssessmentType? get assessmentType => _$this._assessmentType;
  set assessmentType(AssessmentType? assessmentType) =>
      _$this._assessmentType = assessmentType;

  String? _correctOption;
  String? get correctOption => _$this._correctOption;
  set correctOption(String? correctOption) =>
      _$this._correctOption = correctOption;

  TestQuestionWithoutAnswerBuilder() {
    TestQuestionWithoutAnswer._defaults(this);
  }

  TestQuestionWithoutAnswerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _question = $v.question;
      _explanation = $v.explanation;
      _options = $v.options.toBuilder();
      _topic = $v.topic;
      _difficulty = $v.difficulty;
      _assessmentType = $v.assessmentType;
      _correctOption = $v.correctOption;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TestQuestionWithoutAnswer other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TestQuestionWithoutAnswer;
  }

  @override
  void update(void Function(TestQuestionWithoutAnswerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TestQuestionWithoutAnswer build() => _build();

  _$TestQuestionWithoutAnswer _build() {
    _$TestQuestionWithoutAnswer _$result;
    try {
      _$result = _$v ??
          new _$TestQuestionWithoutAnswer._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'TestQuestionWithoutAnswer', 'id'),
            question: BuiltValueNullFieldError.checkNotNull(
                question, r'TestQuestionWithoutAnswer', 'question'),
            explanation: BuiltValueNullFieldError.checkNotNull(
                explanation, r'TestQuestionWithoutAnswer', 'explanation'),
            options: options.build(),
            topic: BuiltValueNullFieldError.checkNotNull(
                topic, r'TestQuestionWithoutAnswer', 'topic'),
            difficulty: BuiltValueNullFieldError.checkNotNull(
                difficulty, r'TestQuestionWithoutAnswer', 'difficulty'),
            assessmentType: assessmentType,
            correctOption: correctOption,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'options';
        options.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TestQuestionWithoutAnswer', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
