// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_session.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChatSession extends ChatSession {
  @override
  final String id;
  @override
  final String userId;
  @override
  final BuiltList<Message>? messages;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  factory _$ChatSession([void Function(ChatSessionBuilder)? updates]) =>
      (new ChatSessionBuilder()..update(updates))._build();

  _$ChatSession._(
      {required this.id,
      required this.userId,
      this.messages,
      this.createdAt,
      this.updatedAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'ChatSession', 'id');
    BuiltValueNullFieldError.checkNotNull(userId, r'ChatSession', 'userId');
  }

  @override
  ChatSession rebuild(void Function(ChatSessionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChatSessionBuilder toBuilder() => new ChatSessionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChatSession &&
        id == other.id &&
        userId == other.userId &&
        messages == other.messages &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, messages.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChatSession')
          ..add('id', id)
          ..add('userId', userId)
          ..add('messages', messages)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class ChatSessionBuilder implements Builder<ChatSession, ChatSessionBuilder> {
  _$ChatSession? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  ListBuilder<Message>? _messages;
  ListBuilder<Message> get messages =>
      _$this._messages ??= new ListBuilder<Message>();
  set messages(ListBuilder<Message>? messages) => _$this._messages = messages;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  ChatSessionBuilder() {
    ChatSession._defaults(this);
  }

  ChatSessionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _userId = $v.userId;
      _messages = $v.messages?.toBuilder();
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChatSession other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChatSession;
  }

  @override
  void update(void Function(ChatSessionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChatSession build() => _build();

  _$ChatSession _build() {
    _$ChatSession _$result;
    try {
      _$result = _$v ??
          new _$ChatSession._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'ChatSession', 'id'),
            userId: BuiltValueNullFieldError.checkNotNull(
                userId, r'ChatSession', 'userId'),
            messages: _messages?.build(),
            createdAt: createdAt,
            updatedAt: updatedAt,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'messages';
        _messages?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ChatSession', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
