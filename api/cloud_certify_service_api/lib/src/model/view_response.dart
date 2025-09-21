//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'view_response.g.dart';

/// ViewResponse
///
/// Properties:
/// * [resourceId]
/// * [views]
@BuiltValue()
abstract class ViewResponse
    implements Built<ViewResponse, ViewResponseBuilder> {
  @BuiltValueField(wireName: r'resource_id')
  String get resourceId;

  @BuiltValueField(wireName: r'views')
  int get views;

  ViewResponse._();

  factory ViewResponse([void updates(ViewResponseBuilder b)]) = _$ViewResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ViewResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ViewResponse> get serializer => _$ViewResponseSerializer();
}

class _$ViewResponseSerializer implements PrimitiveSerializer<ViewResponse> {
  @override
  final Iterable<Type> types = const [ViewResponse, _$ViewResponse];

  @override
  final String wireName = r'ViewResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ViewResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'resource_id';
    yield serializers.serialize(
      object.resourceId,
      specifiedType: const FullType(String),
    );
    yield r'views';
    yield serializers.serialize(
      object.views,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ViewResponse object, {
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
    required ViewResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'resource_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.resourceId = valueDes;
          break;
        case r'views':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.views = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ViewResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ViewResponseBuilder();
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
