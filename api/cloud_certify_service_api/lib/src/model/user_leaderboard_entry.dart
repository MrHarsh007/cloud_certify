//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_leaderboard_entry.g.dart';

/// UserLeaderboardEntry
///
/// Properties:
/// * [rank]
/// * [uid]
/// * [fullName]
/// * [testsTaken]
/// * [avgScore]
/// * [passRate]
/// * [certificationTarget]
@BuiltValue()
abstract class UserLeaderboardEntry
    implements Built<UserLeaderboardEntry, UserLeaderboardEntryBuilder> {
  @BuiltValueField(wireName: r'rank')
  int get rank;

  @BuiltValueField(wireName: r'uid')
  String get uid;

  @BuiltValueField(wireName: r'full_name')
  String get fullName;

  @BuiltValueField(wireName: r'tests_taken')
  int get testsTaken;

  @BuiltValueField(wireName: r'avg_score')
  num get avgScore;

  @BuiltValueField(wireName: r'pass_rate')
  num get passRate;

  @BuiltValueField(wireName: r'certification_target')
  String? get certificationTarget;

  UserLeaderboardEntry._();

  factory UserLeaderboardEntry([void updates(UserLeaderboardEntryBuilder b)]) =
      _$UserLeaderboardEntry;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserLeaderboardEntryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserLeaderboardEntry> get serializer =>
      _$UserLeaderboardEntrySerializer();
}

class _$UserLeaderboardEntrySerializer
    implements PrimitiveSerializer<UserLeaderboardEntry> {
  @override
  final Iterable<Type> types = const [
    UserLeaderboardEntry,
    _$UserLeaderboardEntry
  ];

  @override
  final String wireName = r'UserLeaderboardEntry';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserLeaderboardEntry object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'rank';
    yield serializers.serialize(
      object.rank,
      specifiedType: const FullType(int),
    );
    yield r'uid';
    yield serializers.serialize(
      object.uid,
      specifiedType: const FullType(String),
    );
    yield r'full_name';
    yield serializers.serialize(
      object.fullName,
      specifiedType: const FullType(String),
    );
    yield r'tests_taken';
    yield serializers.serialize(
      object.testsTaken,
      specifiedType: const FullType(int),
    );
    yield r'avg_score';
    yield serializers.serialize(
      object.avgScore,
      specifiedType: const FullType(num),
    );
    yield r'pass_rate';
    yield serializers.serialize(
      object.passRate,
      specifiedType: const FullType(num),
    );
    if (object.certificationTarget != null) {
      yield r'certification_target';
      yield serializers.serialize(
        object.certificationTarget,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UserLeaderboardEntry object, {
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
    required UserLeaderboardEntryBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'rank':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.rank = valueDes;
          break;
        case r'uid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.uid = valueDes;
          break;
        case r'full_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.fullName = valueDes;
          break;
        case r'tests_taken':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.testsTaken = valueDes;
          break;
        case r'avg_score':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.avgScore = valueDes;
          break;
        case r'pass_rate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.passRate = valueDes;
          break;
        case r'certification_target':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.certificationTarget = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UserLeaderboardEntry deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserLeaderboardEntryBuilder();
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
