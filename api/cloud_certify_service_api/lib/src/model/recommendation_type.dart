//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'recommendation_type.g.dart';

class RecommendationType extends EnumClass {
  /// An enumeration.
  @BuiltValueEnumConst(wireName: r'popular')
  static const RecommendationType popular = _$popular;

  /// An enumeration.
  @BuiltValueEnumConst(wireName: r'new')
  static const RecommendationType new_ = _$new_;

  /// An enumeration.
  @BuiltValueEnumConst(wireName: r'in-progress')
  static const RecommendationType inProgress = _$inProgress;

  /// An enumeration.
  @BuiltValueEnumConst(wireName: r'personalized', fallback: true)
  static const RecommendationType personalized = _$personalized;

  static Serializer<RecommendationType> get serializer =>
      _$recommendationTypeSerializer;

  const RecommendationType._(String name) : super(name);

  static BuiltSet<RecommendationType> get values => _$values;
  static RecommendationType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class RecommendationTypeMixin = Object with _$RecommendationTypeMixin;
