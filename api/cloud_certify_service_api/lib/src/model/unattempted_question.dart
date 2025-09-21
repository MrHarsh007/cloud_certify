//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:cloud_certify_service_api/src/model/assessment_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'unattempted_question.g.dart';

/// UnattemptedQuestion
///
/// Properties:
/// * [questionId]
/// * [questionText]
/// * [options]
/// * [correctOption]
/// * [explanation]
/// * [topic]
/// * [assessmentType]
@BuiltValue()
abstract class UnattemptedQuestion
    implements Built<UnattemptedQuestion, UnattemptedQuestionBuilder> {
  @BuiltValueField(wireName: r'question_id')
  String get questionId;

  @BuiltValueField(wireName: r'question_text')
  String get questionText;

  @BuiltValueField(wireName: r'options')
  BuiltMap<String, String> get options;

  @BuiltValueField(wireName: r'correct_option')
  String get correctOption;

  @BuiltValueField(wireName: r'explanation')
  String get explanation;

  @BuiltValueField(wireName: r'topic')
  String get topic;

  @BuiltValueField(wireName: r'assessment_type')
  AssessmentType get assessmentType;
  // enum assessmentTypeEnum {  multiple_choice,  multi_select,  };

  UnattemptedQuestion._();

  factory UnattemptedQuestion([void updates(UnattemptedQuestionBuilder b)]) =
      _$UnattemptedQuestion;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UnattemptedQuestionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UnattemptedQuestion> get serializer =>
      _$UnattemptedQuestionSerializer();
}

class _$UnattemptedQuestionSerializer
    implements PrimitiveSerializer<UnattemptedQuestion> {
  @override
  final Iterable<Type> types = const [
    UnattemptedQuestion,
    _$UnattemptedQuestion
  ];

  @override
  final String wireName = r'UnattemptedQuestion';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UnattemptedQuestion object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'question_id';
    yield serializers.serialize(
      object.questionId,
      specifiedType: const FullType(String),
    );
    yield r'question_text';
    yield serializers.serialize(
      object.questionText,
      specifiedType: const FullType(String),
    );
    yield r'options';
    yield serializers.serialize(
      object.options,
      specifiedType:
          const FullType(BuiltMap, [FullType(String), FullType(String)]),
    );
    yield r'correct_option';
    yield serializers.serialize(
      object.correctOption,
      specifiedType: const FullType(String),
    );
    yield r'explanation';
    yield serializers.serialize(
      object.explanation,
      specifiedType: const FullType(String),
    );
    yield r'topic';
    yield serializers.serialize(
      object.topic,
      specifiedType: const FullType(String),
    );
    yield r'assessment_type';
    yield serializers.serialize(
      object.assessmentType,
      specifiedType: const FullType(AssessmentType),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    UnattemptedQuestion object, {
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
    required UnattemptedQuestionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'question_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.questionId = valueDes;
          break;
        case r'question_text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.questionText = valueDes;
          break;
        case r'options':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltMap, [FullType(String), FullType(String)]),
          ) as BuiltMap<String, String>;
          result.options.replace(valueDes);
          break;
        case r'correct_option':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.correctOption = valueDes;
          break;
        case r'explanation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.explanation = valueDes;
          break;
        case r'topic':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.topic = valueDes;
          break;
        case r'assessment_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AssessmentType),
          ) as AssessmentType;
          result.assessmentType = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UnattemptedQuestion deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UnattemptedQuestionBuilder();
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
