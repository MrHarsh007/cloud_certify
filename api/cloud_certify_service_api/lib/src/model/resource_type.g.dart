// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resource_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ResourceType _$pdf = const ResourceType._('pdf');
const ResourceType _$link = const ResourceType._('link');
const ResourceType _$repository = const ResourceType._('repository');
const ResourceType _$video = const ResourceType._('video');

ResourceType _$valueOf(String name) {
  switch (name) {
    case 'pdf':
      return _$pdf;
    case 'link':
      return _$link;
    case 'repository':
      return _$repository;
    case 'video':
      return _$video;
    default:
      return _$video;
  }
}

final BuiltSet<ResourceType> _$values =
    new BuiltSet<ResourceType>(const <ResourceType>[
  _$pdf,
  _$link,
  _$repository,
  _$video,
]);

class _$ResourceTypeMeta {
  const _$ResourceTypeMeta();
  ResourceType get pdf => _$pdf;
  ResourceType get link => _$link;
  ResourceType get repository => _$repository;
  ResourceType get video => _$video;
  ResourceType valueOf(String name) => _$valueOf(name);
  BuiltSet<ResourceType> get values => _$values;
}

abstract class _$ResourceTypeMixin {
  // ignore: non_constant_identifier_names
  _$ResourceTypeMeta get ResourceType => const _$ResourceTypeMeta();
}

Serializer<ResourceType> _$resourceTypeSerializer =
    new _$ResourceTypeSerializer();

class _$ResourceTypeSerializer implements PrimitiveSerializer<ResourceType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'pdf': 'pdf',
    'link': 'link',
    'repository': 'repository',
    'video': 'video',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'pdf': 'pdf',
    'link': 'link',
    'repository': 'repository',
    'video': 'video',
  };

  @override
  final Iterable<Type> types = const <Type>[ResourceType];
  @override
  final String wireName = 'ResourceType';

  @override
  Object serialize(Serializers serializers, ResourceType object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ResourceType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ResourceType.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
