// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_subscription.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserSubscription extends UserSubscription {
  @override
  final int startDate;
  @override
  final bool isActive;
  @override
  final bool autoRenew;
  @override
  final SubscriptionTier? tier;
  @override
  final int? endDate;
  @override
  final String? paymentMethodId;

  factory _$UserSubscription(
          [void Function(UserSubscriptionBuilder)? updates]) =>
      (new UserSubscriptionBuilder()..update(updates))._build();

  _$UserSubscription._(
      {required this.startDate,
      required this.isActive,
      required this.autoRenew,
      this.tier,
      this.endDate,
      this.paymentMethodId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        startDate, r'UserSubscription', 'startDate');
    BuiltValueNullFieldError.checkNotNull(
        isActive, r'UserSubscription', 'isActive');
    BuiltValueNullFieldError.checkNotNull(
        autoRenew, r'UserSubscription', 'autoRenew');
  }

  @override
  UserSubscription rebuild(void Function(UserSubscriptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserSubscriptionBuilder toBuilder() =>
      new UserSubscriptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserSubscription &&
        startDate == other.startDate &&
        isActive == other.isActive &&
        autoRenew == other.autoRenew &&
        tier == other.tier &&
        endDate == other.endDate &&
        paymentMethodId == other.paymentMethodId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, startDate.hashCode);
    _$hash = $jc(_$hash, isActive.hashCode);
    _$hash = $jc(_$hash, autoRenew.hashCode);
    _$hash = $jc(_$hash, tier.hashCode);
    _$hash = $jc(_$hash, endDate.hashCode);
    _$hash = $jc(_$hash, paymentMethodId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserSubscription')
          ..add('startDate', startDate)
          ..add('isActive', isActive)
          ..add('autoRenew', autoRenew)
          ..add('tier', tier)
          ..add('endDate', endDate)
          ..add('paymentMethodId', paymentMethodId))
        .toString();
  }
}

class UserSubscriptionBuilder
    implements Builder<UserSubscription, UserSubscriptionBuilder> {
  _$UserSubscription? _$v;

  int? _startDate;
  int? get startDate => _$this._startDate;
  set startDate(int? startDate) => _$this._startDate = startDate;

  bool? _isActive;
  bool? get isActive => _$this._isActive;
  set isActive(bool? isActive) => _$this._isActive = isActive;

  bool? _autoRenew;
  bool? get autoRenew => _$this._autoRenew;
  set autoRenew(bool? autoRenew) => _$this._autoRenew = autoRenew;

  SubscriptionTier? _tier;
  SubscriptionTier? get tier => _$this._tier;
  set tier(SubscriptionTier? tier) => _$this._tier = tier;

  int? _endDate;
  int? get endDate => _$this._endDate;
  set endDate(int? endDate) => _$this._endDate = endDate;

  String? _paymentMethodId;
  String? get paymentMethodId => _$this._paymentMethodId;
  set paymentMethodId(String? paymentMethodId) =>
      _$this._paymentMethodId = paymentMethodId;

  UserSubscriptionBuilder() {
    UserSubscription._defaults(this);
  }

  UserSubscriptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _startDate = $v.startDate;
      _isActive = $v.isActive;
      _autoRenew = $v.autoRenew;
      _tier = $v.tier;
      _endDate = $v.endDate;
      _paymentMethodId = $v.paymentMethodId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserSubscription other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserSubscription;
  }

  @override
  void update(void Function(UserSubscriptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserSubscription build() => _build();

  _$UserSubscription _build() {
    final _$result = _$v ??
        new _$UserSubscription._(
          startDate: BuiltValueNullFieldError.checkNotNull(
              startDate, r'UserSubscription', 'startDate'),
          isActive: BuiltValueNullFieldError.checkNotNull(
              isActive, r'UserSubscription', 'isActive'),
          autoRenew: BuiltValueNullFieldError.checkNotNull(
              autoRenew, r'UserSubscription', 'autoRenew'),
          tier: tier,
          endDate: endDate,
          paymentMethodId: paymentMethodId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
