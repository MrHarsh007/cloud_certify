// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChatResponse extends ChatResponse {
  @override
  final String response;
  @override
  final String sessionId;

  factory _$ChatResponse([void Function(ChatResponseBuilder)? updates]) =>
      (new ChatResponseBuilder()..update(updates))._build();

  _$ChatResponse._({required this.response, required this.sessionId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        response, r'ChatResponse', 'response');
    BuiltValueNullFieldError.checkNotNull(
        sessionId, r'ChatResponse', 'sessionId');
  }

  @override
  ChatResponse rebuild(void Function(ChatResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChatResponseBuilder toBuilder() => new ChatResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChatResponse &&
        response == other.response &&
        sessionId == other.sessionId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, response.hashCode);
    _$hash = $jc(_$hash, sessionId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChatResponse')
          ..add('response', response)
          ..add('sessionId', sessionId))
        .toString();
  }
}

class ChatResponseBuilder
    implements Builder<ChatResponse, ChatResponseBuilder> {
  _$ChatResponse? _$v;

  String? _response;
  String? get response => _$this._response;
  set response(String? response) => _$this._response = response;

  String? _sessionId;
  String? get sessionId => _$this._sessionId;
  set sessionId(String? sessionId) => _$this._sessionId = sessionId;

  ChatResponseBuilder() {
    ChatResponse._defaults(this);
  }

  ChatResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _response = $v.response;
      _sessionId = $v.sessionId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChatResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChatResponse;
  }

  @override
  void update(void Function(ChatResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChatResponse build() => _build();

  _$ChatResponse _build() {
    final _$result = _$v ??
        new _$ChatResponse._(
          response: BuiltValueNullFieldError.checkNotNull(
              response, r'ChatResponse', 'response'),
          sessionId: BuiltValueNullFieldError.checkNotNull(
              sessionId, r'ChatResponse', 'sessionId'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
