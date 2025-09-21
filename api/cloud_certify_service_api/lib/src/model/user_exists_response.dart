//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_exists_response.g.dart';

/// UserExistsResponse
///
/// Properties:
/// * [exists]
/// * [userId]
@BuiltValue()
abstract class UserExistsResponse
    implements Built<UserExistsResponse, UserExistsResponseBuilder> {
  @BuiltValueField(wireName: r'exists')
  bool get exists;

  @BuiltValueField(wireName: r'user_id')
  String? get userId;

  UserExistsResponse._();

  factory UserExistsResponse([void updates(UserExistsResponseBuilder b)]) =
      _$UserExistsResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserExistsResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserExistsResponse> get serializer =>
      _$UserExistsResponseSerializer();
}

class _$UserExistsResponseSerializer
    implements PrimitiveSerializer<UserExistsResponse> {
  @override
  final Iterable<Type> types = const [UserExistsResponse, _$UserExistsResponse];

  @override
  final String wireName = r'UserExistsResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserExistsResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'exists';
    yield serializers.serialize(
      object.exists,
      specifiedType: const FullType(bool),
    );
    if (object.userId != null) {
      yield r'user_id';
      yield serializers.serialize(
        object.userId,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UserExistsResponse object, {
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
    required UserExistsResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'exists':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.exists = valueDes;
          break;
        case r'user_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.userId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UserExistsResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserExistsResponseBuilder();
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
