// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_streak.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DailyStreak extends DailyStreak {
  @override
  final int currentStreak;
  @override
  final int? lastQuestionDate;

  factory _$DailyStreak([void Function(DailyStreakBuilder)? updates]) =>
      (new DailyStreakBuilder()..update(updates))._build();

  _$DailyStreak._({required this.currentStreak, this.lastQuestionDate})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        currentStreak, r'DailyStreak', 'currentStreak');
  }

  @override
  DailyStreak rebuild(void Function(DailyStreakBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DailyStreakBuilder toBuilder() => new DailyStreakBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DailyStreak &&
        currentStreak == other.currentStreak &&
        lastQuestionDate == other.lastQuestionDate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, currentStreak.hashCode);
    _$hash = $jc(_$hash, lastQuestionDate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DailyStreak')
          ..add('currentStreak', currentStreak)
          ..add('lastQuestionDate', lastQuestionDate))
        .toString();
  }
}

class DailyStreakBuilder implements Builder<DailyStreak, DailyStreakBuilder> {
  _$DailyStreak? _$v;

  int? _currentStreak;
  int? get currentStreak => _$this._currentStreak;
  set currentStreak(int? currentStreak) =>
      _$this._currentStreak = currentStreak;

  int? _lastQuestionDate;
  int? get lastQuestionDate => _$this._lastQuestionDate;
  set lastQuestionDate(int? lastQuestionDate) =>
      _$this._lastQuestionDate = lastQuestionDate;

  DailyStreakBuilder() {
    DailyStreak._defaults(this);
  }

  DailyStreakBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _currentStreak = $v.currentStreak;
      _lastQuestionDate = $v.lastQuestionDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DailyStreak other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DailyStreak;
  }

  @override
  void update(void Function(DailyStreakBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DailyStreak build() => _build();

  _$DailyStreak _build() {
    final _$result = _$v ??
        new _$DailyStreak._(
          currentStreak: BuiltValueNullFieldError.checkNotNull(
              currentStreak, r'DailyStreak', 'currentStreak'),
          lastQuestionDate: lastQuestionDate,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
