//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'resource_type.g.dart';

class ResourceType extends EnumClass {
  /// An enumeration.
  @BuiltValueEnumConst(wireName: r'pdf')
  static const ResourceType pdf = _$pdf;

  /// An enumeration.
  @BuiltValueEnumConst(wireName: r'link')
  static const ResourceType link = _$link;

  /// An enumeration.
  @BuiltValueEnumConst(wireName: r'repository')
  static const ResourceType repository = _$repository;

  /// An enumeration.
  @BuiltValueEnumConst(wireName: r'video', fallback: true)
  static const ResourceType video = _$video;

  static Serializer<ResourceType> get serializer => _$resourceTypeSerializer;

  const ResourceType._(String name) : super(name);

  static BuiltSet<ResourceType> get values => _$values;
  static ResourceType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class ResourceTypeMixin = Object with _$ResourceTypeMixin;
