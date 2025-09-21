// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_activity.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserActivity extends UserActivity {
  @override
  final int lastLogin;
  @override
  final int streakCount;
  @override
  final int testsTaken;
  @override
  final int questionsAnswered;
  @override
  final num avgScore;
  @override
  final int studyTimeMinutes;
  @override
  final int? streakLastUpdated;

  factory _$UserActivity([void Function(UserActivityBuilder)? updates]) =>
      (new UserActivityBuilder()..update(updates))._build();

  _$UserActivity._(
      {required this.lastLogin,
      required this.streakCount,
      required this.testsTaken,
      required this.questionsAnswered,
      required this.avgScore,
      required this.studyTimeMinutes,
      this.streakLastUpdated})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        lastLogin, r'UserActivity', 'lastLogin');
    BuiltValueNullFieldError.checkNotNull(
        streakCount, r'UserActivity', 'streakCount');
    BuiltValueNullFieldError.checkNotNull(
        testsTaken, r'UserActivity', 'testsTaken');
    BuiltValueNullFieldError.checkNotNull(
        questionsAnswered, r'UserActivity', 'questionsAnswered');
    BuiltValueNullFieldError.checkNotNull(
        avgScore, r'UserActivity', 'avgScore');
    BuiltValueNullFieldError.checkNotNull(
        studyTimeMinutes, r'UserActivity', 'studyTimeMinutes');
  }

  @override
  UserActivity rebuild(void Function(UserActivityBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserActivityBuilder toBuilder() => new UserActivityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserActivity &&
        lastLogin == other.lastLogin &&
        streakCount == other.streakCount &&
        testsTaken == other.testsTaken &&
        questionsAnswered == other.questionsAnswered &&
        avgScore == other.avgScore &&
        studyTimeMinutes == other.studyTimeMinutes &&
        streakLastUpdated == other.streakLastUpdated;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, lastLogin.hashCode);
    _$hash = $jc(_$hash, streakCount.hashCode);
    _$hash = $jc(_$hash, testsTaken.hashCode);
    _$hash = $jc(_$hash, questionsAnswered.hashCode);
    _$hash = $jc(_$hash, avgScore.hashCode);
    _$hash = $jc(_$hash, studyTimeMinutes.hashCode);
    _$hash = $jc(_$hash, streakLastUpdated.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserActivity')
          ..add('lastLogin', lastLogin)
          ..add('streakCount', streakCount)
          ..add('testsTaken', testsTaken)
          ..add('questionsAnswered', questionsAnswered)
          ..add('avgScore', avgScore)
          ..add('studyTimeMinutes', studyTimeMinutes)
          ..add('streakLastUpdated', streakLastUpdated))
        .toString();
  }
}

class UserActivityBuilder
    implements Builder<UserActivity, UserActivityBuilder> {
  _$UserActivity? _$v;

  int? _lastLogin;
  int? get lastLogin => _$this._lastLogin;
  set lastLogin(int? lastLogin) => _$this._lastLogin = lastLogin;

  int? _streakCount;
  int? get streakCount => _$this._streakCount;
  set streakCount(int? streakCount) => _$this._streakCount = streakCount;

  int? _testsTaken;
  int? get testsTaken => _$this._testsTaken;
  set testsTaken(int? testsTaken) => _$this._testsTaken = testsTaken;

  int? _questionsAnswered;
  int? get questionsAnswered => _$this._questionsAnswered;
  set questionsAnswered(int? questionsAnswered) =>
      _$this._questionsAnswered = questionsAnswered;

  num? _avgScore;
  num? get avgScore => _$this._avgScore;
  set avgScore(num? avgScore) => _$this._avgScore = avgScore;

  int? _studyTimeMinutes;
  int? get studyTimeMinutes => _$this._studyTimeMinutes;
  set studyTimeMinutes(int? studyTimeMinutes) =>
      _$this._studyTimeMinutes = studyTimeMinutes;

  int? _streakLastUpdated;
  int? get streakLastUpdated => _$this._streakLastUpdated;
  set streakLastUpdated(int? streakLastUpdated) =>
      _$this._streakLastUpdated = streakLastUpdated;

  UserActivityBuilder() {
    UserActivity._defaults(this);
  }

  UserActivityBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _lastLogin = $v.lastLogin;
      _streakCount = $v.streakCount;
      _testsTaken = $v.testsTaken;
      _questionsAnswered = $v.questionsAnswered;
      _avgScore = $v.avgScore;
      _studyTimeMinutes = $v.studyTimeMinutes;
      _streakLastUpdated = $v.streakLastUpdated;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserActivity other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserActivity;
  }

  @override
  void update(void Function(UserActivityBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserActivity build() => _build();

  _$UserActivity _build() {
    final _$result = _$v ??
        new _$UserActivity._(
          lastLogin: BuiltValueNullFieldError.checkNotNull(
              lastLogin, r'UserActivity', 'lastLogin'),
          streakCount: BuiltValueNullFieldError.checkNotNull(
              streakCount, r'UserActivity', 'streakCount'),
          testsTaken: BuiltValueNullFieldError.checkNotNull(
              testsTaken, r'UserActivity', 'testsTaken'),
          questionsAnswered: BuiltValueNullFieldError.checkNotNull(
              questionsAnswered, r'UserActivity', 'questionsAnswered'),
          avgScore: BuiltValueNullFieldError.checkNotNull(
              avgScore, r'UserActivity', 'avgScore'),
          studyTimeMinutes: BuiltValueNullFieldError.checkNotNull(
              studyTimeMinutes, r'UserActivity', 'studyTimeMinutes'),
          streakLastUpdated: streakLastUpdated,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
