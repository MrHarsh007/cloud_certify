// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_question_with_attempt.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DailyQuestionWithAttempt extends DailyQuestionWithAttempt {
  @override
  final DailyQuestion question;
  @override
  final UserAttempt userAttempt;

  factory _$DailyQuestionWithAttempt(
          [void Function(DailyQuestionWithAttemptBuilder)? updates]) =>
      (new DailyQuestionWithAttemptBuilder()..update(updates))._build();

  _$DailyQuestionWithAttempt._(
      {required this.question, required this.userAttempt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        question, r'DailyQuestionWithAttempt', 'question');
    BuiltValueNullFieldError.checkNotNull(
        userAttempt, r'DailyQuestionWithAttempt', 'userAttempt');
  }

  @override
  DailyQuestionWithAttempt rebuild(
          void Function(DailyQuestionWithAttemptBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DailyQuestionWithAttemptBuilder toBuilder() =>
      new DailyQuestionWithAttemptBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DailyQuestionWithAttempt &&
        question == other.question &&
        userAttempt == other.userAttempt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, question.hashCode);
    _$hash = $jc(_$hash, userAttempt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DailyQuestionWithAttempt')
          ..add('question', question)
          ..add('userAttempt', userAttempt))
        .toString();
  }
}

class DailyQuestionWithAttemptBuilder
    implements
        Builder<DailyQuestionWithAttempt, DailyQuestionWithAttemptBuilder> {
  _$DailyQuestionWithAttempt? _$v;

  DailyQuestionBuilder? _question;
  DailyQuestionBuilder get question =>
      _$this._question ??= new DailyQuestionBuilder();
  set question(DailyQuestionBuilder? question) => _$this._question = question;

  UserAttemptBuilder? _userAttempt;
  UserAttemptBuilder get userAttempt =>
      _$this._userAttempt ??= new UserAttemptBuilder();
  set userAttempt(UserAttemptBuilder? userAttempt) =>
      _$this._userAttempt = userAttempt;

  DailyQuestionWithAttemptBuilder() {
    DailyQuestionWithAttempt._defaults(this);
  }

  DailyQuestionWithAttemptBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _question = $v.question.toBuilder();
      _userAttempt = $v.userAttempt.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DailyQuestionWithAttempt other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DailyQuestionWithAttempt;
  }

  @override
  void update(void Function(DailyQuestionWithAttemptBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DailyQuestionWithAttempt build() => _build();

  _$DailyQuestionWithAttempt _build() {
    _$DailyQuestionWithAttempt _$result;
    try {
      _$result = _$v ??
          new _$DailyQuestionWithAttempt._(
            question: question.build(),
            userAttempt: userAttempt.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'question';
        question.build();
        _$failedField = 'userAttempt';
        userAttempt.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DailyQuestionWithAttempt', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
