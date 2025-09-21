//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'resource_statistics.g.dart';

/// ResourceStatistics
///
/// Properties:
/// * [totalResources]
/// * [totalLikes]
/// * [totalViews]
@BuiltValue()
abstract class ResourceStatistics
    implements Built<ResourceStatistics, ResourceStatisticsBuilder> {
  @BuiltValueField(wireName: r'total_resources')
  int get totalResources;

  @BuiltValueField(wireName: r'total_likes')
  int get totalLikes;

  @BuiltValueField(wireName: r'total_views')
  int get totalViews;

  ResourceStatistics._();

  factory ResourceStatistics([void updates(ResourceStatisticsBuilder b)]) =
      _$ResourceStatistics;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ResourceStatisticsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ResourceStatistics> get serializer =>
      _$ResourceStatisticsSerializer();
}

class _$ResourceStatisticsSerializer
    implements PrimitiveSerializer<ResourceStatistics> {
  @override
  final Iterable<Type> types = const [ResourceStatistics, _$ResourceStatistics];

  @override
  final String wireName = r'ResourceStatistics';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ResourceStatistics object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'total_resources';
    yield serializers.serialize(
      object.totalResources,
      specifiedType: const FullType(int),
    );
    yield r'total_likes';
    yield serializers.serialize(
      object.totalLikes,
      specifiedType: const FullType(int),
    );
    yield r'total_views';
    yield serializers.serialize(
      object.totalViews,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ResourceStatistics object, {
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
    required ResourceStatisticsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'total_resources':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalResources = valueDes;
          break;
        case r'total_likes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalLikes = valueDes;
          break;
        case r'total_views':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalViews = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ResourceStatistics deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResourceStatisticsBuilder();
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
