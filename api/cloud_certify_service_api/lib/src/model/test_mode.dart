//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'test_mode.g.dart';

class TestMode extends EnumClass {
  /// Enum for test modes
  @BuiltValueEnumConst(wireName: r'practice')
  static const TestMode practice = _$practice;

  /// Enum for test modes
  @BuiltValueEnumConst(wireName: r'exam', fallback: true)
  static const TestMode exam = _$exam;

  static Serializer<TestMode> get serializer => _$testModeSerializer;

  const TestMode._(String name) : super(name);

  static BuiltSet<TestMode> get values => _$values;
  static TestMode valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class TestModeMixin = Object with _$TestModeMixin;
