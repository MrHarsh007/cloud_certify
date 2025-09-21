//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:cloud_certify_service_api/src/model/assessment_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'test_question_without_answer.g.dart';

/// Model for test question data without correct answers
///
/// Properties:
/// * [id]
/// * [question]
/// * [explanation]
/// * [options]
/// * [topic]
/// * [difficulty]
/// * [assessmentType]
/// * [correctOption]
@BuiltValue()
abstract class TestQuestionWithoutAnswer
    implements
        Built<TestQuestionWithoutAnswer, TestQuestionWithoutAnswerBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'question')
  String get question;

  @BuiltValueField(wireName: r'explanation')
  String get explanation;

  @BuiltValueField(wireName: r'options')
  BuiltMap<String, String> get options;

  @BuiltValueField(wireName: r'topic')
  String get topic;

  @BuiltValueField(wireName: r'difficulty')
  String get difficulty;

  @BuiltValueField(wireName: r'assessment_type')
  AssessmentType? get assessmentType;
  // enum assessmentTypeEnum {  multiple_choice,  multi_select,  };

  @BuiltValueField(wireName: r'correct_option')
  String? get correctOption;

  TestQuestionWithoutAnswer._();

  factory TestQuestionWithoutAnswer(
          [void updates(TestQuestionWithoutAnswerBuilder b)]) =
      _$TestQuestionWithoutAnswer;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TestQuestionWithoutAnswerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TestQuestionWithoutAnswer> get serializer =>
      _$TestQuestionWithoutAnswerSerializer();
}

class _$TestQuestionWithoutAnswerSerializer
    implements PrimitiveSerializer<TestQuestionWithoutAnswer> {
  @override
  final Iterable<Type> types = const [
    TestQuestionWithoutAnswer,
    _$TestQuestionWithoutAnswer
  ];

  @override
  final String wireName = r'TestQuestionWithoutAnswer';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TestQuestionWithoutAnswer object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'question';
    yield serializers.serialize(
      object.question,
      specifiedType: const FullType(String),
    );
    yield r'explanation';
    yield serializers.serialize(
      object.explanation,
      specifiedType: const FullType(String),
    );
    yield r'options';
    yield serializers.serialize(
      object.options,
      specifiedType:
          const FullType(BuiltMap, [FullType(String), FullType(String)]),
    );
    yield r'topic';
    yield serializers.serialize(
      object.topic,
      specifiedType: const FullType(String),
    );
    yield r'difficulty';
    yield serializers.serialize(
      object.difficulty,
      specifiedType: const FullType(String),
    );
    if (object.assessmentType != null) {
      yield r'assessment_type';
      yield serializers.serialize(
        object.assessmentType,
        specifiedType: const FullType(AssessmentType),
      );
    }
    if (object.correctOption != null) {
      yield r'correct_option';
      yield serializers.serialize(
        object.correctOption,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TestQuestionWithoutAnswer object, {
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
    required TestQuestionWithoutAnswerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'question':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.question = valueDes;
          break;
        case r'explanation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.explanation = valueDes;
          break;
        case r'options':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltMap, [FullType(String), FullType(String)]),
          ) as BuiltMap<String, String>;
          result.options.replace(valueDes);
          break;
        case r'topic':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.topic = valueDes;
          break;
        case r'difficulty':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.difficulty = valueDes;
          break;
        case r'assessment_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AssessmentType),
          ) as AssessmentType;
          result.assessmentType = valueDes;
          break;
        case r'correct_option':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.correctOption = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TestQuestionWithoutAnswer deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TestQuestionWithoutAnswerBuilder();
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
