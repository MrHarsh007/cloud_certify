//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:cloud_certify_service_api/src/model/test_mode.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'start_test_request.g.dart';

/// Model for starting a test attempt
///
/// Properties:
/// * [mode]
@BuiltValue()
abstract class StartTestRequest
    implements Built<StartTestRequest, StartTestRequestBuilder> {
  @BuiltValueField(wireName: r'mode')
  TestMode get mode;
  // enum modeEnum {  practice,  exam,  };

  StartTestRequest._();

  factory StartTestRequest([void updates(StartTestRequestBuilder b)]) =
      _$StartTestRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StartTestRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StartTestRequest> get serializer =>
      _$StartTestRequestSerializer();
}

class _$StartTestRequestSerializer
    implements PrimitiveSerializer<StartTestRequest> {
  @override
  final Iterable<Type> types = const [StartTestRequest, _$StartTestRequest];

  @override
  final String wireName = r'StartTestRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StartTestRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'mode';
    yield serializers.serialize(
      object.mode,
      specifiedType: const FullType(TestMode),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    StartTestRequest object, {
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
    required StartTestRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'mode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TestMode),
          ) as TestMode;
          result.mode = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StartTestRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StartTestRequestBuilder();
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
