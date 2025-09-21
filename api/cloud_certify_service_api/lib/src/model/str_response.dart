//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'str_response.g.dart';

/// StrResponse
///
/// Properties:
/// * [response]
@BuiltValue()
abstract class StrResponse implements Built<StrResponse, StrResponseBuilder> {
  @BuiltValueField(wireName: r'response')
  String get response;

  StrResponse._();

  factory StrResponse([void updates(StrResponseBuilder b)]) = _$StrResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StrResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StrResponse> get serializer => _$StrResponseSerializer();
}

class _$StrResponseSerializer implements PrimitiveSerializer<StrResponse> {
  @override
  final Iterable<Type> types = const [StrResponse, _$StrResponse];

  @override
  final String wireName = r'StrResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StrResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'response';
    yield serializers.serialize(
      object.response,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    StrResponse object, {
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
    required StrResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'response':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.response = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StrResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StrResponseBuilder();
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
