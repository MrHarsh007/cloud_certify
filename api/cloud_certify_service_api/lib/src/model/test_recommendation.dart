//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:cloud_certify_service_api/src/model/recommendation_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'test_recommendation.g.dart';

/// TestRecommendation
///
/// Properties:
/// * [testId]
/// * [title]
/// * [category]
/// * [difficulty]
/// * [recommendationType]
/// * [popularityScore]
@BuiltValue()
abstract class TestRecommendation
    implements Built<TestRecommendation, TestRecommendationBuilder> {
  @BuiltValueField(wireName: r'test_id')
  String get testId;

  @BuiltValueField(wireName: r'title')
  String get title;

  @BuiltValueField(wireName: r'category')
  String get category;

  @BuiltValueField(wireName: r'difficulty')
  String get difficulty;

  @BuiltValueField(wireName: r'recommendation_type')
  RecommendationType get recommendationType;
  // enum recommendationTypeEnum {  popular,  new,  in-progress,  personalized,  };

  @BuiltValueField(wireName: r'popularity_score')
  num? get popularityScore;

  TestRecommendation._();

  factory TestRecommendation([void updates(TestRecommendationBuilder b)]) =
      _$TestRecommendation;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TestRecommendationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TestRecommendation> get serializer =>
      _$TestRecommendationSerializer();
}

class _$TestRecommendationSerializer
    implements PrimitiveSerializer<TestRecommendation> {
  @override
  final Iterable<Type> types = const [TestRecommendation, _$TestRecommendation];

  @override
  final String wireName = r'TestRecommendation';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TestRecommendation object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'test_id';
    yield serializers.serialize(
      object.testId,
      specifiedType: const FullType(String),
    );
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
    yield r'category';
    yield serializers.serialize(
      object.category,
      specifiedType: const FullType(String),
    );
    yield r'difficulty';
    yield serializers.serialize(
      object.difficulty,
      specifiedType: const FullType(String),
    );
    yield r'recommendation_type';
    yield serializers.serialize(
      object.recommendationType,
      specifiedType: const FullType(RecommendationType),
    );
    if (object.popularityScore != null) {
      yield r'popularity_score';
      yield serializers.serialize(
        object.popularityScore,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TestRecommendation object, {
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
    required TestRecommendationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'test_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.testId = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        case r'category':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.category = valueDes;
          break;
        case r'difficulty':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.difficulty = valueDes;
          break;
        case r'recommendation_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RecommendationType),
          ) as RecommendationType;
          result.recommendationType = valueDes;
          break;
        case r'popularity_score':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.popularityScore = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TestRecommendation deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TestRecommendationBuilder();
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
