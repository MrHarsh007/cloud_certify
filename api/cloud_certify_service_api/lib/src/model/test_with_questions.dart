//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:cloud_certify_service_api/src/model/test_summary.dart';
import 'package:cloud_certify_service_api/src/model/test_question_without_answer.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'test_with_questions.g.dart';

/// Model for a test with its questions
///
/// Properties:
/// * [test]
/// * [questions]
@BuiltValue()
abstract class TestWithQuestions
    implements Built<TestWithQuestions, TestWithQuestionsBuilder> {
  @BuiltValueField(wireName: r'test')
  TestSummary get test;

  @BuiltValueField(wireName: r'questions')
  BuiltList<TestQuestionWithoutAnswer> get questions;

  TestWithQuestions._();

  factory TestWithQuestions([void updates(TestWithQuestionsBuilder b)]) =
      _$TestWithQuestions;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TestWithQuestionsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TestWithQuestions> get serializer =>
      _$TestWithQuestionsSerializer();
}

class _$TestWithQuestionsSerializer
    implements PrimitiveSerializer<TestWithQuestions> {
  @override
  final Iterable<Type> types = const [TestWithQuestions, _$TestWithQuestions];

  @override
  final String wireName = r'TestWithQuestions';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TestWithQuestions object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'test';
    yield serializers.serialize(
      object.test,
      specifiedType: const FullType(TestSummary),
    );
    yield r'questions';
    yield serializers.serialize(
      object.questions,
      specifiedType:
          const FullType(BuiltList, [FullType(TestQuestionWithoutAnswer)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    TestWithQuestions object, {
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
    required TestWithQuestionsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'test':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TestSummary),
          ) as TestSummary;
          result.test.replace(valueDes);
          break;
        case r'questions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltList, [FullType(TestQuestionWithoutAnswer)]),
          ) as BuiltList<TestQuestionWithoutAnswer>;
          result.questions.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TestWithQuestions deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TestWithQuestionsBuilder();
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
