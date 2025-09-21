//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:cloud_certify_service_api/src/model/test_mode.dart';
import 'package:cloud_certify_service_api/src/model/test_summary.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'test_attempt_summary.g.dart';

/// Model for test attempt summary data
///
/// Properties:
/// * [attemptId]
/// * [testId]
/// * [mode]
/// * [status]
/// * [startTime]
/// * [totalQuestions]
/// * [testData]
/// * [endTime]
/// * [attemptedQuestions]
/// * [correctAnswers]
/// * [wrongAnswers]
/// * [score]
/// * [resume]
@BuiltValue()
abstract class TestAttemptSummary
    implements Built<TestAttemptSummary, TestAttemptSummaryBuilder> {
  @BuiltValueField(wireName: r'attempt_id')
  String get attemptId;

  @BuiltValueField(wireName: r'test_id')
  String get testId;

  @BuiltValueField(wireName: r'mode')
  TestMode get mode;
  // enum modeEnum {  practice,  exam,  };

  @BuiltValueField(wireName: r'status')
  String get status;

  @BuiltValueField(wireName: r'start_time')
  int get startTime;

  @BuiltValueField(wireName: r'total_questions')
  int get totalQuestions;

  @BuiltValueField(wireName: r'test_data')
  TestSummary? get testData;

  @BuiltValueField(wireName: r'end_time')
  int? get endTime;

  @BuiltValueField(wireName: r'attempted_questions')
  int? get attemptedQuestions;

  @BuiltValueField(wireName: r'correct_answers')
  int? get correctAnswers;

  @BuiltValueField(wireName: r'wrong_answers')
  int? get wrongAnswers;

  @BuiltValueField(wireName: r'score')
  int? get score;

  @BuiltValueField(wireName: r'resume')
  bool? get resume;

  TestAttemptSummary._();

  factory TestAttemptSummary([void updates(TestAttemptSummaryBuilder b)]) =
      _$TestAttemptSummary;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TestAttemptSummaryBuilder b) => b
    ..attemptedQuestions = 0
    ..resume = false;

  @BuiltValueSerializer(custom: true)
  static Serializer<TestAttemptSummary> get serializer =>
      _$TestAttemptSummarySerializer();
}

class _$TestAttemptSummarySerializer
    implements PrimitiveSerializer<TestAttemptSummary> {
  @override
  final Iterable<Type> types = const [TestAttemptSummary, _$TestAttemptSummary];

  @override
  final String wireName = r'TestAttemptSummary';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TestAttemptSummary object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'attempt_id';
    yield serializers.serialize(
      object.attemptId,
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
    if (object.testData != null) {
      yield r'test_data';
      yield serializers.serialize(
        object.testData,
        specifiedType: const FullType(TestSummary),
      );
    }
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
        specifiedType: const FullType(int),
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
    if (object.resume != null) {
      yield r'resume';
      yield serializers.serialize(
        object.resume,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TestAttemptSummary object, {
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
    required TestAttemptSummaryBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'attempt_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.attemptId = valueDes;
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
        case r'test_data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TestSummary),
          ) as TestSummary;
          result.testData.replace(valueDes);
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
            specifiedType: const FullType(int),
          ) as int;
          result.attemptedQuestions = valueDes;
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
        case r'resume':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.resume = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TestAttemptSummary deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TestAttemptSummaryBuilder();
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
