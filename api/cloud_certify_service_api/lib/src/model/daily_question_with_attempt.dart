//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:cloud_certify_service_api/src/model/user_attempt.dart';
import 'package:cloud_certify_service_api/src/model/daily_question.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'daily_question_with_attempt.g.dart';

/// DailyQuestionWithAttempt
///
/// Properties:
/// * [question]
/// * [userAttempt]
@BuiltValue()
abstract class DailyQuestionWithAttempt
    implements
        Built<DailyQuestionWithAttempt, DailyQuestionWithAttemptBuilder> {
  @BuiltValueField(wireName: r'question')
  DailyQuestion get question;

  @BuiltValueField(wireName: r'user_attempt')
  UserAttempt get userAttempt;

  DailyQuestionWithAttempt._();

  factory DailyQuestionWithAttempt(
          [void updates(DailyQuestionWithAttemptBuilder b)]) =
      _$DailyQuestionWithAttempt;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DailyQuestionWithAttemptBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DailyQuestionWithAttempt> get serializer =>
      _$DailyQuestionWithAttemptSerializer();
}

class _$DailyQuestionWithAttemptSerializer
    implements PrimitiveSerializer<DailyQuestionWithAttempt> {
  @override
  final Iterable<Type> types = const [
    DailyQuestionWithAttempt,
    _$DailyQuestionWithAttempt
  ];

  @override
  final String wireName = r'DailyQuestionWithAttempt';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DailyQuestionWithAttempt object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'question';
    yield serializers.serialize(
      object.question,
      specifiedType: const FullType(DailyQuestion),
    );
    yield r'user_attempt';
    yield serializers.serialize(
      object.userAttempt,
      specifiedType: const FullType(UserAttempt),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    DailyQuestionWithAttempt object, {
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
    required DailyQuestionWithAttemptBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'question':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DailyQuestion),
          ) as DailyQuestion;
          result.question.replace(valueDes);
          break;
        case r'user_attempt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UserAttempt),
          ) as UserAttempt;
          result.userAttempt.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DailyQuestionWithAttempt deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DailyQuestionWithAttemptBuilder();
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
