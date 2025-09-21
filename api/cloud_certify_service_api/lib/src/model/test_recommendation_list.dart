//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:cloud_certify_service_api/src/model/test_recommendation.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'test_recommendation_list.g.dart';

/// TestRecommendationList
///
/// Properties:
/// * [recommendations]
@BuiltValue()
abstract class TestRecommendationList
    implements Built<TestRecommendationList, TestRecommendationListBuilder> {
  @BuiltValueField(wireName: r'recommendations')
  BuiltList<TestRecommendation> get recommendations;

  TestRecommendationList._();

  factory TestRecommendationList(
          [void updates(TestRecommendationListBuilder b)]) =
      _$TestRecommendationList;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TestRecommendationListBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TestRecommendationList> get serializer =>
      _$TestRecommendationListSerializer();
}

class _$TestRecommendationListSerializer
    implements PrimitiveSerializer<TestRecommendationList> {
  @override
  final Iterable<Type> types = const [
    TestRecommendationList,
    _$TestRecommendationList
  ];

  @override
  final String wireName = r'TestRecommendationList';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TestRecommendationList object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'recommendations';
    yield serializers.serialize(
      object.recommendations,
      specifiedType: const FullType(BuiltList, [FullType(TestRecommendation)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    TestRecommendationList object, {
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
    required TestRecommendationListBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'recommendations':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(TestRecommendation)]),
          ) as BuiltList<TestRecommendation>;
          result.recommendations.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TestRecommendationList deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TestRecommendationListBuilder();
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
