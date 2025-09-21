//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:cloud_certify_service_api/src/model/user_leaderboard_entry.dart';
import 'package:cloud_certify_service_api/src/model/user_ranking.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'leaderboard_response.g.dart';

/// LeaderboardResponse
///
/// Properties:
/// * [userRanking]
/// * [leaderboard]
@BuiltValue()
abstract class LeaderboardResponse
    implements Built<LeaderboardResponse, LeaderboardResponseBuilder> {
  @BuiltValueField(wireName: r'user_ranking')
  UserRanking get userRanking;

  @BuiltValueField(wireName: r'leaderboard')
  BuiltList<UserLeaderboardEntry> get leaderboard;

  LeaderboardResponse._();

  factory LeaderboardResponse([void updates(LeaderboardResponseBuilder b)]) =
      _$LeaderboardResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LeaderboardResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LeaderboardResponse> get serializer =>
      _$LeaderboardResponseSerializer();
}

class _$LeaderboardResponseSerializer
    implements PrimitiveSerializer<LeaderboardResponse> {
  @override
  final Iterable<Type> types = const [
    LeaderboardResponse,
    _$LeaderboardResponse
  ];

  @override
  final String wireName = r'LeaderboardResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LeaderboardResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'user_ranking';
    yield serializers.serialize(
      object.userRanking,
      specifiedType: const FullType(UserRanking),
    );
    yield r'leaderboard';
    yield serializers.serialize(
      object.leaderboard,
      specifiedType:
          const FullType(BuiltList, [FullType(UserLeaderboardEntry)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    LeaderboardResponse object, {
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
    required LeaderboardResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'user_ranking':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UserRanking),
          ) as UserRanking;
          result.userRanking.replace(valueDes);
          break;
        case r'leaderboard':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(UserLeaderboardEntry)]),
          ) as BuiltList<UserLeaderboardEntry>;
          result.leaderboard.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LeaderboardResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LeaderboardResponseBuilder();
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
