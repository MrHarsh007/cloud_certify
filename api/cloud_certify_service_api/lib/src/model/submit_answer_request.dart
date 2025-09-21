//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'submit_answer_request.g.dart';

/// Model for submitting an answer
///
/// Properties:
/// * [questionId]
/// * [selectedOption]
/// * [timeTaken]
@BuiltValue()
abstract class SubmitAnswerRequest
    implements Built<SubmitAnswerRequest, SubmitAnswerRequestBuilder> {
  @BuiltValueField(wireName: r'question_id')
  String get questionId;

  @BuiltValueField(wireName: r'selected_option')
  BuiltList<String> get selectedOption;

  @BuiltValueField(wireName: r'time_taken')
  int get timeTaken;

  SubmitAnswerRequest._();

  factory SubmitAnswerRequest([void updates(SubmitAnswerRequestBuilder b)]) =
      _$SubmitAnswerRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SubmitAnswerRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SubmitAnswerRequest> get serializer =>
      _$SubmitAnswerRequestSerializer();
}

class _$SubmitAnswerRequestSerializer
    implements PrimitiveSerializer<SubmitAnswerRequest> {
  @override
  final Iterable<Type> types = const [
    SubmitAnswerRequest,
    _$SubmitAnswerRequest
  ];

  @override
  final String wireName = r'SubmitAnswerRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SubmitAnswerRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'question_id';
    yield serializers.serialize(
      object.questionId,
      specifiedType: const FullType(String),
    );
    yield r'selected_option';
    yield serializers.serialize(
      object.selectedOption,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'time_taken';
    yield serializers.serialize(
      object.timeTaken,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SubmitAnswerRequest object, {
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
    required SubmitAnswerRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'question_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.questionId = valueDes;
          break;
        case r'selected_option':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.selectedOption.replace(valueDes);
          break;
        case r'time_taken':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.timeTaken = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SubmitAnswerRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SubmitAnswerRequestBuilder();
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
