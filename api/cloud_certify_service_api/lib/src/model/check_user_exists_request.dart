//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'check_user_exists_request.g.dart';

/// CheckUserExistsRequest
///
/// Properties:
/// * [email]
@BuiltValue()
abstract class CheckUserExistsRequest
    implements Built<CheckUserExistsRequest, CheckUserExistsRequestBuilder> {
  @BuiltValueField(wireName: r'email')
  String get email;

  CheckUserExistsRequest._();

  factory CheckUserExistsRequest(
          [void updates(CheckUserExistsRequestBuilder b)]) =
      _$CheckUserExistsRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CheckUserExistsRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CheckUserExistsRequest> get serializer =>
      _$CheckUserExistsRequestSerializer();
}

class _$CheckUserExistsRequestSerializer
    implements PrimitiveSerializer<CheckUserExistsRequest> {
  @override
  final Iterable<Type> types = const [
    CheckUserExistsRequest,
    _$CheckUserExistsRequest
  ];

  @override
  final String wireName = r'CheckUserExistsRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CheckUserExistsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'email';
    yield serializers.serialize(
      object.email,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CheckUserExistsRequest object, {
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
    required CheckUserExistsRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CheckUserExistsRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CheckUserExistsRequestBuilder();
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
