// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ai_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AIModel _$deepseekAiSlashDeepSeekV30324 =
    const AIModel._('deepseekAiSlashDeepSeekV30324');
const AIModel _$deepseekR1 = const AIModel._('deepseekR1');
const AIModel _$gpt4o = const AIModel._('gpt4o');
const AIModel _$chatgpt4oLatest = const AIModel._('chatgpt4oLatest');
const AIModel _$gemini1Period5Pro = const AIModel._('gemini1Period5Pro');

AIModel _$valueOf(String name) {
  switch (name) {
    case 'deepseekAiSlashDeepSeekV30324':
      return _$deepseekAiSlashDeepSeekV30324;
    case 'deepseekR1':
      return _$deepseekR1;
    case 'gpt4o':
      return _$gpt4o;
    case 'chatgpt4oLatest':
      return _$chatgpt4oLatest;
    case 'gemini1Period5Pro':
      return _$gemini1Period5Pro;
    default:
      return _$gemini1Period5Pro;
  }
}

final BuiltSet<AIModel> _$values = new BuiltSet<AIModel>(const <AIModel>[
  _$deepseekAiSlashDeepSeekV30324,
  _$deepseekR1,
  _$gpt4o,
  _$chatgpt4oLatest,
  _$gemini1Period5Pro,
]);

class _$AIModelMeta {
  const _$AIModelMeta();
  AIModel get deepseekAiSlashDeepSeekV30324 => _$deepseekAiSlashDeepSeekV30324;
  AIModel get deepseekR1 => _$deepseekR1;
  AIModel get gpt4o => _$gpt4o;
  AIModel get chatgpt4oLatest => _$chatgpt4oLatest;
  AIModel get gemini1Period5Pro => _$gemini1Period5Pro;
  AIModel valueOf(String name) => _$valueOf(name);
  BuiltSet<AIModel> get values => _$values;
}

abstract class _$AIModelMixin {
  // ignore: non_constant_identifier_names
  _$AIModelMeta get AIModel => const _$AIModelMeta();
}

Serializer<AIModel> _$aIModelSerializer = new _$AIModelSerializer();

class _$AIModelSerializer implements PrimitiveSerializer<AIModel> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'deepseekAiSlashDeepSeekV30324': 'deepseek-ai/DeepSeek-V3-0324',
    'deepseekR1': 'deepseek-r1',
    'gpt4o': 'gpt-4o',
    'chatgpt4oLatest': 'chatgpt-4o-latest',
    'gemini1Period5Pro': 'gemini-1.5-pro',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'deepseek-ai/DeepSeek-V3-0324': 'deepseekAiSlashDeepSeekV30324',
    'deepseek-r1': 'deepseekR1',
    'gpt-4o': 'gpt4o',
    'chatgpt-4o-latest': 'chatgpt4oLatest',
    'gemini-1.5-pro': 'gemini1Period5Pro',
  };

  @override
  final Iterable<Type> types = const <Type>[AIModel];
  @override
  final String wireName = 'AIModel';

  @override
  Object serialize(Serializers serializers, AIModel object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AIModel deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AIModel.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
