// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_attempt_history.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TestAttemptHistory extends TestAttemptHistory {
  @override
  final String id;
  @override
  final String testId;
  @override
  final String testTitle;
  @override
  final String userId;
  @override
  final TestMode mode;
  @override
  final String status;
  @override
  final int startTime;
  @override
  final int totalQuestions;
  @override
  final int? endTime;
  @override
  final BuiltList<AttemptedQuestionDetail>? attemptedQuestions;
  @override
  final BuiltList<UnattemptedQuestion>? unattemptedQuestions;
  @override
  final int? correctAnswers;
  @override
  final int? wrongAnswers;
  @override
  final int? score;
  @override
  final String? category;
  @override
  final int? totalTimeTaken;
  @override
  final int? avgTimePerQuestion;
  @override
  final String? difficulty;

  factory _$TestAttemptHistory(
          [void Function(TestAttemptHistoryBuilder)? updates]) =>
      (new TestAttemptHistoryBuilder()..update(updates))._build();

  _$TestAttemptHistory._(
      {required this.id,
      required this.testId,
      required this.testTitle,
      required this.userId,
      required this.mode,
      required this.status,
      required this.startTime,
      required this.totalQuestions,
      this.endTime,
      this.attemptedQuestions,
      this.unattemptedQuestions,
      this.correctAnswers,
      this.wrongAnswers,
      this.score,
      this.category,
      this.totalTimeTaken,
      this.avgTimePerQuestion,
      this.difficulty})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'TestAttemptHistory', 'id');
    BuiltValueNullFieldError.checkNotNull(
        testId, r'TestAttemptHistory', 'testId');
    BuiltValueNullFieldError.checkNotNull(
        testTitle, r'TestAttemptHistory', 'testTitle');
    BuiltValueNullFieldError.checkNotNull(
        userId, r'TestAttemptHistory', 'userId');
    BuiltValueNullFieldError.checkNotNull(mode, r'TestAttemptHistory', 'mode');
    BuiltValueNullFieldError.checkNotNull(
        status, r'TestAttemptHistory', 'status');
    BuiltValueNullFieldError.checkNotNull(
        startTime, r'TestAttemptHistory', 'startTime');
    BuiltValueNullFieldError.checkNotNull(
        totalQuestions, r'TestAttemptHistory', 'totalQuestions');
  }

  @override
  TestAttemptHistory rebuild(
          void Function(TestAttemptHistoryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TestAttemptHistoryBuilder toBuilder() =>
      new TestAttemptHistoryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TestAttemptHistory &&
        id == other.id &&
        testId == other.testId &&
        testTitle == other.testTitle &&
        userId == other.userId &&
        mode == other.mode &&
        status == other.status &&
        startTime == other.startTime &&
        totalQuestions == other.totalQuestions &&
        endTime == other.endTime &&
        attemptedQuestions == other.attemptedQuestions &&
        unattemptedQuestions == other.unattemptedQuestions &&
        correctAnswers == other.correctAnswers &&
        wrongAnswers == other.wrongAnswers &&
        score == other.score &&
        category == other.category &&
        totalTimeTaken == other.totalTimeTaken &&
        avgTimePerQuestion == other.avgTimePerQuestion &&
        difficulty == other.difficulty;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, testId.hashCode);
    _$hash = $jc(_$hash, testTitle.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, mode.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, startTime.hashCode);
    _$hash = $jc(_$hash, totalQuestions.hashCode);
    _$hash = $jc(_$hash, endTime.hashCode);
    _$hash = $jc(_$hash, attemptedQuestions.hashCode);
    _$hash = $jc(_$hash, unattemptedQuestions.hashCode);
    _$hash = $jc(_$hash, correctAnswers.hashCode);
    _$hash = $jc(_$hash, wrongAnswers.hashCode);
    _$hash = $jc(_$hash, score.hashCode);
    _$hash = $jc(_$hash, category.hashCode);
    _$hash = $jc(_$hash, totalTimeTaken.hashCode);
    _$hash = $jc(_$hash, avgTimePerQuestion.hashCode);
    _$hash = $jc(_$hash, difficulty.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TestAttemptHistory')
          ..add('id', id)
          ..add('testId', testId)
          ..add('testTitle', testTitle)
          ..add('userId', userId)
          ..add('mode', mode)
          ..add('status', status)
          ..add('startTime', startTime)
          ..add('totalQuestions', totalQuestions)
          ..add('endTime', endTime)
          ..add('attemptedQuestions', attemptedQuestions)
          ..add('unattemptedQuestions', unattemptedQuestions)
          ..add('correctAnswers', correctAnswers)
          ..add('wrongAnswers', wrongAnswers)
          ..add('score', score)
          ..add('category', category)
          ..add('totalTimeTaken', totalTimeTaken)
          ..add('avgTimePerQuestion', avgTimePerQuestion)
          ..add('difficulty', difficulty))
        .toString();
  }
}

