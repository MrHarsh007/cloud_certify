// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_ranking.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserRanking extends UserRanking {
  @override
  final int rank;
  @override
  final num percentile;
  @override
  final num avgScore;
  @override
  final int testsTaken;

  factory _$UserRanking([void Function(UserRankingBuilder)? updates]) =>
      (new UserRankingBuilder()..update(updates))._build();

  _$UserRanking._(
      {required this.rank,
      required this.percentile,
      required this.avgScore,
      required this.testsTaken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(rank, r'UserRanking', 'rank');
    BuiltValueNullFieldError.checkNotNull(
        percentile, r'UserRanking', 'percentile');
    BuiltValueNullFieldError.checkNotNull(avgScore, r'UserRanking', 'avgScore');
    BuiltValueNullFieldError.checkNotNull(
        testsTaken, r'UserRanking', 'testsTaken');
  }

  @override
  UserRanking rebuild(void Function(UserRankingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserRankingBuilder toBuilder() => new UserRankingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserRanking &&
        rank == other.rank &&
        percentile == other.percentile &&
        avgScore == other.avgScore &&
        testsTaken == other.testsTaken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, rank.hashCode);
    _$hash = $jc(_$hash, percentile.hashCode);
    _$hash = $jc(_$hash, avgScore.hashCode);
    _$hash = $jc(_$hash, testsTaken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserRanking')
          ..add('rank', rank)
          ..add('percentile', percentile)
          ..add('avgScore', avgScore)
          ..add('testsTaken', testsTaken))
        .toString();
  }
}

class UserRankingBuilder implements Builder<UserRanking, UserRankingBuilder> {
  _$UserRanking? _$v;

  int? _rank;
  int? get rank => _$this._rank;
  set rank(int? rank) => _$this._rank = rank;

  num? _percentile;
  num? get percentile => _$this._percentile;
  set percentile(num? percentile) => _$this._percentile = percentile;

  num? _avgScore;
  num? get avgScore => _$this._avgScore;
  set avgScore(num? avgScore) => _$this._avgScore = avgScore;

  int? _testsTaken;
  int? get testsTaken => _$this._testsTaken;
  set testsTaken(int? testsTaken) => _$this._testsTaken = testsTaken;

  UserRankingBuilder() {
    UserRanking._defaults(this);
  }

  UserRankingBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _rank = $v.rank;
      _percentile = $v.percentile;
      _avgScore = $v.avgScore;
      _testsTaken = $v.testsTaken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserRanking other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserRanking;
  }

  @override
  void update(void Function(UserRankingBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserRanking build() => _build();

  _$UserRanking _build() {
    final _$result = _$v ??
        new _$UserRanking._(
          rank: BuiltValueNullFieldError.checkNotNull(
              rank, r'UserRanking', 'rank'),
          percentile: BuiltValueNullFieldError.checkNotNull(
              percentile, r'UserRanking', 'percentile'),
          avgScore: BuiltValueNullFieldError.checkNotNull(
              avgScore, r'UserRanking', 'avgScore'),
          testsTaken: BuiltValueNullFieldError.checkNotNull(
              testsTaken, r'UserRanking', 'testsTaken'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
