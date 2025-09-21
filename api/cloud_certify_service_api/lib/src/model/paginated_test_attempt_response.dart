//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:cloud_certify_service_api/src/model/test_attempt_summary.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'paginated_test_attempt_response.g.dart';

/// PaginatedTestAttemptResponse
///
/// Properties:
/// * [attempts]
/// * [nextCursor]
@BuiltValue()
abstract class PaginatedTestAttemptResponse
    implements
        Built<PaginatedTestAttemptResponse,
            PaginatedTestAttemptResponseBuilder> {
  @BuiltValueField(wireName: r'attempts')
  BuiltList<TestAttemptSummary> get attempts;

  @BuiltValueField(wireName: r'next_cursor')
  String? get nextCursor;

  PaginatedTestAttemptResponse._();

  factory PaginatedTestAttemptResponse(
          [void updates(PaginatedTestAttemptResponseBuilder b)]) =
      _$PaginatedTestAttemptResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PaginatedTestAttemptResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PaginatedTestAttemptResponse> get serializer =>
      _$PaginatedTestAttemptResponseSerializer();
}

class _$PaginatedTestAttemptResponseSerializer
    implements PrimitiveSerializer<PaginatedTestAttemptResponse> {
  @override
  final Iterable<Type> types = const [
    PaginatedTestAttemptResponse,
    _$PaginatedTestAttemptResponse
  ];

  @override
  final String wireName = r'PaginatedTestAttemptResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PaginatedTestAttemptResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'attempts';
    yield serializers.serialize(
      object.attempts,
      specifiedType: const FullType(BuiltList, [FullType(TestAttemptSummary)]),
    );
    if (object.nextCursor != null) {
      yield r'next_cursor';
      yield serializers.serialize(
        object.nextCursor,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PaginatedTestAttemptResponse object, {
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
    required PaginatedTestAttemptResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'attempts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(TestAttemptSummary)]),
          ) as BuiltList<TestAttemptSummary>;
          result.attempts.replace(valueDes);
          break;
        case r'next_cursor':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.nextCursor = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PaginatedTestAttemptResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PaginatedTestAttemptResponseBuilder();
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
