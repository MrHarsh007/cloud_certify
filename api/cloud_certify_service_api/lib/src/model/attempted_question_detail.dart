//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'attempted_question_detail.g.dart';

/// AttemptedQuestionDetail
///
/// Properties:
/// * [questionId]
/// * [questionText]
/// * [options]
/// * [selectedOption]
/// * [correctOption]
/// * [isCorrect]
/// * [explanation]
/// * [topic]
/// * [timeTaken]
@BuiltValue()
abstract class AttemptedQuestionDetail
    implements Built<AttemptedQuestionDetail, AttemptedQuestionDetailBuilder> {
  @BuiltValueField(wireName: r'question_id')
  String get questionId;

  @BuiltValueField(wireName: r'question_text')
  String get questionText;

  @BuiltValueField(wireName: r'options')
  BuiltMap<String, String> get options;

  @BuiltValueField(wireName: r'selected_option')
  BuiltList<String> get selectedOption;

  @BuiltValueField(wireName: r'correct_option')
  String get correctOption;

  @BuiltValueField(wireName: r'is_correct')
  bool get isCorrect;

  @BuiltValueField(wireName: r'explanation')
  String get explanation;

  @BuiltValueField(wireName: r'topic')
  String get topic;

  @BuiltValueField(wireName: r'time_taken')
  int get timeTaken;

  AttemptedQuestionDetail._();

  factory AttemptedQuestionDetail(
          [void updates(AttemptedQuestionDetailBuilder b)]) =
      _$AttemptedQuestionDetail;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AttemptedQuestionDetailBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AttemptedQuestionDetail> get serializer =>
      _$AttemptedQuestionDetailSerializer();
}

class _$AttemptedQuestionDetailSerializer
    implements PrimitiveSerializer<AttemptedQuestionDetail> {
  @override
  final Iterable<Type> types = const [
    AttemptedQuestionDetail,
    _$AttemptedQuestionDetail
  ];

  @override
  final String wireName = r'AttemptedQuestionDetail';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AttemptedQuestionDetail object, {
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
    yield r'selected_option';
    yield serializers.serialize(
      object.selectedOption,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'correct_option';
    yield serializers.serialize(
      object.correctOption,
      specifiedType: const FullType(String),
    );
    yield r'is_correct';
    yield serializers.serialize(
      object.isCorrect,
      specifiedType: const FullType(bool),
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
    yield r'time_taken';
    yield serializers.serialize(
      object.timeTaken,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AttemptedQuestionDetail object, {
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
    required AttemptedQuestionDetailBuilder result,
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
        case r'selected_option':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.selectedOption.replace(valueDes);
          break;
        case r'correct_option':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.correctOption = valueDes;
          break;
        case r'is_correct':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isCorrect = valueDes;
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
  AttemptedQuestionDetail deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AttemptedQuestionDetailBuilder();
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
