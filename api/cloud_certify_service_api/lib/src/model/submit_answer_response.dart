//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'submit_answer_response.g.dart';

/// Model for the response after submitting an answer
///
/// Properties:
/// * [isCorrect]
/// * [correctOption]
/// * [explanation]
@BuiltValue()
abstract class SubmitAnswerResponse
    implements Built<SubmitAnswerResponse, SubmitAnswerResponseBuilder> {
  @BuiltValueField(wireName: r'is_correct')
  bool get isCorrect;

  @BuiltValueField(wireName: r'correct_option')
  String get correctOption;

  @BuiltValueField(wireName: r'explanation')
  String get explanation;

  SubmitAnswerResponse._();

  factory SubmitAnswerResponse([void updates(SubmitAnswerResponseBuilder b)]) =
      _$SubmitAnswerResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SubmitAnswerResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SubmitAnswerResponse> get serializer =>
      _$SubmitAnswerResponseSerializer();
}

class _$SubmitAnswerResponseSerializer
    implements PrimitiveSerializer<SubmitAnswerResponse> {
  @override
  final Iterable<Type> types = const [
    SubmitAnswerResponse,
    _$SubmitAnswerResponse
  ];

  @override
  final String wireName = r'SubmitAnswerResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SubmitAnswerResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'is_correct';
    yield serializers.serialize(
      object.isCorrect,
      specifiedType: const FullType(bool),
    );
    yield r'correct_option';
    yield serializers.serialize(
      object.correctOption,
      specifiedType: const FullType(String),
    );
    yield r'explanation';
    yield serializers.serialize(
      object.explanation,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SubmitAnswerResponse object, {
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
    required SubmitAnswerResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'is_correct':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isCorrect = valueDes;
          break;
        case r'correct_option':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.correctOption = valueDes;
          break;
        case r'explanation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.explanation = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SubmitAnswerResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SubmitAnswerResponseBuilder();
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
