//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_attempt.g.dart';

/// UserAttempt
///
/// Properties:
/// * [attempted]
/// * [answer]
/// * [isCorrect]
/// * [timestamp]
@BuiltValue()
abstract class UserAttempt implements Built<UserAttempt, UserAttemptBuilder> {
  @BuiltValueField(wireName: r'attempted')
  bool? get attempted;

  @BuiltValueField(wireName: r'answer')
  String? get answer;

  @BuiltValueField(wireName: r'is_correct')
  bool? get isCorrect;

  @BuiltValueField(wireName: r'timestamp')
  int? get timestamp;

  UserAttempt._();

  factory UserAttempt([void updates(UserAttemptBuilder b)]) = _$UserAttempt;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserAttemptBuilder b) => b..attempted = false;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserAttempt> get serializer => _$UserAttemptSerializer();
}

class _$UserAttemptSerializer implements PrimitiveSerializer<UserAttempt> {
  @override
  final Iterable<Type> types = const [UserAttempt, _$UserAttempt];

  @override
  final String wireName = r'UserAttempt';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserAttempt object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.attempted != null) {
      yield r'attempted';
      yield serializers.serialize(
        object.attempted,
        specifiedType: const FullType(bool),
      );
    }
    if (object.answer != null) {
      yield r'answer';
      yield serializers.serialize(
        object.answer,
        specifiedType: const FullType(String),
      );
    }
    if (object.isCorrect != null) {
      yield r'is_correct';
      yield serializers.serialize(
        object.isCorrect,
        specifiedType: const FullType(bool),
      );
    }
    if (object.timestamp != null) {
      yield r'timestamp';
      yield serializers.serialize(
        object.timestamp,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UserAttempt object, {
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
    required UserAttemptBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'attempted':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.attempted = valueDes;
          break;
        case r'answer':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.answer = valueDes;
          break;
        case r'is_correct':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isCorrect = valueDes;
          break;
        case r'timestamp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.timestamp = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UserAttempt deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserAttemptBuilder();
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
