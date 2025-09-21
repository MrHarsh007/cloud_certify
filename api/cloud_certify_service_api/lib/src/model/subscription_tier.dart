//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'subscription_tier.g.dart';

class SubscriptionTier extends EnumClass {
  /// An enumeration.
  @BuiltValueEnumConst(wireName: r'free')
  static const SubscriptionTier free = _$free;

  /// An enumeration.
  @BuiltValueEnumConst(wireName: r'basic')
  static const SubscriptionTier basic = _$basic;

  /// An enumeration.
  @BuiltValueEnumConst(wireName: r'premium')
  static const SubscriptionTier premium = _$premium;

  /// An enumeration.
  @BuiltValueEnumConst(wireName: r'enterprise', fallback: true)
  static const SubscriptionTier enterprise = _$enterprise;

  static Serializer<SubscriptionTier> get serializer =>
      _$subscriptionTierSerializer;

  const SubscriptionTier._(String name) : super(name);

  static BuiltSet<SubscriptionTier> get values => _$values;
  static SubscriptionTier valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class SubscriptionTierMixin = Object with _$SubscriptionTierMixin;
