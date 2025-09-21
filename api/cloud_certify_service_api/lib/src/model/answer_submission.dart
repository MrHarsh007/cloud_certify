//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'answer_submission.g.dart';

/// AnswerSubmission
///
/// Properties:
/// * [questionId]
/// * [answer]
@BuiltValue()
abstract class AnswerSubmission
    implements Built<AnswerSubmission, AnswerSubmissionBuilder> {
  @BuiltValueField(wireName: r'question_id')
  String get questionId;

  @BuiltValueField(wireName: r'answer')
  String get answer;

  AnswerSubmission._();

  factory AnswerSubmission([void updates(AnswerSubmissionBuilder b)]) =
      _$AnswerSubmission;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AnswerSubmissionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AnswerSubmission> get serializer =>
      _$AnswerSubmissionSerializer();
}

class _$AnswerSubmissionSerializer
    implements PrimitiveSerializer<AnswerSubmission> {
  @override
  final Iterable<Type> types = const [AnswerSubmission, _$AnswerSubmission];

  @override
  final String wireName = r'AnswerSubmission';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AnswerSubmission object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'question_id';
    yield serializers.serialize(
      object.questionId,
      specifiedType: const FullType(String),
    );
    yield r'answer';
    yield serializers.serialize(
      object.answer,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AnswerSubmission object, {
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
    required AnswerSubmissionBuilder result,
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
        case r'answer':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.answer = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AnswerSubmission deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnswerSubmissionBuilder();
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
