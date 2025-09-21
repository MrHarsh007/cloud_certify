//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:cloud_certify_service_api/src/model/resource.dart';
import 'package:cloud_certify_service_api/src/model/resource_statistics.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'resource_list.g.dart';

/// ResourceList
///
/// Properties:
/// * [resources]
/// * [statistics]
/// * [nextCursor]
@BuiltValue()
abstract class ResourceList
    implements Built<ResourceList, ResourceListBuilder> {
  @BuiltValueField(wireName: r'resources')
  BuiltList<Resource> get resources;

  @BuiltValueField(wireName: r'statistics')
  ResourceStatistics get statistics;

  @BuiltValueField(wireName: r'next_cursor')
  String? get nextCursor;

  ResourceList._();

  factory ResourceList([void updates(ResourceListBuilder b)]) = _$ResourceList;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ResourceListBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ResourceList> get serializer => _$ResourceListSerializer();
}

class _$ResourceListSerializer implements PrimitiveSerializer<ResourceList> {
  @override
  final Iterable<Type> types = const [ResourceList, _$ResourceList];

  @override
  final String wireName = r'ResourceList';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ResourceList object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'resources';
    yield serializers.serialize(
      object.resources,
      specifiedType: const FullType(BuiltList, [FullType(Resource)]),
    );
    yield r'statistics';
    yield serializers.serialize(
      object.statistics,
      specifiedType: const FullType(ResourceStatistics),
    );
    if (object.nextCursor != null) {
      yield r'next_cursor';
      yield serializers.serialize(
        object.nextCursor,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ResourceList object, {
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
    required ResourceListBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'resources':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Resource)]),
          ) as BuiltList<Resource>;
          result.resources.replace(valueDes);
          break;
        case r'statistics':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ResourceStatistics),
          ) as ResourceStatistics;
          result.statistics.replace(valueDes);
          break;
        case r'next_cursor':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.nextCursor = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ResourceList deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResourceListBuilder();
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
