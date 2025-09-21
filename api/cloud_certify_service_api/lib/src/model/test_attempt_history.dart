//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:cloud_certify_service_api/src/model/test_mode.dart';
import 'package:cloud_certify_service_api/src/model/attempted_question_detail.dart';
import 'package:built_collection/built_collection.dart';
import 'package:cloud_certify_service_api/src/model/unattempted_question.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'test_attempt_history.g.dart';

/// TestAttemptHistory
///
/// Properties:
/// * [id]
/// * [testId]
/// * [testTitle]
/// * [userId]
/// * [mode]
/// * [status]
/// * [startTime]
/// * [totalQuestions]
/// * [endTime]
/// * [attemptedQuestions]
/// * [unattemptedQuestions]
/// * [correctAnswers]
/// * [wrongAnswers]
/// * [score]
/// * [category]
/// * [totalTimeTaken]
/// * [avgTimePerQuestion]
/// * [difficulty]
@BuiltValue()
abstract class TestAttemptHistory
    implements Built<TestAttemptHistory, TestAttemptHistoryBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'test_id')
  String get testId;

  @BuiltValueField(wireName: r'test_title')
  String get testTitle;

  @BuiltValueField(wireName: r'user_id')
  String get userId;

  @BuiltValueField(wireName: r'mode')
  TestMode get mode;
  // enum modeEnum {  practice,  exam,  };

  @BuiltValueField(wireName: r'status')
  String get status;

  @BuiltValueField(wireName: r'start_time')
  int get startTime;

  @BuiltValueField(wireName: r'total_questions')
  int get totalQuestions;

  @BuiltValueField(wireName: r'end_time')
  int? get endTime;

  @BuiltValueField(wireName: r'attempted_questions')
  BuiltList<AttemptedQuestionDetail>? get attemptedQuestions;

  @BuiltValueField(wireName: r'unattempted_questions')
  BuiltList<UnattemptedQuestion>? get unattemptedQuestions;

  @BuiltValueField(wireName: r'correct_answers')
  int? get correctAnswers;

  @BuiltValueField(wireName: r'wrong_answers')
  int? get wrongAnswers;

  @BuiltValueField(wireName: r'score')
  int? get score;

  @BuiltValueField(wireName: r'category')
  String? get category;

  @BuiltValueField(wireName: r'total_time_taken')
  int? get totalTimeTaken;

  @BuiltValueField(wireName: r'avg_time_per_question')
  int? get avgTimePerQuestion;

  @BuiltValueField(wireName: r'difficulty')
  String? get difficulty;

  TestAttemptHistory._();

  factory TestAttemptHistory([void updates(TestAttemptHistoryBuilder b)]) =
      _$TestAttemptHistory;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TestAttemptHistoryBuilder b) => b
    ..attemptedQuestions = ListBuilder()
    ..unattemptedQuestions = ListBuilder()
    ..correctAnswers = 0
    ..wrongAnswers = 0;

  @BuiltValueSerializer(custom: true)
  static Serializer<TestAttemptHistory> get serializer =>
      _$TestAttemptHistorySerializer();
}

class _$TestAttemptHistorySerializer
    implements PrimitiveSerializer<TestAttemptHistory> {
  @override
  final Iterable<Type> types = const [TestAttemptHistory, _$TestAttemptHistory];

  @override
  final String wireName = r'TestAttemptHistory';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TestAttemptHistory object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'test_id';
    yield serializers.serialize(
      object.testId,
      specifiedType: const FullType(String),
    );
    yield r'test_title';
    yield serializers.serialize(
      object.testTitle,
      specifiedType: const FullType(String),
    );
    yield r'user_id';
    yield serializers.serialize(
      object.userId,
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
    yield r'start_time';
    yield serializers.serialize(
      object.startTime,
      specifiedType: const FullType(int),
    );
    yield r'total_questions';
    yield serializers.serialize(
      object.totalQuestions,
      specifiedType: const FullType(int),
    );
    if (object.endTime != null) {
      yield r'end_time';
      yield serializers.serialize(
        object.endTime,
        specifiedType: const FullType(int),
      );
    }
    if (object.attemptedQuestions != null) {
      yield r'attempted_questions';
      yield serializers.serialize(
        object.attemptedQuestions,
        specifiedType:
            const FullType(BuiltList, [FullType(AttemptedQuestionDetail)]),
      );
    }
    if (object.unattemptedQuestions != null) {
      yield r'unattempted_questions';
      yield serializers.serialize(
        object.unattemptedQuestions,
        specifiedType:
            const FullType(BuiltList, [FullType(UnattemptedQuestion)]),
      );
    }
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
    if (object.score != null) {
      yield r'score';
      yield serializers.serialize(
        object.score,
        specifiedType: const FullType(int),
      );
    }
    if (object.category != null) {
      yield r'category';
      yield serializers.serialize(
        object.category,
        specifiedType: const FullType(String),
      );
    }
    if (object.totalTimeTaken != null) {
      yield r'total_time_taken';
      yield serializers.serialize(
        object.totalTimeTaken,
        specifiedType: const FullType(int),
      );
    }
    if (object.avgTimePerQuestion != null) {
      yield r'avg_time_per_question';
      yield serializers.serialize(
        object.avgTimePerQuestion,
        specifiedType: const FullType(int),
      );
    }
    if (object.difficulty != null) {
      yield r'difficulty';
      yield serializers.serialize(
        object.difficulty,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TestAttemptHistory object, {
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
    required TestAttemptHistoryBuilder result,
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
        case r'test_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.testId = valueDes;
          break;
        case r'test_title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.testTitle = valueDes;
          break;
        case r'user_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.userId = valueDes;
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
        case r'start_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.startTime = valueDes;
          break;
        case r'total_questions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalQuestions = valueDes;
          break;
        case r'end_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.endTime = valueDes;
          break;
        case r'attempted_questions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(AttemptedQuestionDetail)]),
          ) as BuiltList<AttemptedQuestionDetail>;
          result.attemptedQuestions.replace(valueDes);
          break;
        case r'unattempted_questions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(UnattemptedQuestion)]),
          ) as BuiltList<UnattemptedQuestion>;
          result.unattemptedQuestions.replace(valueDes);
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
        case r'score':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.score = valueDes;
          break;
        case r'category':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.category = valueDes;
          break;
        case r'total_time_taken':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalTimeTaken = valueDes;
          break;
        case r'avg_time_per_question':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.avgTimePerQuestion = valueDes;
          break;
        case r'difficulty':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.difficulty = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TestAttemptHistory deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TestAttemptHistoryBuilder();
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
