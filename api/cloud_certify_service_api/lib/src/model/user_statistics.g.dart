// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_statistics.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserStatistics extends UserStatistics {
  @override
  final int totalTestsAttempted;
  @override
  final int totalPracticeTests;
  @override
  final int totalRealTests;
  @override
  final num avgScore;
  @override
  final num bestScore;
  @override
  final int totalTimeSpent;
  @override
  final int avgTimePerTest;
  @override
  final int totalQuestionsAttempted;
  @override
  final int totalCorrectAnswers;
  @override
  final num accuracyRate;

  factory _$UserStatistics([void Function(UserStatisticsBuilder)? updates]) =>
      (new UserStatisticsBuilder()..update(updates))._build();

  _$UserStatistics._(
      {required this.totalTestsAttempted,
      required this.totalPracticeTests,
      required this.totalRealTests,
      required this.avgScore,
      required this.bestScore,
      required this.totalTimeSpent,
      required this.avgTimePerTest,
      required this.totalQuestionsAttempted,
      required this.totalCorrectAnswers,
      required this.accuracyRate})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        totalTestsAttempted, r'UserStatistics', 'totalTestsAttempted');
    BuiltValueNullFieldError.checkNotNull(
        totalPracticeTests, r'UserStatistics', 'totalPracticeTests');
    BuiltValueNullFieldError.checkNotNull(
        totalRealTests, r'UserStatistics', 'totalRealTests');
    BuiltValueNullFieldError.checkNotNull(
        avgScore, r'UserStatistics', 'avgScore');
    BuiltValueNullFieldError.checkNotNull(
        bestScore, r'UserStatistics', 'bestScore');
    BuiltValueNullFieldError.checkNotNull(
        totalTimeSpent, r'UserStatistics', 'totalTimeSpent');
    BuiltValueNullFieldError.checkNotNull(
        avgTimePerTest, r'UserStatistics', 'avgTimePerTest');
    BuiltValueNullFieldError.checkNotNull(
        totalQuestionsAttempted, r'UserStatistics', 'totalQuestionsAttempted');
    BuiltValueNullFieldError.checkNotNull(
        totalCorrectAnswers, r'UserStatistics', 'totalCorrectAnswers');
    BuiltValueNullFieldError.checkNotNull(
        accuracyRate, r'UserStatistics', 'accuracyRate');
  }

  @override
  UserStatistics rebuild(void Function(UserStatisticsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserStatisticsBuilder toBuilder() =>
      new UserStatisticsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserStatistics &&
        totalTestsAttempted == other.totalTestsAttempted &&
        totalPracticeTests == other.totalPracticeTests &&
        totalRealTests == other.totalRealTests &&
        avgScore == other.avgScore &&
        bestScore == other.bestScore &&
        totalTimeSpent == other.totalTimeSpent &&
        avgTimePerTest == other.avgTimePerTest &&
        totalQuestionsAttempted == other.totalQuestionsAttempted &&
        totalCorrectAnswers == other.totalCorrectAnswers &&
        accuracyRate == other.accuracyRate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, totalTestsAttempted.hashCode);
    _$hash = $jc(_$hash, totalPracticeTests.hashCode);
    _$hash = $jc(_$hash, totalRealTests.hashCode);
    _$hash = $jc(_$hash, avgScore.hashCode);
    _$hash = $jc(_$hash, bestScore.hashCode);
    _$hash = $jc(_$hash, totalTimeSpent.hashCode);
    _$hash = $jc(_$hash, avgTimePerTest.hashCode);
    _$hash = $jc(_$hash, totalQuestionsAttempted.hashCode);
    _$hash = $jc(_$hash, totalCorrectAnswers.hashCode);
    _$hash = $jc(_$hash, accuracyRate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserStatistics')
          ..add('totalTestsAttempted', totalTestsAttempted)
          ..add('totalPracticeTests', totalPracticeTests)
          ..add('totalRealTests', totalRealTests)
          ..add('avgScore', avgScore)
          ..add('bestScore', bestScore)
          ..add('totalTimeSpent', totalTimeSpent)
          ..add('avgTimePerTest', avgTimePerTest)
          ..add('totalQuestionsAttempted', totalQuestionsAttempted)
          ..add('totalCorrectAnswers', totalCorrectAnswers)
          ..add('accuracyRate', accuracyRate))
        .toString();
  }
}

