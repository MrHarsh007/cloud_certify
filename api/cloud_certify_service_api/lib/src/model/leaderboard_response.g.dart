// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leaderboard_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LeaderboardResponse extends LeaderboardResponse {
  @override
  final UserRanking userRanking;
  @override
  final BuiltList<UserLeaderboardEntry> leaderboard;

  factory _$LeaderboardResponse(
          [void Function(LeaderboardResponseBuilder)? updates]) =>
      (new LeaderboardResponseBuilder()..update(updates))._build();

  _$LeaderboardResponse._(
      {required this.userRanking, required this.leaderboard})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        userRanking, r'LeaderboardResponse', 'userRanking');
    BuiltValueNullFieldError.checkNotNull(
        leaderboard, r'LeaderboardResponse', 'leaderboard');
  }

  @override
  LeaderboardResponse rebuild(
          void Function(LeaderboardResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LeaderboardResponseBuilder toBuilder() =>
      new LeaderboardResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LeaderboardResponse &&
        userRanking == other.userRanking &&
        leaderboard == other.leaderboard;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userRanking.hashCode);
    _$hash = $jc(_$hash, leaderboard.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LeaderboardResponse')
          ..add('userRanking', userRanking)
          ..add('leaderboard', leaderboard))
        .toString();
  }
}

class LeaderboardResponseBuilder
    implements Builder<LeaderboardResponse, LeaderboardResponseBuilder> {
  _$LeaderboardResponse? _$v;

  UserRankingBuilder? _userRanking;
  UserRankingBuilder get userRanking =>
      _$this._userRanking ??= new UserRankingBuilder();
  set userRanking(UserRankingBuilder? userRanking) =>
      _$this._userRanking = userRanking;

  ListBuilder<UserLeaderboardEntry>? _leaderboard;
  ListBuilder<UserLeaderboardEntry> get leaderboard =>
      _$this._leaderboard ??= new ListBuilder<UserLeaderboardEntry>();
  set leaderboard(ListBuilder<UserLeaderboardEntry>? leaderboard) =>
      _$this._leaderboard = leaderboard;

  LeaderboardResponseBuilder() {
    LeaderboardResponse._defaults(this);
  }

  LeaderboardResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userRanking = $v.userRanking.toBuilder();
      _leaderboard = $v.leaderboard.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LeaderboardResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LeaderboardResponse;
  }

  @override
  void update(void Function(LeaderboardResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LeaderboardResponse build() => _build();

  _$LeaderboardResponse _build() {
    _$LeaderboardResponse _$result;
    try {
      _$result = _$v ??
          new _$LeaderboardResponse._(
            userRanking: userRanking.build(),
            leaderboard: leaderboard.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'userRanking';
        userRanking.build();
        _$failedField = 'leaderboard';
        leaderboard.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'LeaderboardResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
