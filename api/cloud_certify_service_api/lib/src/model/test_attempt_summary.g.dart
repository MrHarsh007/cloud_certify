// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_attempt_summary.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TestAttemptSummary extends TestAttemptSummary {
  @override
  final String attemptId;
  @override
  final String testId;
  @override
  final TestMode mode;
  @override
  final String status;
  @override
  final int startTime;
  @override
  final int totalQuestions;
  @override
  final TestSummary? testData;
  @override
  final int? endTime;
  @override
  final int? attemptedQuestions;
  @override
  final int? correctAnswers;
  @override
  final int? wrongAnswers;
  @override
  final int? score;
  @override
  final bool? resume;

  factory _$TestAttemptSummary(
          [void Function(TestAttemptSummaryBuilder)? updates]) =>
      (new TestAttemptSummaryBuilder()..update(updates))._build();

  _$TestAttemptSummary._(
      {required this.attemptId,
      required this.testId,
      required this.mode,
      required this.status,
      required this.startTime,
      required this.totalQuestions,
      this.testData,
      this.endTime,
      this.attemptedQuestions,
      this.correctAnswers,
      this.wrongAnswers,
      this.score,
      this.resume})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        attemptId, r'TestAttemptSummary', 'attemptId');
    BuiltValueNullFieldError.checkNotNull(
        testId, r'TestAttemptSummary', 'testId');
    BuiltValueNullFieldError.checkNotNull(mode, r'TestAttemptSummary', 'mode');
    BuiltValueNullFieldError.checkNotNull(
        status, r'TestAttemptSummary', 'status');
    BuiltValueNullFieldError.checkNotNull(
        startTime, r'TestAttemptSummary', 'startTime');
    BuiltValueNullFieldError.checkNotNull(
        totalQuestions, r'TestAttemptSummary', 'totalQuestions');
  }

  @override
  TestAttemptSummary rebuild(
          void Function(TestAttemptSummaryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TestAttemptSummaryBuilder toBuilder() =>
      new TestAttemptSummaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TestAttemptSummary &&
        attemptId == other.attemptId &&
        testId == other.testId &&
        mode == other.mode &&
        status == other.status &&
        startTime == other.startTime &&
        totalQuestions == other.totalQuestions &&
        testData == other.testData &&
        endTime == other.endTime &&
        attemptedQuestions == other.attemptedQuestions &&
        correctAnswers == other.correctAnswers &&
        wrongAnswers == other.wrongAnswers &&
        score == other.score &&
        resume == other.resume;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, attemptId.hashCode);
    _$hash = $jc(_$hash, testId.hashCode);
    _$hash = $jc(_$hash, mode.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, startTime.hashCode);
    _$hash = $jc(_$hash, totalQuestions.hashCode);
    _$hash = $jc(_$hash, testData.hashCode);
    _$hash = $jc(_$hash, endTime.hashCode);
    _$hash = $jc(_$hash, attemptedQuestions.hashCode);
    _$hash = $jc(_$hash, correctAnswers.hashCode);
    _$hash = $jc(_$hash, wrongAnswers.hashCode);
    _$hash = $jc(_$hash, score.hashCode);
    _$hash = $jc(_$hash, resume.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TestAttemptSummary')
          ..add('attemptId', attemptId)
          ..add('testId', testId)
          ..add('mode', mode)
          ..add('status', status)
          ..add('startTime', startTime)
          ..add('totalQuestions', totalQuestions)
          ..add('testData', testData)
          ..add('endTime', endTime)
          ..add('attemptedQuestions', attemptedQuestions)
          ..add('correctAnswers', correctAnswers)
          ..add('wrongAnswers', wrongAnswers)
          ..add('score', score)
          ..add('resume', resume))
        .toString();
  }
}

