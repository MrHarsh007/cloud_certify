// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attempted_question_detail.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AttemptedQuestionDetail extends AttemptedQuestionDetail {
  @override
  final String questionId;
  @override
  final String questionText;
  @override
  final BuiltMap<String, String> options;
  @override
  final BuiltList<String> selectedOption;
  @override
  final String correctOption;
  @override
  final bool isCorrect;
  @override
  final String explanation;
  @override
  final String topic;
  @override
  final int timeTaken;

  factory _$AttemptedQuestionDetail(
          [void Function(AttemptedQuestionDetailBuilder)? updates]) =>
      (new AttemptedQuestionDetailBuilder()..update(updates))._build();

  _$AttemptedQuestionDetail._(
      {required this.questionId,
      required this.questionText,
      required this.options,
      required this.selectedOption,
      required this.correctOption,
      required this.isCorrect,
      required this.explanation,
      required this.topic,
      required this.timeTaken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        questionId, r'AttemptedQuestionDetail', 'questionId');
    BuiltValueNullFieldError.checkNotNull(
        questionText, r'AttemptedQuestionDetail', 'questionText');
    BuiltValueNullFieldError.checkNotNull(
        options, r'AttemptedQuestionDetail', 'options');
    BuiltValueNullFieldError.checkNotNull(
        selectedOption, r'AttemptedQuestionDetail', 'selectedOption');
    BuiltValueNullFieldError.checkNotNull(
        correctOption, r'AttemptedQuestionDetail', 'correctOption');
    BuiltValueNullFieldError.checkNotNull(
        isCorrect, r'AttemptedQuestionDetail', 'isCorrect');
    BuiltValueNullFieldError.checkNotNull(
        explanation, r'AttemptedQuestionDetail', 'explanation');
    BuiltValueNullFieldError.checkNotNull(
        topic, r'AttemptedQuestionDetail', 'topic');
    BuiltValueNullFieldError.checkNotNull(
        timeTaken, r'AttemptedQuestionDetail', 'timeTaken');
  }

  @override
  AttemptedQuestionDetail rebuild(
          void Function(AttemptedQuestionDetailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AttemptedQuestionDetailBuilder toBuilder() =>
      new AttemptedQuestionDetailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AttemptedQuestionDetail &&
        questionId == other.questionId &&
        questionText == other.questionText &&
        options == other.options &&
        selectedOption == other.selectedOption &&
        correctOption == other.correctOption &&
        isCorrect == other.isCorrect &&
        explanation == other.explanation &&
        topic == other.topic &&
        timeTaken == other.timeTaken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, questionId.hashCode);
    _$hash = $jc(_$hash, questionText.hashCode);
    _$hash = $jc(_$hash, options.hashCode);
    _$hash = $jc(_$hash, selectedOption.hashCode);
    _$hash = $jc(_$hash, correctOption.hashCode);
    _$hash = $jc(_$hash, isCorrect.hashCode);
    _$hash = $jc(_$hash, explanation.hashCode);
    _$hash = $jc(_$hash, topic.hashCode);
    _$hash = $jc(_$hash, timeTaken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AttemptedQuestionDetail')
          ..add('questionId', questionId)
          ..add('questionText', questionText)
          ..add('options', options)
          ..add('selectedOption', selectedOption)
          ..add('correctOption', correctOption)
          ..add('isCorrect', isCorrect)
          ..add('explanation', explanation)
          ..add('topic', topic)
          ..add('timeTaken', timeTaken))
        .toString();
  }
}

class AttemptedQuestionDetailBuilder
    implements
        Builder<AttemptedQuestionDetail, AttemptedQuestionDetailBuilder> {
  _$AttemptedQuestionDetail? _$v;

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

  ListBuilder<String>? _selectedOption;
  ListBuilder<String> get selectedOption =>
      _$this._selectedOption ??= new ListBuilder<String>();
  set selectedOption(ListBuilder<String>? selectedOption) =>
      _$this._selectedOption = selectedOption;

  String? _correctOption;
  String? get correctOption => _$this._correctOption;
  set correctOption(String? correctOption) =>
      _$this._correctOption = correctOption;

  bool? _isCorrect;
  bool? get isCorrect => _$this._isCorrect;
  set isCorrect(bool? isCorrect) => _$this._isCorrect = isCorrect;

  String? _explanation;
  String? get explanation => _$this._explanation;
  set explanation(String? explanation) => _$this._explanation = explanation;

  String? _topic;
  String? get topic => _$this._topic;
  set topic(String? topic) => _$this._topic = topic;

  int? _timeTaken;
  int? get timeTaken => _$this._timeTaken;
  set timeTaken(int? timeTaken) => _$this._timeTaken = timeTaken;

  AttemptedQuestionDetailBuilder() {
    AttemptedQuestionDetail._defaults(this);
  }

  AttemptedQuestionDetailBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _questionId = $v.questionId;
      _questionText = $v.questionText;
      _options = $v.options.toBuilder();
      _selectedOption = $v.selectedOption.toBuilder();
      _correctOption = $v.correctOption;
      _isCorrect = $v.isCorrect;
      _explanation = $v.explanation;
      _topic = $v.topic;
      _timeTaken = $v.timeTaken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AttemptedQuestionDetail other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AttemptedQuestionDetail;
  }

  @override
  void update(void Function(AttemptedQuestionDetailBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AttemptedQuestionDetail build() => _build();

  _$AttemptedQuestionDetail _build() {
    _$AttemptedQuestionDetail _$result;
    try {
      _$result = _$v ??
          new _$AttemptedQuestionDetail._(
            questionId: BuiltValueNullFieldError.checkNotNull(
                questionId, r'AttemptedQuestionDetail', 'questionId'),
            questionText: BuiltValueNullFieldError.checkNotNull(
                questionText, r'AttemptedQuestionDetail', 'questionText'),
            options: options.build(),
            selectedOption: selectedOption.build(),
            correctOption: BuiltValueNullFieldError.checkNotNull(
                correctOption, r'AttemptedQuestionDetail', 'correctOption'),
            isCorrect: BuiltValueNullFieldError.checkNotNull(
                isCorrect, r'AttemptedQuestionDetail', 'isCorrect'),
            explanation: BuiltValueNullFieldError.checkNotNull(
                explanation, r'AttemptedQuestionDetail', 'explanation'),
            topic: BuiltValueNullFieldError.checkNotNull(
                topic, r'AttemptedQuestionDetail', 'topic'),
            timeTaken: BuiltValueNullFieldError.checkNotNull(
                timeTaken, r'AttemptedQuestionDetail', 'timeTaken'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'options';
        options.build();
        _$failedField = 'selectedOption';
        selectedOption.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AttemptedQuestionDetail', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
