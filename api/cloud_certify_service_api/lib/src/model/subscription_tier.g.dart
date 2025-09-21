// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_tier.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SubscriptionTier _$free = const SubscriptionTier._('free');
const SubscriptionTier _$basic = const SubscriptionTier._('basic');
const SubscriptionTier _$premium = const SubscriptionTier._('premium');
const SubscriptionTier _$enterprise = const SubscriptionTier._('enterprise');

SubscriptionTier _$valueOf(String name) {
  switch (name) {
    case 'free':
      return _$free;
    case 'basic':
      return _$basic;
    case 'premium':
      return _$premium;
    case 'enterprise':
      return _$enterprise;
    default:
      return _$enterprise;
  }
}

final BuiltSet<SubscriptionTier> _$values =
    new BuiltSet<SubscriptionTier>(const <SubscriptionTier>[
  _$free,
  _$basic,
  _$premium,
  _$enterprise,
]);

class _$SubscriptionTierMeta {
  const _$SubscriptionTierMeta();
  SubscriptionTier get free => _$free;
  SubscriptionTier get basic => _$basic;
  SubscriptionTier get premium => _$premium;
  SubscriptionTier get enterprise => _$enterprise;
  SubscriptionTier valueOf(String name) => _$valueOf(name);
  BuiltSet<SubscriptionTier> get values => _$values;
}

abstract class _$SubscriptionTierMixin {
  // ignore: non_constant_identifier_names
  _$SubscriptionTierMeta get SubscriptionTier => const _$SubscriptionTierMeta();
}

Serializer<SubscriptionTier> _$subscriptionTierSerializer =
    new _$SubscriptionTierSerializer();

class _$SubscriptionTierSerializer
    implements PrimitiveSerializer<SubscriptionTier> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'free': 'free',
    'basic': 'basic',
    'premium': 'premium',
    'enterprise': 'enterprise',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'free': 'free',
    'basic': 'basic',
    'premium': 'premium',
    'enterprise': 'enterprise',
  };

  @override
  final Iterable<Type> types = const <Type>[SubscriptionTier];
  @override
  final String wireName = 'SubscriptionTier';

  @override
  Object serialize(Serializers serializers, SubscriptionTier object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SubscriptionTier deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SubscriptionTier.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
