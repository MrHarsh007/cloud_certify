// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unattempted_question.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UnattemptedQuestion extends UnattemptedQuestion {
  @override
  final String questionId;
  @override
  final String questionText;
  @override
  final BuiltMap<String, String> options;
  @override
  final String correctOption;
  @override
  final String explanation;
  @override
  final String topic;
  @override
  final AssessmentType assessmentType;

  factory _$UnattemptedQuestion(
          [void Function(UnattemptedQuestionBuilder)? updates]) =>
      (new UnattemptedQuestionBuilder()..update(updates))._build();

  _$UnattemptedQuestion._(
      {required this.questionId,
      required this.questionText,
      required this.options,
      required this.correctOption,
      required this.explanation,
      required this.topic,
      required this.assessmentType})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        questionId, r'UnattemptedQuestion', 'questionId');
    BuiltValueNullFieldError.checkNotNull(
        questionText, r'UnattemptedQuestion', 'questionText');
    BuiltValueNullFieldError.checkNotNull(
        options, r'UnattemptedQuestion', 'options');
    BuiltValueNullFieldError.checkNotNull(
        correctOption, r'UnattemptedQuestion', 'correctOption');
    BuiltValueNullFieldError.checkNotNull(
        explanation, r'UnattemptedQuestion', 'explanation');
    BuiltValueNullFieldError.checkNotNull(
        topic, r'UnattemptedQuestion', 'topic');
    BuiltValueNullFieldError.checkNotNull(
        assessmentType, r'UnattemptedQuestion', 'assessmentType');
  }

  @override
  UnattemptedQuestion rebuild(
          void Function(UnattemptedQuestionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UnattemptedQuestionBuilder toBuilder() =>
      new UnattemptedQuestionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UnattemptedQuestion &&
        questionId == other.questionId &&
        questionText == other.questionText &&
        options == other.options &&
        correctOption == other.correctOption &&
        explanation == other.explanation &&
        topic == other.topic &&
        assessmentType == other.assessmentType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, questionId.hashCode);
    _$hash = $jc(_$hash, questionText.hashCode);
    _$hash = $jc(_$hash, options.hashCode);
    _$hash = $jc(_$hash, correctOption.hashCode);
    _$hash = $jc(_$hash, explanation.hashCode);
    _$hash = $jc(_$hash, topic.hashCode);
    _$hash = $jc(_$hash, assessmentType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UnattemptedQuestion')
          ..add('questionId', questionId)
          ..add('questionText', questionText)
          ..add('options', options)
          ..add('correctOption', correctOption)
          ..add('explanation', explanation)
          ..add('topic', topic)
          ..add('assessmentType', assessmentType))
        .toString();
  }
}

class UnattemptedQuestionBuilder
    implements Builder<UnattemptedQuestion, UnattemptedQuestionBuilder> {
  _$UnattemptedQuestion? _$v;

  String? _questionId;
  String? get questionId => _$this._questionId;
  set questionId(String? questionId) => _$this._questionId = questionId;

  String? _questionText;
  String? get questionText => _$this._questionText;
  set questionText(String? questionText) => _$this._questionText = questionText;

  MapBuilder<String, String>? _options;
  MapBuilder<String, String> get options =>
      _$this._options ??= new MapBuilder<String, String>();
  set options(MapBuilder<String, String>? options) => _$this._options = options;

  String? _correctOption;
  String? get correctOption => _$this._correctOption;
  set correctOption(String? correctOption) =>
      _$this._correctOption = correctOption;

  String? _explanation;
  String? get explanation => _$this._explanation;
  set explanation(String? explanation) => _$this._explanation = explanation;

  String? _topic;
  String? get topic => _$this._topic;
  set topic(String? topic) => _$this._topic = topic;

  AssessmentType? _assessmentType;
  AssessmentType? get assessmentType => _$this._assessmentType;
  set assessmentType(AssessmentType? assessmentType) =>
      _$this._assessmentType = assessmentType;

  UnattemptedQuestionBuilder() {
    UnattemptedQuestion._defaults(this);
  }

  UnattemptedQuestionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _questionId = $v.questionId;
      _questionText = $v.questionText;
      _options = $v.options.toBuilder();
      _correctOption = $v.correctOption;
      _explanation = $v.explanation;
      _topic = $v.topic;
      _assessmentType = $v.assessmentType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UnattemptedQuestion other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UnattemptedQuestion;
  }

  @override
  void update(void Function(UnattemptedQuestionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UnattemptedQuestion build() => _build();

  _$UnattemptedQuestion _build() {
    _$UnattemptedQuestion _$result;
    try {
      _$result = _$v ??
          new _$UnattemptedQuestion._(
            questionId: BuiltValueNullFieldError.checkNotNull(
                questionId, r'UnattemptedQuestion', 'questionId'),
            questionText: BuiltValueNullFieldError.checkNotNull(
                questionText, r'UnattemptedQuestion', 'questionText'),
            options: options.build(),
            correctOption: BuiltValueNullFieldError.checkNotNull(
                correctOption, r'UnattemptedQuestion', 'correctOption'),
            explanation: BuiltValueNullFieldError.checkNotNull(
                explanation, r'UnattemptedQuestion', 'explanation'),
            topic: BuiltValueNullFieldError.checkNotNull(
                topic, r'UnattemptedQuestion', 'topic'),
            assessmentType: BuiltValueNullFieldError.checkNotNull(
                assessmentType, r'UnattemptedQuestion', 'assessmentType'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'options';
        options.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UnattemptedQuestion', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
