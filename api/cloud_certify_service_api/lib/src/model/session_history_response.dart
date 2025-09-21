//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:cloud_certify_service_api/src/model/message.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'session_history_response.g.dart';

/// SessionHistoryResponse
///
/// Properties:
/// * [sessionId]
/// * [messages]
@BuiltValue()
abstract class SessionHistoryResponse
    implements Built<SessionHistoryResponse, SessionHistoryResponseBuilder> {
  @BuiltValueField(wireName: r'session_id')
  String get sessionId;

  @BuiltValueField(wireName: r'messages')
  BuiltList<Message> get messages;

  SessionHistoryResponse._();

  factory SessionHistoryResponse(
          [void updates(SessionHistoryResponseBuilder b)]) =
      _$SessionHistoryResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SessionHistoryResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SessionHistoryResponse> get serializer =>
      _$SessionHistoryResponseSerializer();
}

class _$SessionHistoryResponseSerializer
    implements PrimitiveSerializer<SessionHistoryResponse> {
  @override
  final Iterable<Type> types = const [
    SessionHistoryResponse,
    _$SessionHistoryResponse
  ];

  @override
  final String wireName = r'SessionHistoryResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SessionHistoryResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'session_id';
    yield serializers.serialize(
      object.sessionId,
      specifiedType: const FullType(String),
    );
    yield r'messages';
    yield serializers.serialize(
      object.messages,
      specifiedType: const FullType(BuiltList, [FullType(Message)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SessionHistoryResponse object, {
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
    required SessionHistoryResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'session_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.sessionId = valueDes;
          break;
        case r'messages':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Message)]),
          ) as BuiltList<Message>;
          result.messages.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SessionHistoryResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SessionHistoryResponseBuilder();
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
