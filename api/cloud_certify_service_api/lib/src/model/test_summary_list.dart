//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:cloud_certify_service_api/src/model/test_summary.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'test_summary_list.g.dart';

/// TestSummaryList
///
/// Properties:
/// * [tests]
/// * [nextCursor]
/// * [featuredTest]
/// * [mostPopularTest]
@BuiltValue()
abstract class TestSummaryList
    implements Built<TestSummaryList, TestSummaryListBuilder> {
  @BuiltValueField(wireName: r'tests')
  BuiltList<TestSummary> get tests;

  @BuiltValueField(wireName: r'next_cursor')
  String? get nextCursor;

  @BuiltValueField(wireName: r'featured_test')
  TestSummary? get featuredTest;

  @BuiltValueField(wireName: r'most_popular_test')
  TestSummary? get mostPopularTest;

  TestSummaryList._();

  factory TestSummaryList([void updates(TestSummaryListBuilder b)]) =
      _$TestSummaryList;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TestSummaryListBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TestSummaryList> get serializer =>
      _$TestSummaryListSerializer();
}

class _$TestSummaryListSerializer
    implements PrimitiveSerializer<TestSummaryList> {
  @override
  final Iterable<Type> types = const [TestSummaryList, _$TestSummaryList];

  @override
  final String wireName = r'TestSummaryList';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TestSummaryList object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'tests';
    yield serializers.serialize(
      object.tests,
      specifiedType: const FullType(BuiltList, [FullType(TestSummary)]),
    );
    if (object.nextCursor != null) {
      yield r'next_cursor';
      yield serializers.serialize(
        object.nextCursor,
        specifiedType: const FullType(String),
      );
    }
    if (object.featuredTest != null) {
      yield r'featured_test';
      yield serializers.serialize(
        object.featuredTest,
        specifiedType: const FullType(TestSummary),
      );
    }
    if (object.mostPopularTest != null) {
      yield r'most_popular_test';
      yield serializers.serialize(
        object.mostPopularTest,
        specifiedType: const FullType(TestSummary),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TestSummaryList object, {
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
    required TestSummaryListBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'tests':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(TestSummary)]),
          ) as BuiltList<TestSummary>;
          result.tests.replace(valueDes);
          break;
        case r'next_cursor':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.nextCursor = valueDes;
          break;
        case r'featured_test':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TestSummary),
          ) as TestSummary;
          result.featuredTest.replace(valueDes);
          break;
        case r'most_popular_test':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TestSummary),
          ) as TestSummary;
          result.mostPopularTest.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TestSummaryList deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TestSummaryListBuilder();
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
