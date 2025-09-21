// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attempted_question.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AttemptedQuestion extends AttemptedQuestion {
  @override
  final String questionId;
  @override
  final BuiltList<String> selectedOption;
  @override
  final bool isCorrect;
  @override
  final int timeTaken;

  factory _$AttemptedQuestion(
          [void Function(AttemptedQuestionBuilder)? updates]) =>
      (new AttemptedQuestionBuilder()..update(updates))._build();

  _$AttemptedQuestion._(
      {required this.questionId,
      required this.selectedOption,
      required this.isCorrect,
      required this.timeTaken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        questionId, r'AttemptedQuestion', 'questionId');
    BuiltValueNullFieldError.checkNotNull(
        selectedOption, r'AttemptedQuestion', 'selectedOption');
    BuiltValueNullFieldError.checkNotNull(
        isCorrect, r'AttemptedQuestion', 'isCorrect');
    BuiltValueNullFieldError.checkNotNull(
        timeTaken, r'AttemptedQuestion', 'timeTaken');
  }

  @override
  AttemptedQuestion rebuild(void Function(AttemptedQuestionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AttemptedQuestionBuilder toBuilder() =>
      new AttemptedQuestionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AttemptedQuestion &&
        questionId == other.questionId &&
        selectedOption == other.selectedOption &&
        isCorrect == other.isCorrect &&
        timeTaken == other.timeTaken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, questionId.hashCode);
    _$hash = $jc(_$hash, selectedOption.hashCode);
    _$hash = $jc(_$hash, isCorrect.hashCode);
    _$hash = $jc(_$hash, timeTaken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AttemptedQuestion')
          ..add('questionId', questionId)
          ..add('selectedOption', selectedOption)
          ..add('isCorrect', isCorrect)
          ..add('timeTaken', timeTaken))
        .toString();
  }
}

class AttemptedQuestionBuilder
    implements Builder<AttemptedQuestion, AttemptedQuestionBuilder> {
  _$AttemptedQuestion? _$v;

  String? _questionId;
  String? get questionId => _$this._questionId;
  set questionId(String? questionId) => _$this._questionId = questionId;

  ListBuilder<String>? _selectedOption;
  ListBuilder<String> get selectedOption =>
      _$this._selectedOption ??= new ListBuilder<String>();
  set selectedOption(ListBuilder<String>? selectedOption) =>
      _$this._selectedOption = selectedOption;

  bool? _isCorrect;
  bool? get isCorrect => _$this._isCorrect;
  set isCorrect(bool? isCorrect) => _$this._isCorrect = isCorrect;

  int? _timeTaken;
  int? get timeTaken => _$this._timeTaken;
  set timeTaken(int? timeTaken) => _$this._timeTaken = timeTaken;

  AttemptedQuestionBuilder() {
    AttemptedQuestion._defaults(this);
  }

  AttemptedQuestionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _questionId = $v.questionId;
      _selectedOption = $v.selectedOption.toBuilder();
      _isCorrect = $v.isCorrect;
      _timeTaken = $v.timeTaken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AttemptedQuestion other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AttemptedQuestion;
  }

  @override
  void update(void Function(AttemptedQuestionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AttemptedQuestion build() => _build();

  _$AttemptedQuestion _build() {
    _$AttemptedQuestion _$result;
    try {
      _$result = _$v ??
          new _$AttemptedQuestion._(
            questionId: BuiltValueNullFieldError.checkNotNull(
                questionId, r'AttemptedQuestion', 'questionId'),
            selectedOption: selectedOption.build(),
            isCorrect: BuiltValueNullFieldError.checkNotNull(
                isCorrect, r'AttemptedQuestion', 'isCorrect'),
            timeTaken: BuiltValueNullFieldError.checkNotNull(
                timeTaken, r'AttemptedQuestion', 'timeTaken'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'selectedOption';
        selectedOption.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AttemptedQuestion', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
