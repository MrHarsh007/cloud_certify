//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'add_activity_request.g.dart';

/// AddActivityRequest
///
/// Properties:
/// * [activity]
/// * [metadata]
@BuiltValue()
abstract class AddActivityRequest
    implements Built<AddActivityRequest, AddActivityRequestBuilder> {
  @BuiltValueField(wireName: r'activity')
  String get activity;

  @BuiltValueField(wireName: r'metadata')
  BuiltList<JsonObject>? get metadata;

  AddActivityRequest._();

  factory AddActivityRequest([void updates(AddActivityRequestBuilder b)]) =
      _$AddActivityRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AddActivityRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AddActivityRequest> get serializer =>
      _$AddActivityRequestSerializer();
}

class _$AddActivityRequestSerializer
    implements PrimitiveSerializer<AddActivityRequest> {
  @override
  final Iterable<Type> types = const [AddActivityRequest, _$AddActivityRequest];

  @override
  final String wireName = r'AddActivityRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AddActivityRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'activity';
    yield serializers.serialize(
      object.activity,
      specifiedType: const FullType(String),
    );
    if (object.metadata != null) {
      yield r'metadata';
      yield serializers.serialize(
        object.metadata,
        specifiedType: const FullType(BuiltList, [FullType(JsonObject)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AddActivityRequest object, {
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
    required AddActivityRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'activity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.activity = valueDes;
          break;
        case r'metadata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(JsonObject)]),
          ) as BuiltList<JsonObject>;
          result.metadata.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AddActivityRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AddActivityRequestBuilder();
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