class UserStatisticsBuilder
    implements Builder<UserStatistics, UserStatisticsBuilder> {
  _$UserStatistics? _$v;

  int? _totalTestsAttempted;
  int? get totalTestsAttempted => _$this._totalTestsAttempted;
  set totalTestsAttempted(int? totalTestsAttempted) =>
      _$this._totalTestsAttempted = totalTestsAttempted;

  int? _totalPracticeTests;
  int? get totalPracticeTests => _$this._totalPracticeTests;
  set totalPracticeTests(int? totalPracticeTests) =>
      _$this._totalPracticeTests = totalPracticeTests;

  int? _totalRealTests;
  int? get totalRealTests => _$this._totalRealTests;
  set totalRealTests(int? totalRealTests) =>
      _$this._totalRealTests = totalRealTests;

  num? _avgScore;
  num? get avgScore => _$this._avgScore;
  set avgScore(num? avgScore) => _$this._avgScore = avgScore;

  num? _bestScore;
  num? get bestScore => _$this._bestScore;
  set bestScore(num? bestScore) => _$this._bestScore = bestScore;

  int? _totalTimeSpent;
  int? get totalTimeSpent => _$this._totalTimeSpent;
  set totalTimeSpent(int? totalTimeSpent) =>
      _$this._totalTimeSpent = totalTimeSpent;

  int? _avgTimePerTest;
  int? get avgTimePerTest => _$this._avgTimePerTest;
  set avgTimePerTest(int? avgTimePerTest) =>
      _$this._avgTimePerTest = avgTimePerTest;

  int? _totalQuestionsAttempted;
  int? get totalQuestionsAttempted => _$this._totalQuestionsAttempted;
  set totalQuestionsAttempted(int? totalQuestionsAttempted) =>
      _$this._totalQuestionsAttempted = totalQuestionsAttempted;

  int? _totalCorrectAnswers;
  int? get totalCorrectAnswers => _$this._totalCorrectAnswers;
  set totalCorrectAnswers(int? totalCorrectAnswers) =>
      _$this._totalCorrectAnswers = totalCorrectAnswers;

  num? _accuracyRate;
  num? get accuracyRate => _$this._accuracyRate;
  set accuracyRate(num? accuracyRate) => _$this._accuracyRate = accuracyRate;

  UserStatisticsBuilder() {
    UserStatistics._defaults(this);
  }

  UserStatisticsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _totalTestsAttempted = $v.totalTestsAttempted;
      _totalPracticeTests = $v.totalPracticeTests;
      _totalRealTests = $v.totalRealTests;
      _avgScore = $v.avgScore;
      _bestScore = $v.bestScore;
      _totalTimeSpent = $v.totalTimeSpent;
      _avgTimePerTest = $v.avgTimePerTest;
      _totalQuestionsAttempted = $v.totalQuestionsAttempted;
      _totalCorrectAnswers = $v.totalCorrectAnswers;
      _accuracyRate = $v.accuracyRate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserStatistics other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserStatistics;
  }

  @override
  void update(void Function(UserStatisticsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserStatistics build() => _build();

  _$UserStatistics _build() {
    final _$result = _$v ??
        new _$UserStatistics._(
          totalTestsAttempted: BuiltValueNullFieldError.checkNotNull(
              totalTestsAttempted, r'UserStatistics', 'totalTestsAttempted'),
          totalPracticeTests: BuiltValueNullFieldError.checkNotNull(
              totalPracticeTests, r'UserStatistics', 'totalPracticeTests'),
          totalRealTests: BuiltValueNullFieldError.checkNotNull(
              totalRealTests, r'UserStatistics', 'totalRealTests'),
          avgScore: BuiltValueNullFieldError.checkNotNull(
              avgScore, r'UserStatistics', 'avgScore'),
          bestScore: BuiltValueNullFieldError.checkNotNull(
              bestScore, r'UserStatistics', 'bestScore'),
          totalTimeSpent: BuiltValueNullFieldError.checkNotNull(
              totalTimeSpent, r'UserStatistics', 'totalTimeSpent'),
          avgTimePerTest: BuiltValueNullFieldError.checkNotNull(
              avgTimePerTest, r'UserStatistics', 'avgTimePerTest'),
          totalQuestionsAttempted: BuiltValueNullFieldError.checkNotNull(
              totalQuestionsAttempted,
              r'UserStatistics',
              'totalQuestionsAttempted'),
          totalCorrectAnswers: BuiltValueNullFieldError.checkNotNull(
              totalCorrectAnswers, r'UserStatistics', 'totalCorrectAnswers'),
          accuracyRate: BuiltValueNullFieldError.checkNotNull(
              accuracyRate, r'UserStatistics', 'accuracyRate'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
