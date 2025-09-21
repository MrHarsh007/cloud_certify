// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recommendation_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RecommendationType _$popular = const RecommendationType._('popular');
const RecommendationType _$new_ = const RecommendationType._('new_');
const RecommendationType _$inProgress =
    const RecommendationType._('inProgress');
const RecommendationType _$personalized =
    const RecommendationType._('personalized');

RecommendationType _$valueOf(String name) {
  switch (name) {
    case 'popular':
      return _$popular;
    case 'new_':
      return _$new_;
    case 'inProgress':
      return _$inProgress;
    case 'personalized':
      return _$personalized;
    default:
      return _$personalized;
  }
}

final BuiltSet<RecommendationType> _$values =
    new BuiltSet<RecommendationType>(const <RecommendationType>[
  _$popular,
  _$new_,
  _$inProgress,
  _$personalized,
]);

class _$RecommendationTypeMeta {
  const _$RecommendationTypeMeta();
  RecommendationType get popular => _$popular;
  RecommendationType get new_ => _$new_;
  RecommendationType get inProgress => _$inProgress;
  RecommendationType get personalized => _$personalized;
  RecommendationType valueOf(String name) => _$valueOf(name);
  BuiltSet<RecommendationType> get values => _$values;
}

abstract class _$RecommendationTypeMixin {
  // ignore: non_constant_identifier_names
  _$RecommendationTypeMeta get RecommendationType =>
      const _$RecommendationTypeMeta();
}

Serializer<RecommendationType> _$recommendationTypeSerializer =
    new _$RecommendationTypeSerializer();

class _$RecommendationTypeSerializer
    implements PrimitiveSerializer<RecommendationType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'popular': 'popular',
    'new_': 'new',
    'inProgress': 'in-progress',
    'personalized': 'personalized',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'popular': 'popular',
    'new': 'new_',
    'in-progress': 'inProgress',
    'personalized': 'personalized',
  };

  @override
  final Iterable<Type> types = const <Type>[RecommendationType];
  @override
  final String wireName = 'RecommendationType';

  @override
  Object serialize(Serializers serializers, RecommendationType object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  RecommendationType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      RecommendationType.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