class TestAttemptHistoryBuilder
    implements Builder<TestAttemptHistory, TestAttemptHistoryBuilder> {
  _$TestAttemptHistory? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _testId;
  String? get testId => _$this._testId;
  set testId(String? testId) => _$this._testId = testId;

  String? _testTitle;
  String? get testTitle => _$this._testTitle;
  set testTitle(String? testTitle) => _$this._testTitle = testTitle;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

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

  int? _endTime;
  int? get endTime => _$this._endTime;
  set endTime(int? endTime) => _$this._endTime = endTime;

  ListBuilder<AttemptedQuestionDetail>? _attemptedQuestions;
  ListBuilder<AttemptedQuestionDetail> get attemptedQuestions =>
      _$this._attemptedQuestions ??= new ListBuilder<AttemptedQuestionDetail>();
  set attemptedQuestions(
          ListBuilder<AttemptedQuestionDetail>? attemptedQuestions) =>
      _$this._attemptedQuestions = attemptedQuestions;

  ListBuilder<UnattemptedQuestion>? _unattemptedQuestions;
  ListBuilder<UnattemptedQuestion> get unattemptedQuestions =>
      _$this._unattemptedQuestions ??= new ListBuilder<UnattemptedQuestion>();
  set unattemptedQuestions(
          ListBuilder<UnattemptedQuestion>? unattemptedQuestions) =>
      _$this._unattemptedQuestions = unattemptedQuestions;

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

  String? _category;
  String? get category => _$this._category;
  set category(String? category) => _$this._category = category;

  int? _totalTimeTaken;
  int? get totalTimeTaken => _$this._totalTimeTaken;
  set totalTimeTaken(int? totalTimeTaken) =>
      _$this._totalTimeTaken = totalTimeTaken;

  int? _avgTimePerQuestion;
  int? get avgTimePerQuestion => _$this._avgTimePerQuestion;
  set avgTimePerQuestion(int? avgTimePerQuestion) =>
      _$this._avgTimePerQuestion = avgTimePerQuestion;

  String? _difficulty;
  String? get difficulty => _$this._difficulty;
  set difficulty(String? difficulty) => _$this._difficulty = difficulty;

  TestAttemptHistoryBuilder() {
    TestAttemptHistory._defaults(this);
  }

  TestAttemptHistoryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _testId = $v.testId;
      _testTitle = $v.testTitle;
      _userId = $v.userId;
      _mode = $v.mode;
      _status = $v.status;
      _startTime = $v.startTime;
      _totalQuestions = $v.totalQuestions;
      _endTime = $v.endTime;
      _attemptedQuestions = $v.attemptedQuestions?.toBuilder();
      _unattemptedQuestions = $v.unattemptedQuestions?.toBuilder();
      _correctAnswers = $v.correctAnswers;
      _wrongAnswers = $v.wrongAnswers;
      _score = $v.score;
      _category = $v.category;
      _totalTimeTaken = $v.totalTimeTaken;
      _avgTimePerQuestion = $v.avgTimePerQuestion;
      _difficulty = $v.difficulty;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TestAttemptHistory other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TestAttemptHistory;
  }

  @override
  void update(void Function(TestAttemptHistoryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TestAttemptHistory build() => _build();

  _$TestAttemptHistory _build() {
    _$TestAttemptHistory _$result;
    try {
      _$result = _$v ??
          new _$TestAttemptHistory._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'TestAttemptHistory', 'id'),
            testId: BuiltValueNullFieldError.checkNotNull(
                testId, r'TestAttemptHistory', 'testId'),
            testTitle: BuiltValueNullFieldError.checkNotNull(
                testTitle, r'TestAttemptHistory', 'testTitle'),
            userId: BuiltValueNullFieldError.checkNotNull(
                userId, r'TestAttemptHistory', 'userId'),
            mode: BuiltValueNullFieldError.checkNotNull(
                mode, r'TestAttemptHistory', 'mode'),
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'TestAttemptHistory', 'status'),
            startTime: BuiltValueNullFieldError.checkNotNull(
                startTime, r'TestAttemptHistory', 'startTime'),
            totalQuestions: BuiltValueNullFieldError.checkNotNull(
                totalQuestions, r'TestAttemptHistory', 'totalQuestions'),
            endTime: endTime,
            attemptedQuestions: _attemptedQuestions?.build(),
            unattemptedQuestions: _unattemptedQuestions?.build(),
            correctAnswers: correctAnswers,
            wrongAnswers: wrongAnswers,
            score: score,
            category: category,
            totalTimeTaken: totalTimeTaken,
            avgTimePerQuestion: avgTimePerQuestion,
            difficulty: difficulty,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'attemptedQuestions';
        _attemptedQuestions?.build();
        _$failedField = 'unattemptedQuestions';
        _unattemptedQuestions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TestAttemptHistory', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
