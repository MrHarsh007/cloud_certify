// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_with_questions.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TestWithQuestions extends TestWithQuestions {
  @override
  final TestSummary test;
  @override
  final BuiltList<TestQuestionWithoutAnswer> questions;

  factory _$TestWithQuestions(
          [void Function(TestWithQuestionsBuilder)? updates]) =>
      (new TestWithQuestionsBuilder()..update(updates))._build();

  _$TestWithQuestions._({required this.test, required this.questions})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(test, r'TestWithQuestions', 'test');
    BuiltValueNullFieldError.checkNotNull(
        questions, r'TestWithQuestions', 'questions');
  }

  @override
  TestWithQuestions rebuild(void Function(TestWithQuestionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TestWithQuestionsBuilder toBuilder() =>
      new TestWithQuestionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TestWithQuestions &&
        test == other.test &&
        questions == other.questions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, test.hashCode);
    _$hash = $jc(_$hash, questions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TestWithQuestions')
          ..add('test', test)
          ..add('questions', questions))
        .toString();
  }
}

class TestWithQuestionsBuilder
    implements Builder<TestWithQuestions, TestWithQuestionsBuilder> {
  _$TestWithQuestions? _$v;

  TestSummaryBuilder? _test;
  TestSummaryBuilder get test => _$this._test ??= new TestSummaryBuilder();
  set test(TestSummaryBuilder? test) => _$this._test = test;

  ListBuilder<TestQuestionWithoutAnswer>? _questions;
  ListBuilder<TestQuestionWithoutAnswer> get questions =>
      _$this._questions ??= new ListBuilder<TestQuestionWithoutAnswer>();
  set questions(ListBuilder<TestQuestionWithoutAnswer>? questions) =>
      _$this._questions = questions;

  TestWithQuestionsBuilder() {
    TestWithQuestions._defaults(this);
  }

  TestWithQuestionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _test = $v.test.toBuilder();
      _questions = $v.questions.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TestWithQuestions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TestWithQuestions;
  }

  @override
  void update(void Function(TestWithQuestionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TestWithQuestions build() => _build();

  _$TestWithQuestions _build() {
    _$TestWithQuestions _$result;
    try {
      _$result = _$v ??
          new _$TestWithQuestions._(
            test: test.build(),
            questions: questions.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'test';
        test.build();
        _$failedField = 'questions';
        questions.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TestWithQuestions', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
