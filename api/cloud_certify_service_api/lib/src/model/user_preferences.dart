//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_preferences.g.dart';

/// UserPreferences
///
/// Properties:
/// * [dailyReminder]
/// * [emailNotifications]
/// * [theme]
/// * [studyGoalMinutesPerDay]
/// * [targetExamDate]
@BuiltValue()
abstract class UserPreferences
    implements Built<UserPreferences, UserPreferencesBuilder> {
  @BuiltValueField(wireName: r'daily_reminder')
  bool get dailyReminder;

  @BuiltValueField(wireName: r'email_notifications')
  bool get emailNotifications;

  @BuiltValueField(wireName: r'theme')
  String get theme;

  @BuiltValueField(wireName: r'study_goal_minutes_per_day')
  int get studyGoalMinutesPerDay;

  @BuiltValueField(wireName: r'target_exam_date')
  int? get targetExamDate;

  UserPreferences._();

  factory UserPreferences([void updates(UserPreferencesBuilder b)]) =
      _$UserPreferences;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserPreferencesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserPreferences> get serializer =>
      _$UserPreferencesSerializer();
}

class _$UserPreferencesSerializer
    implements PrimitiveSerializer<UserPreferences> {
  @override
  final Iterable<Type> types = const [UserPreferences, _$UserPreferences];

  @override
  final String wireName = r'UserPreferences';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserPreferences object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'daily_reminder';
    yield serializers.serialize(
      object.dailyReminder,
      specifiedType: const FullType(bool),
    );
    yield r'email_notifications';
    yield serializers.serialize(
      object.emailNotifications,
      specifiedType: const FullType(bool),
    );
    yield r'theme';
    yield serializers.serialize(
      object.theme,
      specifiedType: const FullType(String),
    );
    yield r'study_goal_minutes_per_day';
    yield serializers.serialize(
      object.studyGoalMinutesPerDay,
      specifiedType: const FullType(int),
    );
    if (object.targetExamDate != null) {
      yield r'target_exam_date';
      yield serializers.serialize(
        object.targetExamDate,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UserPreferences object, {
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
    required UserPreferencesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'daily_reminder':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.dailyReminder = valueDes;
          break;
        case r'email_notifications':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.emailNotifications = valueDes;
          break;
        case r'theme':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.theme = valueDes;
          break;
        case r'study_goal_minutes_per_day':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.studyGoalMinutesPerDay = valueDes;
          break;
        case r'target_exam_date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.targetExamDate = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UserPreferences deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserPreferencesBuilder();
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
