//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_statistics.g.dart';

/// UserStatistics
///
/// Properties:
/// * [totalTestsAttempted]
/// * [totalPracticeTests]
/// * [totalRealTests]
/// * [avgScore]
/// * [bestScore]
/// * [totalTimeSpent]
/// * [avgTimePerTest]
/// * [totalQuestionsAttempted]
/// * [totalCorrectAnswers]
/// * [accuracyRate]
@BuiltValue()
abstract class UserStatistics
    implements Built<UserStatistics, UserStatisticsBuilder> {
  @BuiltValueField(wireName: r'total_tests_attempted')
  int get totalTestsAttempted;

  @BuiltValueField(wireName: r'total_practice_tests')
  int get totalPracticeTests;

  @BuiltValueField(wireName: r'total_real_tests')
  int get totalRealTests;

  @BuiltValueField(wireName: r'avg_score')
  num get avgScore;

  @BuiltValueField(wireName: r'best_score')
  num get bestScore;

  @BuiltValueField(wireName: r'total_time_spent')
  int get totalTimeSpent;

  @BuiltValueField(wireName: r'avg_time_per_test')
  int get avgTimePerTest;

  @BuiltValueField(wireName: r'total_questions_attempted')
  int get totalQuestionsAttempted;

  @BuiltValueField(wireName: r'total_correct_answers')
  int get totalCorrectAnswers;

  @BuiltValueField(wireName: r'accuracy_rate')
  num get accuracyRate;

  UserStatistics._();

  factory UserStatistics([void updates(UserStatisticsBuilder b)]) =
      _$UserStatistics;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserStatisticsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserStatistics> get serializer =>
      _$UserStatisticsSerializer();
}

class _$UserStatisticsSerializer
    implements PrimitiveSerializer<UserStatistics> {
  @override
  final Iterable<Type> types = const [UserStatistics, _$UserStatistics];

  @override
  final String wireName = r'UserStatistics';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserStatistics object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'total_tests_attempted';
    yield serializers.serialize(
      object.totalTestsAttempted,
      specifiedType: const FullType(int),
    );
    yield r'total_practice_tests';
    yield serializers.serialize(
      object.totalPracticeTests,
      specifiedType: const FullType(int),
    );
    yield r'total_real_tests';
    yield serializers.serialize(
      object.totalRealTests,
      specifiedType: const FullType(int),
    );
    yield r'avg_score';
    yield serializers.serialize(
      object.avgScore,
      specifiedType: const FullType(num),
    );
    yield r'best_score';
    yield serializers.serialize(
      object.bestScore,
      specifiedType: const FullType(num),
    );
    yield r'total_time_spent';
    yield serializers.serialize(
      object.totalTimeSpent,
      specifiedType: const FullType(int),
    );
    yield r'avg_time_per_test';
    yield serializers.serialize(
      object.avgTimePerTest,
      specifiedType: const FullType(int),
    );
    yield r'total_questions_attempted';
    yield serializers.serialize(
      object.totalQuestionsAttempted,
      specifiedType: const FullType(int),
    );
    yield r'total_correct_answers';
    yield serializers.serialize(
      object.totalCorrectAnswers,
      specifiedType: const FullType(int),
    );
    yield r'accuracy_rate';
    yield serializers.serialize(
      object.accuracyRate,
      specifiedType: const FullType(num),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    UserStatistics object, {
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
    required UserStatisticsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'total_tests_attempted':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalTestsAttempted = valueDes;
          break;
        case r'total_practice_tests':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalPracticeTests = valueDes;
          break;
        case r'total_real_tests':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalRealTests = valueDes;
          break;
        case r'avg_score':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.avgScore = valueDes;
          break;
        case r'best_score':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.bestScore = valueDes;
          break;
        case r'total_time_spent':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalTimeSpent = valueDes;
          break;
        case r'avg_time_per_test':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.avgTimePerTest = valueDes;
          break;
        case r'total_questions_attempted':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalQuestionsAttempted = valueDes;
          break;
        case r'total_correct_answers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalCorrectAnswers = valueDes;
          break;
        case r'accuracy_rate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.accuracyRate = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UserStatistics deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserStatisticsBuilder();
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
