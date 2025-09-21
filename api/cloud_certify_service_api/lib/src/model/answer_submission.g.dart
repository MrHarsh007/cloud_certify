// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'answer_submission.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AnswerSubmission extends AnswerSubmission {
  @override
  final String questionId;
  @override
  final String answer;

  factory _$AnswerSubmission(
          [void Function(AnswerSubmissionBuilder)? updates]) =>
      (new AnswerSubmissionBuilder()..update(updates))._build();

  _$AnswerSubmission._({required this.questionId, required this.answer})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        questionId, r'AnswerSubmission', 'questionId');
    BuiltValueNullFieldError.checkNotNull(
        answer, r'AnswerSubmission', 'answer');
  }

  @override
  AnswerSubmission rebuild(void Function(AnswerSubmissionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnswerSubmissionBuilder toBuilder() =>
      new AnswerSubmissionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnswerSubmission &&
        questionId == other.questionId &&
        answer == other.answer;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, questionId.hashCode);
    _$hash = $jc(_$hash, answer.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AnswerSubmission')
          ..add('questionId', questionId)
          ..add('answer', answer))
        .toString();
  }
}

class AnswerSubmissionBuilder
    implements Builder<AnswerSubmission, AnswerSubmissionBuilder> {
  _$AnswerSubmission? _$v;

  String? _questionId;
  String? get questionId => _$this._questionId;
  set questionId(String? questionId) => _$this._questionId = questionId;

  String? _answer;
  String? get answer => _$this._answer;
  set answer(String? answer) => _$this._answer = answer;

  AnswerSubmissionBuilder() {
    AnswerSubmission._defaults(this);
  }

  AnswerSubmissionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _questionId = $v.questionId;
      _answer = $v.answer;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnswerSubmission other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AnswerSubmission;
  }

  @override
  void update(void Function(AnswerSubmissionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnswerSubmission build() => _build();

  _$AnswerSubmission _build() {
    final _$result = _$v ??
        new _$AnswerSubmission._(
          questionId: BuiltValueNullFieldError.checkNotNull(
              questionId, r'AnswerSubmission', 'questionId'),
          answer: BuiltValueNullFieldError.checkNotNull(
              answer, r'AnswerSubmission', 'answer'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
