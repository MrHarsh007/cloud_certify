//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:cloud_certify_service_api/src/model/ai_model.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chat_request.g.dart';

/// ChatRequest
///
/// Properties:
/// * [prompt]
/// * [model]
/// * [questionId]
/// * [testId]
/// * [sessionId]
@BuiltValue()
abstract class ChatRequest implements Built<ChatRequest, ChatRequestBuilder> {
  @BuiltValueField(wireName: r'prompt')
  String get prompt;

  @BuiltValueField(wireName: r'model')
  AIModel get model;
  // enum modelEnum {  deepseek-ai/DeepSeek-V3-0324,  deepseek-r1,  gpt-4o,  chatgpt-4o-latest,  gemini-1.5-pro,  };

  @BuiltValueField(wireName: r'question_id')
  String? get questionId;

  @BuiltValueField(wireName: r'test_id')
  String? get testId;

  @BuiltValueField(wireName: r'session_id')
  String? get sessionId;

  ChatRequest._();

  factory ChatRequest([void updates(ChatRequestBuilder b)]) = _$ChatRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChatRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChatRequest> get serializer => _$ChatRequestSerializer();
}

class _$ChatRequestSerializer implements PrimitiveSerializer<ChatRequest> {
  @override
  final Iterable<Type> types = const [ChatRequest, _$ChatRequest];

  @override
  final String wireName = r'ChatRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChatRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'prompt';
    yield serializers.serialize(
      object.prompt,
      specifiedType: const FullType(String),
    );
    yield r'model';
    yield serializers.serialize(
      object.model,
      specifiedType: const FullType(AIModel),
    );
    if (object.questionId != null) {
      yield r'question_id';
      yield serializers.serialize(
        object.questionId,
        specifiedType: const FullType(String),
      );
    }
    if (object.testId != null) {
      yield r'test_id';
      yield serializers.serialize(
        object.testId,
        specifiedType: const FullType(String),
      );
    }
    if (object.sessionId != null) {
      yield r'session_id';
      yield serializers.serialize(
        object.sessionId,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ChatRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ChatRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'prompt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.prompt = valueDes;
          break;
        case r'model':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AIModel),
          ) as AIModel;
          result.model = valueDes;
          break;
        case r'question_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.questionId = valueDes;
          break;
        case r'test_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.testId = valueDes;
          break;
        case r'session_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.sessionId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChatRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChatRequestBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}
