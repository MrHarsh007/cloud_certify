// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_question.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DailyQuestion extends DailyQuestion {
  @override
  final String id;
  @override
  final String question;
  @override
  final BuiltList<String> options;
  @override
  final String correctAnswer;
  @override
  final String explanation;
  @override
  final int date;

  factory _$DailyQuestion([void Function(DailyQuestionBuilder)? updates]) =>
      (new DailyQuestionBuilder()..update(updates))._build();

  _$DailyQuestion._(
      {required this.id,
      required this.question,
      required this.options,
      required this.correctAnswer,
      required this.explanation,
      required this.date})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'DailyQuestion', 'id');
    BuiltValueNullFieldError.checkNotNull(
        question, r'DailyQuestion', 'question');
    BuiltValueNullFieldError.checkNotNull(options, r'DailyQuestion', 'options');
    BuiltValueNullFieldError.checkNotNull(
        correctAnswer, r'DailyQuestion', 'correctAnswer');
    BuiltValueNullFieldError.checkNotNull(
        explanation, r'DailyQuestion', 'explanation');
    BuiltValueNullFieldError.checkNotNull(date, r'DailyQuestion', 'date');
  }

  @override
  DailyQuestion rebuild(void Function(DailyQuestionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DailyQuestionBuilder toBuilder() => new DailyQuestionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DailyQuestion &&
        id == other.id &&
        question == other.question &&
        options == other.options &&
        correctAnswer == other.correctAnswer &&
        explanation == other.explanation &&
        date == other.date;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, question.hashCode);
    _$hash = $jc(_$hash, options.hashCode);
    _$hash = $jc(_$hash, correctAnswer.hashCode);
    _$hash = $jc(_$hash, explanation.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DailyQuestion')
          ..add('id', id)
          ..add('question', question)
          ..add('options', options)
          ..add('correctAnswer', correctAnswer)
          ..add('explanation', explanation)
          ..add('date', date))
        .toString();
  }
}

class DailyQuestionBuilder
    implements Builder<DailyQuestion, DailyQuestionBuilder> {
  _$DailyQuestion? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _question;
  String? get question => _$this._question;
  set question(String? question) => _$this._question = question;

  ListBuilder<String>? _options;
  ListBuilder<String> get options =>
      _$this._options ??= new ListBuilder<String>();
  set options(ListBuilder<String>? options) => _$this._options = options;

  String? _correctAnswer;
  String? get correctAnswer => _$this._correctAnswer;
  set correctAnswer(String? correctAnswer) =>
      _$this._correctAnswer = correctAnswer;

  String? _explanation;
  String? get explanation => _$this._explanation;
  set explanation(String? explanation) => _$this._explanation = explanation;

  int? _date;
  int? get date => _$this._date;
  set date(int? date) => _$this._date = date;

  DailyQuestionBuilder() {
    DailyQuestion._defaults(this);
  }

  DailyQuestionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _question = $v.question;
      _options = $v.options.toBuilder();
      _correctAnswer = $v.correctAnswer;
      _explanation = $v.explanation;
      _date = $v.date;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DailyQuestion other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DailyQuestion;
  }

  @override
  void update(void Function(DailyQuestionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DailyQuestion build() => _build();

  _$DailyQuestion _build() {
    _$DailyQuestion _$result;
    try {
      _$result = _$v ??
          new _$DailyQuestion._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'DailyQuestion', 'id'),
            question: BuiltValueNullFieldError.checkNotNull(
                question, r'DailyQuestion', 'question'),
            options: options.build(),
            correctAnswer: BuiltValueNullFieldError.checkNotNull(
                correctAnswer, r'DailyQuestion', 'correctAnswer'),
            explanation: BuiltValueNullFieldError.checkNotNull(
                explanation, r'DailyQuestion', 'explanation'),
            date: BuiltValueNullFieldError.checkNotNull(
                date, r'DailyQuestion', 'date'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'options';
        options.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DailyQuestion', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
