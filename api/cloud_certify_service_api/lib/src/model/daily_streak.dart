//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'daily_streak.g.dart';

/// DailyStreak
///
/// Properties:
/// * [currentStreak]
/// * [lastQuestionDate]
@BuiltValue()
abstract class DailyStreak implements Built<DailyStreak, DailyStreakBuilder> {
  @BuiltValueField(wireName: r'current_streak')
  int get currentStreak;

  @BuiltValueField(wireName: r'last_question_date')
  int? get lastQuestionDate;

  DailyStreak._();

  factory DailyStreak([void updates(DailyStreakBuilder b)]) = _$DailyStreak;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DailyStreakBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DailyStreak> get serializer => _$DailyStreakSerializer();
}

class _$DailyStreakSerializer implements PrimitiveSerializer<DailyStreak> {
  @override
  final Iterable<Type> types = const [DailyStreak, _$DailyStreak];

  @override
  final String wireName = r'DailyStreak';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DailyStreak object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'current_streak';
    yield serializers.serialize(
      object.currentStreak,
      specifiedType: const FullType(int),
    );
    if (object.lastQuestionDate != null) {
      yield r'last_question_date';
      yield serializers.serialize(
        object.lastQuestionDate,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DailyStreak object, {
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
    required DailyStreakBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'current_streak':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.currentStreak = valueDes;
          break;
        case r'last_question_date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.lastQuestionDate = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DailyStreak deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DailyStreakBuilder();
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
