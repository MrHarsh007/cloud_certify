// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_attempt.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TestAttempt extends TestAttempt {
  @override
  final String id;
  @override
  final String userId;
  @override
  final String testId;
  @override
  final TestMode mode;
  @override
  final String status;
  @override
  final int totalQuestions;
  @override
  final int startTime;
  @override
  final int? correctAnswers;
  @override
  final int? wrongAnswers;
  @override
  final BuiltList<AttemptedQuestion>? attemptedQuestions;
  @override
  final int? endTime;
  @override
  final int? score;

  factory _$TestAttempt([void Function(TestAttemptBuilder)? updates]) =>
      (new TestAttemptBuilder()..update(updates))._build();

  _$TestAttempt._(
      {required this.id,
      required this.userId,
      required this.testId,
      required this.mode,
      required this.status,
      required this.totalQuestions,
      required this.startTime,
      this.correctAnswers,
      this.wrongAnswers,
      this.attemptedQuestions,
      this.endTime,
      this.score})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'TestAttempt', 'id');
    BuiltValueNullFieldError.checkNotNull(userId, r'TestAttempt', 'userId');
    BuiltValueNullFieldError.checkNotNull(testId, r'TestAttempt', 'testId');
    BuiltValueNullFieldError.checkNotNull(mode, r'TestAttempt', 'mode');
    BuiltValueNullFieldError.checkNotNull(status, r'TestAttempt', 'status');
    BuiltValueNullFieldError.checkNotNull(
        totalQuestions, r'TestAttempt', 'totalQuestions');
    BuiltValueNullFieldError.checkNotNull(
        startTime, r'TestAttempt', 'startTime');
  }

  @override
  TestAttempt rebuild(void Function(TestAttemptBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TestAttemptBuilder toBuilder() => new TestAttemptBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TestAttempt &&
        id == other.id &&
        userId == other.userId &&
        testId == other.testId &&
        mode == other.mode &&
        status == other.status &&
        totalQuestions == other.totalQuestions &&
        startTime == other.startTime &&
        correctAnswers == other.correctAnswers &&
        wrongAnswers == other.wrongAnswers &&
        attemptedQuestions == other.attemptedQuestions &&
        endTime == other.endTime &&
        score == other.score;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, testId.hashCode);
    _$hash = $jc(_$hash, mode.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, totalQuestions.hashCode);
    _$hash = $jc(_$hash, startTime.hashCode);
    _$hash = $jc(_$hash, correctAnswers.hashCode);
    _$hash = $jc(_$hash, wrongAnswers.hashCode);
    _$hash = $jc(_$hash, attemptedQuestions.hashCode);
    _$hash = $jc(_$hash, endTime.hashCode);
    _$hash = $jc(_$hash, score.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TestAttempt')
          ..add('id', id)
          ..add('userId', userId)
          ..add('testId', testId)
          ..add('mode', mode)
          ..add('status', status)
          ..add('totalQuestions', totalQuestions)
          ..add('startTime', startTime)
          ..add('correctAnswers', correctAnswers)
          ..add('wrongAnswers', wrongAnswers)
          ..add('attemptedQuestions', attemptedQuestions)
          ..add('endTime', endTime)
          ..add('score', score))
        .toString();
  }
}

class TestAttemptBuilder implements Builder<TestAttempt, TestAttemptBuilder> {
  _$TestAttempt? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  String? _testId;
  String? get testId => _$this._testId;
  set testId(String? testId) => _$this._testId = testId;

  TestMode? _mode;
  TestMode? get mode => _$this._mode;
  set mode(TestMode? mode) => _$this._mode = mode;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  int? _totalQuestions;
  int? get totalQuestions => _$this._totalQuestions;
  set totalQuestions(int? totalQuestions) =>
      _$this._totalQuestions = totalQuestions;

  int? _startTime;
  int? get startTime => _$this._startTime;
  set startTime(int? startTime) => _$this._startTime = startTime;

  int? _correctAnswers;
  int? get correctAnswers => _$this._correctAnswers;
  set correctAnswers(int? correctAnswers) =>
      _$this._correctAnswers = correctAnswers;

  int? _wrongAnswers;
  int? get wrongAnswers => _$this._wrongAnswers;
  set wrongAnswers(int? wrongAnswers) => _$this._wrongAnswers = wrongAnswers;

  ListBuilder<AttemptedQuestion>? _attemptedQuestions;
  ListBuilder<AttemptedQuestion> get attemptedQuestions =>
      _$this._attemptedQuestions ??= new ListBuilder<AttemptedQuestion>();
  set attemptedQuestions(ListBuilder<AttemptedQuestion>? attemptedQuestions) =>
      _$this._attemptedQuestions = attemptedQuestions;

  int? _endTime;
  int? get endTime => _$this._endTime;
  set endTime(int? endTime) => _$this._endTime = endTime;

  int? _score;
  int? get score => _$this._score;
  set score(int? score) => _$this._score = score;

  TestAttemptBuilder() {
    TestAttempt._defaults(this);
  }

  TestAttemptBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _userId = $v.userId;
      _testId = $v.testId;
      _mode = $v.mode;
      _status = $v.status;
      _totalQuestions = $v.totalQuestions;
      _startTime = $v.startTime;
      _correctAnswers = $v.correctAnswers;
      _wrongAnswers = $v.wrongAnswers;
      _attemptedQuestions = $v.attemptedQuestions?.toBuilder();
      _endTime = $v.endTime;
      _score = $v.score;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TestAttempt other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TestAttempt;
  }

  @override
  void update(void Function(TestAttemptBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TestAttempt build() => _build();

  _$TestAttempt _build() {
    _$TestAttempt _$result;
    try {
      _$result = _$v ??
          new _$TestAttempt._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'TestAttempt', 'id'),
            userId: BuiltValueNullFieldError.checkNotNull(
                userId, r'TestAttempt', 'userId'),
            testId: BuiltValueNullFieldError.checkNotNull(
                testId, r'TestAttempt', 'testId'),
            mode: BuiltValueNullFieldError.checkNotNull(
                mode, r'TestAttempt', 'mode'),
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'TestAttempt', 'status'),
            totalQuestions: BuiltValueNullFieldError.checkNotNull(
                totalQuestions, r'TestAttempt', 'totalQuestions'),
            startTime: BuiltValueNullFieldError.checkNotNull(
                startTime, r'TestAttempt', 'startTime'),
            correctAnswers: correctAnswers,
            wrongAnswers: wrongAnswers,
            attemptedQuestions: _attemptedQuestions?.build(),
            endTime: endTime,
            score: score,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'attemptedQuestions';
        _attemptedQuestions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TestAttempt', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
