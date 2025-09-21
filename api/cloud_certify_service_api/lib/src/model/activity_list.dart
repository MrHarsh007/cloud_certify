//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:cloud_certify_service_api/src/model/activity.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'activity_list.g.dart';

/// ActivityList
///
/// Properties:
/// * [activities]
@BuiltValue()
abstract class ActivityList
    implements Built<ActivityList, ActivityListBuilder> {
  @BuiltValueField(wireName: r'activities')
  BuiltList<Activity> get activities;

  ActivityList._();

  factory ActivityList([void updates(ActivityListBuilder b)]) = _$ActivityList;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ActivityListBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ActivityList> get serializer => _$ActivityListSerializer();
}

class _$ActivityListSerializer implements PrimitiveSerializer<ActivityList> {
  @override
  final Iterable<Type> types = const [ActivityList, _$ActivityList];

  @override
  final String wireName = r'ActivityList';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ActivityList object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'activities';
    yield serializers.serialize(
      object.activities,
      specifiedType: const FullType(BuiltList, [FullType(Activity)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ActivityList object, {
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
    required ActivityListBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'activities':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Activity)]),
          ) as BuiltList<Activity>;
          result.activities.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ActivityList deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ActivityListBuilder();
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
