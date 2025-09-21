//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'like_response.g.dart';

/// LikeResponse
///
/// Properties:
/// * [resourceId]
/// * [likes]
/// * [isLiked]
@BuiltValue()
abstract class LikeResponse
    implements Built<LikeResponse, LikeResponseBuilder> {
  @BuiltValueField(wireName: r'resource_id')
  String get resourceId;

  @BuiltValueField(wireName: r'likes')
  int get likes;

  @BuiltValueField(wireName: r'is_liked')
  bool get isLiked;

  LikeResponse._();

  factory LikeResponse([void updates(LikeResponseBuilder b)]) = _$LikeResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LikeResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LikeResponse> get serializer => _$LikeResponseSerializer();
}

class _$LikeResponseSerializer implements PrimitiveSerializer<LikeResponse> {
  @override
  final Iterable<Type> types = const [LikeResponse, _$LikeResponse];

  @override
  final String wireName = r'LikeResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LikeResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'resource_id';
    yield serializers.serialize(
      object.resourceId,
      specifiedType: const FullType(String),
    );
    yield r'likes';
    yield serializers.serialize(
      object.likes,
      specifiedType: const FullType(int),
    );
    yield r'is_liked';
    yield serializers.serialize(
      object.isLiked,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    LikeResponse object, {
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
    required LikeResponseBuilder result,
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
        case r'likes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.likes = valueDes;
          break;
        case r'is_liked':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isLiked = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LikeResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LikeResponseBuilder();
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
