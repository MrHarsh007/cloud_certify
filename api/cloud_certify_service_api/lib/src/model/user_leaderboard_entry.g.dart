// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_leaderboard_entry.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserLeaderboardEntry extends UserLeaderboardEntry {
  @override
  final int rank;
  @override
  final String uid;
  @override
  final String fullName;
  @override
  final int testsTaken;
  @override
  final num avgScore;
  @override
  final num passRate;
  @override
  final String? certificationTarget;

  factory _$UserLeaderboardEntry(
          [void Function(UserLeaderboardEntryBuilder)? updates]) =>
      (new UserLeaderboardEntryBuilder()..update(updates))._build();

  _$UserLeaderboardEntry._(
      {required this.rank,
      required this.uid,
      required this.fullName,
      required this.testsTaken,
      required this.avgScore,
      required this.passRate,
      this.certificationTarget})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        rank, r'UserLeaderboardEntry', 'rank');
    BuiltValueNullFieldError.checkNotNull(uid, r'UserLeaderboardEntry', 'uid');
    BuiltValueNullFieldError.checkNotNull(
        fullName, r'UserLeaderboardEntry', 'fullName');
    BuiltValueNullFieldError.checkNotNull(
        testsTaken, r'UserLeaderboardEntry', 'testsTaken');
    BuiltValueNullFieldError.checkNotNull(
        avgScore, r'UserLeaderboardEntry', 'avgScore');
    BuiltValueNullFieldError.checkNotNull(
        passRate, r'UserLeaderboardEntry', 'passRate');
  }

  @override
  UserLeaderboardEntry rebuild(
          void Function(UserLeaderboardEntryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserLeaderboardEntryBuilder toBuilder() =>
      new UserLeaderboardEntryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserLeaderboardEntry &&
        rank == other.rank &&
        uid == other.uid &&
        fullName == other.fullName &&
        testsTaken == other.testsTaken &&
        avgScore == other.avgScore &&
        passRate == other.passRate &&
        certificationTarget == other.certificationTarget;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, rank.hashCode);
    _$hash = $jc(_$hash, uid.hashCode);
    _$hash = $jc(_$hash, fullName.hashCode);
    _$hash = $jc(_$hash, testsTaken.hashCode);
    _$hash = $jc(_$hash, avgScore.hashCode);
    _$hash = $jc(_$hash, passRate.hashCode);
    _$hash = $jc(_$hash, certificationTarget.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserLeaderboardEntry')
          ..add('rank', rank)
          ..add('uid', uid)
          ..add('fullName', fullName)
          ..add('testsTaken', testsTaken)
          ..add('avgScore', avgScore)
          ..add('passRate', passRate)
          ..add('certificationTarget', certificationTarget))
        .toString();
  }
}

class UserLeaderboardEntryBuilder
    implements Builder<UserLeaderboardEntry, UserLeaderboardEntryBuilder> {
  _$UserLeaderboardEntry? _$v;

  int? _rank;
  int? get rank => _$this._rank;
  set rank(int? rank) => _$this._rank = rank;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  String? _fullName;
  String? get fullName => _$this._fullName;
  set fullName(String? fullName) => _$this._fullName = fullName;

  int? _testsTaken;
  int? get testsTaken => _$this._testsTaken;
  set testsTaken(int? testsTaken) => _$this._testsTaken = testsTaken;

  num? _avgScore;
  num? get avgScore => _$this._avgScore;
  set avgScore(num? avgScore) => _$this._avgScore = avgScore;

  num? _passRate;
  num? get passRate => _$this._passRate;
  set passRate(num? passRate) => _$this._passRate = passRate;

  String? _certificationTarget;
  String? get certificationTarget => _$this._certificationTarget;
  set certificationTarget(String? certificationTarget) =>
      _$this._certificationTarget = certificationTarget;

  UserLeaderboardEntryBuilder() {
    UserLeaderboardEntry._defaults(this);
  }

  UserLeaderboardEntryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _rank = $v.rank;
      _uid = $v.uid;
      _fullName = $v.fullName;
      _testsTaken = $v.testsTaken;
      _avgScore = $v.avgScore;
      _passRate = $v.passRate;
      _certificationTarget = $v.certificationTarget;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserLeaderboardEntry other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserLeaderboardEntry;
  }

  @override
  void update(void Function(UserLeaderboardEntryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserLeaderboardEntry build() => _build();

  _$UserLeaderboardEntry _build() {
    final _$result = _$v ??
        new _$UserLeaderboardEntry._(
          rank: BuiltValueNullFieldError.checkNotNull(
              rank, r'UserLeaderboardEntry', 'rank'),
          uid: BuiltValueNullFieldError.checkNotNull(
              uid, r'UserLeaderboardEntry', 'uid'),
          fullName: BuiltValueNullFieldError.checkNotNull(
              fullName, r'UserLeaderboardEntry', 'fullName'),
          testsTaken: BuiltValueNullFieldError.checkNotNull(
              testsTaken, r'UserLeaderboardEntry', 'testsTaken'),
          avgScore: BuiltValueNullFieldError.checkNotNull(
              avgScore, r'UserLeaderboardEntry', 'avgScore'),
          passRate: BuiltValueNullFieldError.checkNotNull(
              passRate, r'UserLeaderboardEntry', 'passRate'),
          certificationTarget: certificationTarget,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
