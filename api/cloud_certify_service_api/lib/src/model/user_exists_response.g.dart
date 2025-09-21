// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_exists_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserExistsResponse extends UserExistsResponse {
  @override
  final bool exists;
  @override
  final String? userId;

  factory _$UserExistsResponse(
          [void Function(UserExistsResponseBuilder)? updates]) =>
      (new UserExistsResponseBuilder()..update(updates))._build();

  _$UserExistsResponse._({required this.exists, this.userId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        exists, r'UserExistsResponse', 'exists');
  }

  @override
  UserExistsResponse rebuild(
          void Function(UserExistsResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserExistsResponseBuilder toBuilder() =>
      new UserExistsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserExistsResponse &&
        exists == other.exists &&
        userId == other.userId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, exists.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserExistsResponse')
          ..add('exists', exists)
          ..add('userId', userId))
        .toString();
  }
}

class UserExistsResponseBuilder
    implements Builder<UserExistsResponse, UserExistsResponseBuilder> {
  _$UserExistsResponse? _$v;

  bool? _exists;
  bool? get exists => _$this._exists;
  set exists(bool? exists) => _$this._exists = exists;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  UserExistsResponseBuilder() {
    UserExistsResponse._defaults(this);
  }

  UserExistsResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _exists = $v.exists;
      _userId = $v.userId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserExistsResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserExistsResponse;
  }

  @override
  void update(void Function(UserExistsResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserExistsResponse build() => _build();

  _$UserExistsResponse _build() {
    final _$result = _$v ??
        new _$UserExistsResponse._(
          exists: BuiltValueNullFieldError.checkNotNull(
              exists, r'UserExistsResponse', 'exists'),
          userId: userId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
