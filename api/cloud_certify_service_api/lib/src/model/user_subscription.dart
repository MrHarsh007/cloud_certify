//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:cloud_certify_service_api/src/model/subscription_tier.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_subscription.g.dart';

/// UserSubscription
///
/// Properties:
/// * [startDate]
/// * [isActive]
/// * [autoRenew]
/// * [tier]
/// * [endDate]
/// * [paymentMethodId]
@BuiltValue()
abstract class UserSubscription
    implements Built<UserSubscription, UserSubscriptionBuilder> {
  @BuiltValueField(wireName: r'start_date')
  int get startDate;

  @BuiltValueField(wireName: r'is_active')
  bool get isActive;

  @BuiltValueField(wireName: r'auto_renew')
  bool get autoRenew;

  @BuiltValueField(wireName: r'tier')
  SubscriptionTier? get tier;
  // enum tierEnum {  free,  basic,  premium,  enterprise,  };

  @BuiltValueField(wireName: r'end_date')
  int? get endDate;

  @BuiltValueField(wireName: r'payment_method_id')
  String? get paymentMethodId;

  UserSubscription._();

  factory UserSubscription([void updates(UserSubscriptionBuilder b)]) =
      _$UserSubscription;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserSubscriptionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserSubscription> get serializer =>
      _$UserSubscriptionSerializer();
}

class _$UserSubscriptionSerializer
    implements PrimitiveSerializer<UserSubscription> {
  @override
  final Iterable<Type> types = const [UserSubscription, _$UserSubscription];

  @override
  final String wireName = r'UserSubscription';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserSubscription object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'start_date';
    yield serializers.serialize(
      object.startDate,
      specifiedType: const FullType(int),
    );
    yield r'is_active';
    yield serializers.serialize(
      object.isActive,
      specifiedType: const FullType(bool),
    );
    yield r'auto_renew';
    yield serializers.serialize(
      object.autoRenew,
      specifiedType: const FullType(bool),
    );
    if (object.tier != null) {
      yield r'tier';
      yield serializers.serialize(
        object.tier,
        specifiedType: const FullType(SubscriptionTier),
      );
    }
    if (object.endDate != null) {
      yield r'end_date';
      yield serializers.serialize(
        object.endDate,
        specifiedType: const FullType(int),
      );
    }
    if (object.paymentMethodId != null) {
      yield r'payment_method_id';
      yield serializers.serialize(
        object.paymentMethodId,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UserSubscription object, {
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
    required UserSubscriptionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'start_date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.startDate = valueDes;
          break;
        case r'is_active':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isActive = valueDes;
          break;
        case r'auto_renew':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.autoRenew = valueDes;
          break;
        case r'tier':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SubscriptionTier),
          ) as SubscriptionTier;
          result.tier = valueDes;
          break;
        case r'end_date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.endDate = valueDes;
          break;
        case r'payment_method_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.paymentMethodId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UserSubscription deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserSubscriptionBuilder();
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
