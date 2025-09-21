//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:cloud_certify_service_api/src/model/test_attempt_history.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'test_attempt_history_list.g.dart';

/// TestAttemptHistoryList
///
/// Properties:
/// * [history]
@BuiltValue()
abstract class TestAttemptHistoryList
    implements Built<TestAttemptHistoryList, TestAttemptHistoryListBuilder> {
  @BuiltValueField(wireName: r'history')
  BuiltList<TestAttemptHistory> get history;

  TestAttemptHistoryList._();

  factory TestAttemptHistoryList(
          [void updates(TestAttemptHistoryListBuilder b)]) =
      _$TestAttemptHistoryList;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TestAttemptHistoryListBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TestAttemptHistoryList> get serializer =>
      _$TestAttemptHistoryListSerializer();
}

class _$TestAttemptHistoryListSerializer
    implements PrimitiveSerializer<TestAttemptHistoryList> {
  @override
  final Iterable<Type> types = const [
    TestAttemptHistoryList,
    _$TestAttemptHistoryList
  ];

  @override
  final String wireName = r'TestAttemptHistoryList';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TestAttemptHistoryList object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'history';
    yield serializers.serialize(
      object.history,
      specifiedType: const FullType(BuiltList, [FullType(TestAttemptHistory)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    TestAttemptHistoryList object, {
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
    required TestAttemptHistoryListBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'history':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(TestAttemptHistory)]),
          ) as BuiltList<TestAttemptHistory>;
          result.history.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TestAttemptHistoryList deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TestAttemptHistoryListBuilder();
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
