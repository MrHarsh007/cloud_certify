//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:cloud_certify_service_api/src/model/chat_session.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_sessions_response.g.dart';

/// UserSessionsResponse
///
/// Properties:
/// * [sessions]
@BuiltValue()
abstract class UserSessionsResponse
    implements Built<UserSessionsResponse, UserSessionsResponseBuilder> {
  @BuiltValueField(wireName: r'sessions')
  BuiltList<ChatSession> get sessions;

  UserSessionsResponse._();

  factory UserSessionsResponse([void updates(UserSessionsResponseBuilder b)]) =
      _$UserSessionsResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserSessionsResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserSessionsResponse> get serializer =>
      _$UserSessionsResponseSerializer();
}

class _$UserSessionsResponseSerializer
    implements PrimitiveSerializer<UserSessionsResponse> {
  @override
  final Iterable<Type> types = const [
    UserSessionsResponse,
    _$UserSessionsResponse
  ];

  @override
  final String wireName = r'UserSessionsResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserSessionsResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'sessions';
    yield serializers.serialize(
      object.sessions,
      specifiedType: const FullType(BuiltList, [FullType(ChatSession)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    UserSessionsResponse object, {
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
    required UserSessionsResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'sessions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ChatSession)]),
          ) as BuiltList<ChatSession>;
          result.sessions.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UserSessionsResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserSessionsResponseBuilder();
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
