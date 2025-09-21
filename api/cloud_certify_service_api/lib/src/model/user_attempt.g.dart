// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_attempt.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserAttempt extends UserAttempt {
  @override
  final bool? attempted;
  @override
  final String? answer;
  @override
  final bool? isCorrect;
  @override
  final int? timestamp;

  factory _$UserAttempt([void Function(UserAttemptBuilder)? updates]) =>
      (new UserAttemptBuilder()..update(updates))._build();

  _$UserAttempt._({this.attempted, this.answer, this.isCorrect, this.timestamp})
      : super._();

  @override
  UserAttempt rebuild(void Function(UserAttemptBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserAttemptBuilder toBuilder() => new UserAttemptBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserAttempt &&
        attempted == other.attempted &&
        answer == other.answer &&
        isCorrect == other.isCorrect &&
        timestamp == other.timestamp;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, attempted.hashCode);
    _$hash = $jc(_$hash, answer.hashCode);
    _$hash = $jc(_$hash, isCorrect.hashCode);
    _$hash = $jc(_$hash, timestamp.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserAttempt')
          ..add('attempted', attempted)
          ..add('answer', answer)
          ..add('isCorrect', isCorrect)
          ..add('timestamp', timestamp))
        .toString();
  }
}

class UserAttemptBuilder implements Builder<UserAttempt, UserAttemptBuilder> {
  _$UserAttempt? _$v;

  bool? _attempted;
  bool? get attempted => _$this._attempted;
  set attempted(bool? attempted) => _$this._attempted = attempted;

  String? _answer;
  String? get answer => _$this._answer;
  set answer(String? answer) => _$this._answer = answer;

  bool? _isCorrect;
  bool? get isCorrect => _$this._isCorrect;
  set isCorrect(bool? isCorrect) => _$this._isCorrect = isCorrect;

  int? _timestamp;
  int? get timestamp => _$this._timestamp;
  set timestamp(int? timestamp) => _$this._timestamp = timestamp;

  UserAttemptBuilder() {
    UserAttempt._defaults(this);
  }

  UserAttemptBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _attempted = $v.attempted;
      _answer = $v.answer;
      _isCorrect = $v.isCorrect;
      _timestamp = $v.timestamp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserAttempt other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserAttempt;
  }

  @override
  void update(void Function(UserAttemptBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserAttempt build() => _build();

  _$UserAttempt _build() {
    final _$result = _$v ??
        new _$UserAttempt._(
          attempted: attempted,
          answer: answer,
          isCorrect: isCorrect,
          timestamp: timestamp,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
