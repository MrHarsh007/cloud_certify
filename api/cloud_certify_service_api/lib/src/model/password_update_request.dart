//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'password_update_request.g.dart';

/// PasswordUpdateRequest
///
/// Properties:
/// * [newPassword]
@BuiltValue()
abstract class PasswordUpdateRequest
    implements Built<PasswordUpdateRequest, PasswordUpdateRequestBuilder> {
  @BuiltValueField(wireName: r'new_password')
  String get newPassword;

  PasswordUpdateRequest._();

  factory PasswordUpdateRequest(
      [void updates(PasswordUpdateRequestBuilder b)]) = _$PasswordUpdateRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PasswordUpdateRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PasswordUpdateRequest> get serializer =>
      _$PasswordUpdateRequestSerializer();
}

class _$PasswordUpdateRequestSerializer
    implements PrimitiveSerializer<PasswordUpdateRequest> {
  @override
  final Iterable<Type> types = const [
    PasswordUpdateRequest,
    _$PasswordUpdateRequest
  ];

  @override
  final String wireName = r'PasswordUpdateRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PasswordUpdateRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'new_password';
    yield serializers.serialize(
      object.newPassword,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PasswordUpdateRequest object, {
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
    required PasswordUpdateRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'new_password':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.newPassword = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PasswordUpdateRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PasswordUpdateRequestBuilder();
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
