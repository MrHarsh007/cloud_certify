// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_mode.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TestMode _$practice = const TestMode._('practice');
const TestMode _$exam = const TestMode._('exam');

TestMode _$valueOf(String name) {
  switch (name) {
    case 'practice':
      return _$practice;
    case 'exam':
      return _$exam;
    default:
      return _$exam;
  }
}

final BuiltSet<TestMode> _$values = new BuiltSet<TestMode>(const <TestMode>[
  _$practice,
  _$exam,
]);

class _$TestModeMeta {
  const _$TestModeMeta();
  TestMode get practice => _$practice;
  TestMode get exam => _$exam;
  TestMode valueOf(String name) => _$valueOf(name);
  BuiltSet<TestMode> get values => _$values;
}

abstract class _$TestModeMixin {
  // ignore: non_constant_identifier_names
  _$TestModeMeta get TestMode => const _$TestModeMeta();
}

Serializer<TestMode> _$testModeSerializer = new _$TestModeSerializer();

class _$TestModeSerializer implements PrimitiveSerializer<TestMode> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'practice': 'practice',
    'exam': 'exam',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'practice': 'practice',
    'exam': 'exam',
  };

  @override
  final Iterable<Type> types = const <Type>[TestMode];
  @override
  final String wireName = 'TestMode';

  @override
  Object serialize(Serializers serializers, TestMode object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  TestMode deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      TestMode.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
