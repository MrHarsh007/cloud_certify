// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assessment_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AssessmentType _$multipleChoice =
    const AssessmentType._('multipleChoice');
const AssessmentType _$multiSelect = const AssessmentType._('multiSelect');

AssessmentType _$valueOf(String name) {
  switch (name) {
    case 'multipleChoice':
      return _$multipleChoice;
    case 'multiSelect':
      return _$multiSelect;
    default:
      return _$multiSelect;
  }
}

final BuiltSet<AssessmentType> _$values =
    new BuiltSet<AssessmentType>(const <AssessmentType>[
  _$multipleChoice,
  _$multiSelect,
]);

class _$AssessmentTypeMeta {
  const _$AssessmentTypeMeta();
  AssessmentType get multipleChoice => _$multipleChoice;
  AssessmentType get multiSelect => _$multiSelect;
  AssessmentType valueOf(String name) => _$valueOf(name);
  BuiltSet<AssessmentType> get values => _$values;
}

abstract class _$AssessmentTypeMixin {
  // ignore: non_constant_identifier_names
  _$AssessmentTypeMeta get AssessmentType => const _$AssessmentTypeMeta();
}

Serializer<AssessmentType> _$assessmentTypeSerializer =
    new _$AssessmentTypeSerializer();

class _$AssessmentTypeSerializer
    implements PrimitiveSerializer<AssessmentType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'multipleChoice': 'multiple_choice',
    'multiSelect': 'multi_select',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'multiple_choice': 'multipleChoice',
    'multi_select': 'multiSelect',
  };

  @override
  final Iterable<Type> types = const <Type>[AssessmentType];
  @override
  final String wireName = 'AssessmentType';

  @override
  Object serialize(Serializers serializers, AssessmentType object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AssessmentType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AssessmentType.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
