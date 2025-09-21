// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_history_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SessionHistoryResponse extends SessionHistoryResponse {
  @override
  final String sessionId;
  @override
  final BuiltList<Message> messages;

  factory _$SessionHistoryResponse(
          [void Function(SessionHistoryResponseBuilder)? updates]) =>
      (new SessionHistoryResponseBuilder()..update(updates))._build();

  _$SessionHistoryResponse._({required this.sessionId, required this.messages})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        sessionId, r'SessionHistoryResponse', 'sessionId');
    BuiltValueNullFieldError.checkNotNull(
        messages, r'SessionHistoryResponse', 'messages');
  }

  @override
  SessionHistoryResponse rebuild(
          void Function(SessionHistoryResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SessionHistoryResponseBuilder toBuilder() =>
      new SessionHistoryResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SessionHistoryResponse &&
        sessionId == other.sessionId &&
        messages == other.messages;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sessionId.hashCode);
    _$hash = $jc(_$hash, messages.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SessionHistoryResponse')
          ..add('sessionId', sessionId)
          ..add('messages', messages))
        .toString();
  }
}

class SessionHistoryResponseBuilder
    implements Builder<SessionHistoryResponse, SessionHistoryResponseBuilder> {
  _$SessionHistoryResponse? _$v;

  String? _sessionId;
  String? get sessionId => _$this._sessionId;
  set sessionId(String? sessionId) => _$this._sessionId = sessionId;

  ListBuilder<Message>? _messages;
  ListBuilder<Message> get messages =>
      _$this._messages ??= new ListBuilder<Message>();
  set messages(ListBuilder<Message>? messages) => _$this._messages = messages;

  SessionHistoryResponseBuilder() {
    SessionHistoryResponse._defaults(this);
  }

  SessionHistoryResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sessionId = $v.sessionId;
      _messages = $v.messages.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SessionHistoryResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SessionHistoryResponse;
  }

  @override
  void update(void Function(SessionHistoryResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SessionHistoryResponse build() => _build();

  _$SessionHistoryResponse _build() {
    _$SessionHistoryResponse _$result;
    try {
      _$result = _$v ??
          new _$SessionHistoryResponse._(
            sessionId: BuiltValueNullFieldError.checkNotNull(
                sessionId, r'SessionHistoryResponse', 'sessionId'),
            messages: messages.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'messages';
        messages.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SessionHistoryResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
