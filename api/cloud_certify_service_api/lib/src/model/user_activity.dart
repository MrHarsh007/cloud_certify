//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_activity.g.dart';

/// UserActivity
///
/// Properties:
/// * [lastLogin]
/// * [streakCount]
/// * [testsTaken]
/// * [questionsAnswered]
/// * [avgScore]
/// * [studyTimeMinutes]
/// * [streakLastUpdated]
@BuiltValue()
abstract class UserActivity
    implements Built<UserActivity, UserActivityBuilder> {
  @BuiltValueField(wireName: r'last_login')
  int get lastLogin;

  @BuiltValueField(wireName: r'streak_count')
  int get streakCount;

  @BuiltValueField(wireName: r'tests_taken')
  int get testsTaken;

  @BuiltValueField(wireName: r'questions_answered')
  int get questionsAnswered;

  @BuiltValueField(wireName: r'avg_score')
  num get avgScore;

  @BuiltValueField(wireName: r'study_time_minutes')
  int get studyTimeMinutes;

  @BuiltValueField(wireName: r'streak_last_updated')
  int? get streakLastUpdated;

  UserActivity._();

  factory UserActivity([void updates(UserActivityBuilder b)]) = _$UserActivity;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserActivityBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserActivity> get serializer => _$UserActivitySerializer();
}

class _$UserActivitySerializer implements PrimitiveSerializer<UserActivity> {
  @override
  final Iterable<Type> types = const [UserActivity, _$UserActivity];

  @override
  final String wireName = r'UserActivity';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserActivity object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'last_login';
    yield serializers.serialize(
      object.lastLogin,
      specifiedType: const FullType(int),
    );
    yield r'streak_count';
    yield serializers.serialize(
      object.streakCount,
      specifiedType: const FullType(int),
    );
    yield r'tests_taken';
    yield serializers.serialize(
      object.testsTaken,
      specifiedType: const FullType(int),
    );
    yield r'questions_answered';
    yield serializers.serialize(
      object.questionsAnswered,
      specifiedType: const FullType(int),
    );
    yield r'avg_score';
    yield serializers.serialize(
      object.avgScore,
      specifiedType: const FullType(num),
    );
    yield r'study_time_minutes';
    yield serializers.serialize(
      object.studyTimeMinutes,
      specifiedType: const FullType(int),
    );
    if (object.streakLastUpdated != null) {
      yield r'streak_last_updated';
      yield serializers.serialize(
        object.streakLastUpdated,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UserActivity object, {
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
    required UserActivityBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'last_login':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.lastLogin = valueDes;
          break;
        case r'streak_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.streakCount = valueDes;
          break;
        case r'tests_taken':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.testsTaken = valueDes;
          break;
        case r'questions_answered':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.questionsAnswered = valueDes;
          break;
        case r'avg_score':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.avgScore = valueDes;
          break;
        case r'study_time_minutes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.studyTimeMinutes = valueDes;
          break;
        case r'streak_last_updated':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.streakLastUpdated = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UserActivity deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserActivityBuilder();
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
