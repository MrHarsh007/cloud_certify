//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'attempted_question.g.dart';

/// Model for a question that has been attempted by a user
///
/// Properties:
/// * [questionId]
/// * [selectedOption]
/// * [isCorrect]
/// * [timeTaken]
@BuiltValue()
abstract class AttemptedQuestion
    implements Built<AttemptedQuestion, AttemptedQuestionBuilder> {
  @BuiltValueField(wireName: r'question_id')
  String get questionId;

  @BuiltValueField(wireName: r'selected_option')
  BuiltList<String> get selectedOption;

  @BuiltValueField(wireName: r'is_correct')
  bool get isCorrect;

  @BuiltValueField(wireName: r'time_taken')
  int get timeTaken;

  AttemptedQuestion._();

  factory AttemptedQuestion([void updates(AttemptedQuestionBuilder b)]) =
      _$AttemptedQuestion;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AttemptedQuestionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AttemptedQuestion> get serializer =>
      _$AttemptedQuestionSerializer();
}

class _$AttemptedQuestionSerializer
    implements PrimitiveSerializer<AttemptedQuestion> {
  @override
  final Iterable<Type> types = const [AttemptedQuestion, _$AttemptedQuestion];

  @override
  final String wireName = r'AttemptedQuestion';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AttemptedQuestion object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'question_id';
    yield serializers.serialize(
      object.questionId,
      specifiedType: const FullType(String),
    );
    yield r'selected_option';
    yield serializers.serialize(
      object.selectedOption,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'is_correct';
    yield serializers.serialize(
      object.isCorrect,
      specifiedType: const FullType(bool),
    );
    yield r'time_taken';
    yield serializers.serialize(
      object.timeTaken,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AttemptedQuestion object, {
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
    required AttemptedQuestionBuilder result,
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
        case r'selected_option':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.selectedOption.replace(valueDes);
          break;
        case r'is_correct':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isCorrect = valueDes;
          break;
        case r'time_taken':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.timeTaken = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AttemptedQuestion deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AttemptedQuestionBuilder();
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
