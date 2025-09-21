//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:cloud_certify_service_api/src/model/test_mode.dart';
import 'package:cloud_certify_service_api/src/model/attempted_question.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'test_attempt.g.dart';

/// Model for a test attempt
///
/// Properties:
/// * [id]
/// * [userId]
/// * [testId]
/// * [mode]
/// * [status]
/// * [totalQuestions]
/// * [startTime]
/// * [correctAnswers]
/// * [wrongAnswers]
/// * [attemptedQuestions]
/// * [endTime]
/// * [score]
@BuiltValue()
abstract class TestAttempt implements Built<TestAttempt, TestAttemptBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'user_id')
  String get userId;

  @BuiltValueField(wireName: r'test_id')
  String get testId;

  @BuiltValueField(wireName: r'mode')
  TestMode get mode;
  // enum modeEnum {  practice,  exam,  };

  @BuiltValueField(wireName: r'status')
  String get status;

  @BuiltValueField(wireName: r'total_questions')
  int get totalQuestions;

  @BuiltValueField(wireName: r'start_time')
  int get startTime;

  @BuiltValueField(wireName: r'correct_answers')
  int? get correctAnswers;

  @BuiltValueField(wireName: r'wrong_answers')
  int? get wrongAnswers;

  @BuiltValueField(wireName: r'attempted_questions')
  BuiltList<AttemptedQuestion>? get attemptedQuestions;

  @BuiltValueField(wireName: r'end_time')
  int? get endTime;

  @BuiltValueField(wireName: r'score')
  int? get score;

  TestAttempt._();

  factory TestAttempt([void updates(TestAttemptBuilder b)]) = _$TestAttempt;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TestAttemptBuilder b) => b
    ..correctAnswers = 0
    ..wrongAnswers = 0
    ..attemptedQuestions = ListBuilder();

  @BuiltValueSerializer(custom: true)
  static Serializer<TestAttempt> get serializer => _$TestAttemptSerializer();
}

class _$TestAttemptSerializer implements PrimitiveSerializer<TestAttempt> {
  @override
  final Iterable<Type> types = const [TestAttempt, _$TestAttempt];

  @override
  final String wireName = r'TestAttempt';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TestAttempt object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'user_id';
    yield serializers.serialize(
      object.userId,
      specifiedType: const FullType(String),
    );
    yield r'test_id';
    yield serializers.serialize(
      object.testId,
      specifiedType: const FullType(String),
    );
    yield r'mode';
    yield serializers.serialize(
      object.mode,
      specifiedType: const FullType(TestMode),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(String),
    );
    yield r'total_questions';
    yield serializers.serialize(
      object.totalQuestions,
      specifiedType: const FullType(int),
    );
    yield r'start_time';
    yield serializers.serialize(
      object.startTime,
      specifiedType: const FullType(int),
    );
    if (object.correctAnswers != null) {
      yield r'correct_answers';
      yield serializers.serialize(
        object.correctAnswers,
        specifiedType: const FullType(int),
      );
    }
    if (object.wrongAnswers != null) {
      yield r'wrong_answers';
      yield serializers.serialize(
        object.wrongAnswers,
        specifiedType: const FullType(int),
      );
    }
    if (object.attemptedQuestions != null) {
      yield r'attempted_questions';
      yield serializers.serialize(
        object.attemptedQuestions,
        specifiedType: const FullType(BuiltList, [FullType(AttemptedQuestion)]),
      );
    }
    if (object.endTime != null) {
      yield r'end_time';
      yield serializers.serialize(
        object.endTime,
        specifiedType: const FullType(int),
      );
    }
    if (object.score != null) {
      yield r'score';
      yield serializers.serialize(
        object.score,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TestAttempt object, {
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
    required TestAttemptBuilder result,
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
        case r'user_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.userId = valueDes;
          break;
        case r'test_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.testId = valueDes;
          break;
        case r'mode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TestMode),
          ) as TestMode;
          result.mode = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.status = valueDes;
          break;
        case r'total_questions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalQuestions = valueDes;
          break;
        case r'start_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.startTime = valueDes;
          break;
        case r'correct_answers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.correctAnswers = valueDes;
          break;
        case r'wrong_answers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.wrongAnswers = valueDes;
          break;
        case r'attempted_questions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(AttemptedQuestion)]),
          ) as BuiltList<AttemptedQuestion>;
          result.attemptedQuestions.replace(valueDes);
          break;
        case r'end_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.endTime = valueDes;
          break;
        case r'score':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.score = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TestAttempt deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TestAttemptBuilder();
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