class TestAttemptSummaryBuilder
    implements Builder<TestAttemptSummary, TestAttemptSummaryBuilder> {
  _$TestAttemptSummary? _$v;

  String? _attemptId;
  String? get attemptId => _$this._attemptId;
  set attemptId(String? attemptId) => _$this._attemptId = attemptId;

  String? _testId;
  String? get testId => _$this._testId;
  set testId(String? testId) => _$this._testId = testId;

  TestMode? _mode;
  TestMode? get mode => _$this._mode;
  set mode(TestMode? mode) => _$this._mode = mode;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  int? _startTime;
  int? get startTime => _$this._startTime;
  set startTime(int? startTime) => _$this._startTime = startTime;

  int? _totalQuestions;
  int? get totalQuestions => _$this._totalQuestions;
  set totalQuestions(int? totalQuestions) =>
      _$this._totalQuestions = totalQuestions;

  TestSummaryBuilder? _testData;
  TestSummaryBuilder get testData =>
      _$this._testData ??= new TestSummaryBuilder();
  set testData(TestSummaryBuilder? testData) => _$this._testData = testData;

  int? _endTime;
  int? get endTime => _$this._endTime;
  set endTime(int? endTime) => _$this._endTime = endTime;

  int? _attemptedQuestions;
  int? get attemptedQuestions => _$this._attemptedQuestions;
  set attemptedQuestions(int? attemptedQuestions) =>
      _$this._attemptedQuestions = attemptedQuestions;

  int? _correctAnswers;
  int? get correctAnswers => _$this._correctAnswers;
  set correctAnswers(int? correctAnswers) =>
      _$this._correctAnswers = correctAnswers;

  int? _wrongAnswers;
  int? get wrongAnswers => _$this._wrongAnswers;
  set wrongAnswers(int? wrongAnswers) => _$this._wrongAnswers = wrongAnswers;

  int? _score;
  int? get score => _$this._score;
  set score(int? score) => _$this._score = score;

  bool? _resume;
  bool? get resume => _$this._resume;
  set resume(bool? resume) => _$this._resume = resume;

  TestAttemptSummaryBuilder() {
    TestAttemptSummary._defaults(this);
  }

  TestAttemptSummaryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _attemptId = $v.attemptId;
      _testId = $v.testId;
      _mode = $v.mode;
      _status = $v.status;
      _startTime = $v.startTime;
      _totalQuestions = $v.totalQuestions;
      _testData = $v.testData?.toBuilder();
      _endTime = $v.endTime;
      _attemptedQuestions = $v.attemptedQuestions;
      _correctAnswers = $v.correctAnswers;
      _wrongAnswers = $v.wrongAnswers;
      _score = $v.score;
      _resume = $v.resume;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TestAttemptSummary other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TestAttemptSummary;
  }

  @override
  void update(void Function(TestAttemptSummaryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TestAttemptSummary build() => _build();

  _$TestAttemptSummary _build() {
    _$TestAttemptSummary _$result;
    try {
      _$result = _$v ??
          new _$TestAttemptSummary._(
            attemptId: BuiltValueNullFieldError.checkNotNull(
                attemptId, r'TestAttemptSummary', 'attemptId'),
            testId: BuiltValueNullFieldError.checkNotNull(
                testId, r'TestAttemptSummary', 'testId'),
            mode: BuiltValueNullFieldError.checkNotNull(
                mode, r'TestAttemptSummary', 'mode'),
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'TestAttemptSummary', 'status'),
            startTime: BuiltValueNullFieldError.checkNotNull(
                startTime, r'TestAttemptSummary', 'startTime'),
            totalQuestions: BuiltValueNullFieldError.checkNotNull(
                totalQuestions, r'TestAttemptSummary', 'totalQuestions'),
            testData: _testData?.build(),
            endTime: endTime,
            attemptedQuestions: attemptedQuestions,
            correctAnswers: correctAnswers,
            wrongAnswers: wrongAnswers,
            score: score,
            resume: resume,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'testData';
        _testData?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TestAttemptSummary', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
