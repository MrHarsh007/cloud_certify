// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_sessions_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserSessionsResponse extends UserSessionsResponse {
  @override
  final BuiltList<ChatSession> sessions;

  factory _$UserSessionsResponse(
          [void Function(UserSessionsResponseBuilder)? updates]) =>
      (new UserSessionsResponseBuilder()..update(updates))._build();

  _$UserSessionsResponse._({required this.sessions}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        sessions, r'UserSessionsResponse', 'sessions');
  }

  @override
  UserSessionsResponse rebuild(
          void Function(UserSessionsResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserSessionsResponseBuilder toBuilder() =>
      new UserSessionsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserSessionsResponse && sessions == other.sessions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sessions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserSessionsResponse')
          ..add('sessions', sessions))
        .toString();
  }
}

class UserSessionsResponseBuilder
    implements Builder<UserSessionsResponse, UserSessionsResponseBuilder> {
  _$UserSessionsResponse? _$v;

  ListBuilder<ChatSession>? _sessions;
  ListBuilder<ChatSession> get sessions =>
      _$this._sessions ??= new ListBuilder<ChatSession>();
  set sessions(ListBuilder<ChatSession>? sessions) =>
      _$this._sessions = sessions;

  UserSessionsResponseBuilder() {
    UserSessionsResponse._defaults(this);
  }

  UserSessionsResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sessions = $v.sessions.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserSessionsResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserSessionsResponse;
  }

  @override
  void update(void Function(UserSessionsResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserSessionsResponse build() => _build();

  _$UserSessionsResponse _build() {
    _$UserSessionsResponse _$result;
    try {
      _$result = _$v ??
          new _$UserSessionsResponse._(
            sessions: sessions.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sessions';
        sessions.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UserSessionsResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
