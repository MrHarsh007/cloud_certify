//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_ranking.g.dart';

/// UserRanking
///
/// Properties:
/// * [rank]
/// * [percentile]
/// * [avgScore]
/// * [testsTaken]
@BuiltValue()
abstract class UserRanking implements Built<UserRanking, UserRankingBuilder> {
  @BuiltValueField(wireName: r'rank')
  int get rank;

  @BuiltValueField(wireName: r'percentile')
  num get percentile;

  @BuiltValueField(wireName: r'avg_score')
  num get avgScore;

  @BuiltValueField(wireName: r'tests_taken')
  int get testsTaken;

  UserRanking._();

  factory UserRanking([void updates(UserRankingBuilder b)]) = _$UserRanking;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserRankingBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserRanking> get serializer => _$UserRankingSerializer();
}

class _$UserRankingSerializer implements PrimitiveSerializer<UserRanking> {
  @override
  final Iterable<Type> types = const [UserRanking, _$UserRanking];

  @override
  final String wireName = r'UserRanking';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserRanking object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'rank';
    yield serializers.serialize(
      object.rank,
      specifiedType: const FullType(int),
    );
    yield r'percentile';
    yield serializers.serialize(
      object.percentile,
      specifiedType: const FullType(num),
    );
    yield r'avg_score';
    yield serializers.serialize(
      object.avgScore,
      specifiedType: const FullType(num),
    );
    yield r'tests_taken';
    yield serializers.serialize(
      object.testsTaken,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    UserRanking object, {
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
    required UserRankingBuilder result,
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
        case r'percentile':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.percentile = valueDes;
          break;
        case r'avg_score':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.avgScore = valueDes;
          break;
        case r'tests_taken':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.testsTaken = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UserRanking deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserRankingBuilder();
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
