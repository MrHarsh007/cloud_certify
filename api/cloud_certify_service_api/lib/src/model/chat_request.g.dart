// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChatRequest extends ChatRequest {
  @override
  final String prompt;
  @override
  final AIModel model;
  @override
  final String? questionId;
  @override
  final String? testId;
  @override
  final String? sessionId;

  factory _$ChatRequest([void Function(ChatRequestBuilder)? updates]) =>
      (new ChatRequestBuilder()..update(updates))._build();

  _$ChatRequest._(
      {required this.prompt,
      required this.model,
      this.questionId,
      this.testId,
      this.sessionId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(prompt, r'ChatRequest', 'prompt');
    BuiltValueNullFieldError.checkNotNull(model, r'ChatRequest', 'model');
  }

  @override
  ChatRequest rebuild(void Function(ChatRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChatRequestBuilder toBuilder() => new ChatRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChatRequest &&
        prompt == other.prompt &&
        model == other.model &&
        questionId == other.questionId &&
        testId == other.testId &&
        sessionId == other.sessionId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, prompt.hashCode);
    _$hash = $jc(_$hash, model.hashCode);
    _$hash = $jc(_$hash, questionId.hashCode);
    _$hash = $jc(_$hash, testId.hashCode);
    _$hash = $jc(_$hash, sessionId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChatRequest')
          ..add('prompt', prompt)
          ..add('model', model)
          ..add('questionId', questionId)
          ..add('testId', testId)
          ..add('sessionId', sessionId))
        .toString();
  }
}

class ChatRequestBuilder implements Builder<ChatRequest, ChatRequestBuilder> {
  _$ChatRequest? _$v;

  String? _prompt;
  String? get prompt => _$this._prompt;
  set prompt(String? prompt) => _$this._prompt = prompt;

  AIModel? _model;
  AIModel? get model => _$this._model;
  set model(AIModel? model) => _$this._model = model;

  String? _questionId;
  String? get questionId => _$this._questionId;
  set questionId(String? questionId) => _$this._questionId = questionId;

  String? _testId;
  String? get testId => _$this._testId;
  set testId(String? testId) => _$this._testId = testId;

  String? _sessionId;
  String? get sessionId => _$this._sessionId;
  set sessionId(String? sessionId) => _$this._sessionId = sessionId;

  ChatRequestBuilder() {
    ChatRequest._defaults(this);
  }

  ChatRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _prompt = $v.prompt;
      _model = $v.model;
      _questionId = $v.questionId;
      _testId = $v.testId;
      _sessionId = $v.sessionId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChatRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChatRequest;
  }

  @override
  void update(void Function(ChatRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChatRequest build() => _build();

  _$ChatRequest _build() {
    final _$result = _$v ??
        new _$ChatRequest._(
          prompt: BuiltValueNullFieldError.checkNotNull(
              prompt, r'ChatRequest', 'prompt'),
          model: BuiltValueNullFieldError.checkNotNull(
              model, r'ChatRequest', 'model'),
          questionId: questionId,
          testId: testId,
          sessionId: sessionId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
