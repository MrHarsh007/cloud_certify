// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserResponse extends UserResponse {
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String email;
  @override
  final CertificationType certificationTarget;
  @override
  final String uid;
  @override
  final String fullName;
  @override
  final String searchName;
  @override
  final String uuid;
  @override
  final int createdAt;
  @override
  final int updatedAt;
  @override
  final bool isActive;
  @override
  final bool isVerified;
  @override
  final UserActivity activity;
  @override
  final UserPreferences preferences;
  @override
  final UserSubscription subscription;
  @override
  final BuiltList<String> completedModules;
  @override
  final BuiltList<String> savedResources;
  @override
  final String? photoUrl;
  @override
  final String? bio;

  factory _$UserResponse([void Function(UserResponseBuilder)? updates]) =>
      (new UserResponseBuilder()..update(updates))._build();

  _$UserResponse._(
      {required this.firstName,
      required this.lastName,
      required this.email,
      required this.certificationTarget,
      required this.uid,
      required this.fullName,
      required this.searchName,
      required this.uuid,
      required this.createdAt,
      required this.updatedAt,
      required this.isActive,
      required this.isVerified,
      required this.activity,
      required this.preferences,
      required this.subscription,
      required this.completedModules,
      required this.savedResources,
      this.photoUrl,
      this.bio})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firstName, r'UserResponse', 'firstName');
    BuiltValueNullFieldError.checkNotNull(
        lastName, r'UserResponse', 'lastName');
    BuiltValueNullFieldError.checkNotNull(email, r'UserResponse', 'email');
    BuiltValueNullFieldError.checkNotNull(
        certificationTarget, r'UserResponse', 'certificationTarget');
    BuiltValueNullFieldError.checkNotNull(uid, r'UserResponse', 'uid');
    BuiltValueNullFieldError.checkNotNull(
        fullName, r'UserResponse', 'fullName');
    BuiltValueNullFieldError.checkNotNull(
        searchName, r'UserResponse', 'searchName');
    BuiltValueNullFieldError.checkNotNull(uuid, r'UserResponse', 'uuid');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, r'UserResponse', 'createdAt');
    BuiltValueNullFieldError.checkNotNull(
        updatedAt, r'UserResponse', 'updatedAt');
    BuiltValueNullFieldError.checkNotNull(
        isActive, r'UserResponse', 'isActive');
    BuiltValueNullFieldError.checkNotNull(
        isVerified, r'UserResponse', 'isVerified');
    BuiltValueNullFieldError.checkNotNull(
        activity, r'UserResponse', 'activity');
    BuiltValueNullFieldError.checkNotNull(
        preferences, r'UserResponse', 'preferences');
    BuiltValueNullFieldError.checkNotNull(
        subscription, r'UserResponse', 'subscription');
    BuiltValueNullFieldError.checkNotNull(
        completedModules, r'UserResponse', 'completedModules');
    BuiltValueNullFieldError.checkNotNull(
        savedResources, r'UserResponse', 'savedResources');
  }

  @override
  UserResponse rebuild(void Function(UserResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserResponseBuilder toBuilder() => new UserResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserResponse &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        email == other.email &&
        certificationTarget == other.certificationTarget &&
        uid == other.uid &&
        fullName == other.fullName &&
        searchName == other.searchName &&
        uuid == other.uuid &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        isActive == other.isActive &&
        isVerified == other.isVerified &&
        activity == other.activity &&
        preferences == other.preferences &&
        subscription == other.subscription &&
        completedModules == other.completedModules &&
        savedResources == other.savedResources &&
        photoUrl == other.photoUrl &&
        bio == other.bio;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, certificationTarget.hashCode);
    _$hash = $jc(_$hash, uid.hashCode);
    _$hash = $jc(_$hash, fullName.hashCode);
    _$hash = $jc(_$hash, searchName.hashCode);
    _$hash = $jc(_$hash, uuid.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, isActive.hashCode);
    _$hash = $jc(_$hash, isVerified.hashCode);
    _$hash = $jc(_$hash, activity.hashCode);
    _$hash = $jc(_$hash, preferences.hashCode);
    _$hash = $jc(_$hash, subscription.hashCode);
    _$hash = $jc(_$hash, completedModules.hashCode);
    _$hash = $jc(_$hash, savedResources.hashCode);
    _$hash = $jc(_$hash, photoUrl.hashCode);
    _$hash = $jc(_$hash, bio.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserResponse')
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('email', email)
          ..add('certificationTarget', certificationTarget)
          ..add('uid', uid)
          ..add('fullName', fullName)
          ..add('searchName', searchName)
          ..add('uuid', uuid)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('isActive', isActive)
          ..add('isVerified', isVerified)
          ..add('activity', activity)
          ..add('preferences', preferences)
          ..add('subscription', subscription)
          ..add('completedModules', completedModules)
          ..add('savedResources', savedResources)
          ..add('photoUrl', photoUrl)
          ..add('bio', bio))
        .toString();
  }
}

class UserResponseBuilder
    implements Builder<UserResponse, UserResponseBuilder> {
  _$UserResponse? _$v;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  CertificationType? _certificationTarget;
  CertificationType? get certificationTarget => _$this._certificationTarget;
  set certificationTarget(CertificationType? certificationTarget) =>
      _$this._certificationTarget = certificationTarget;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  String? _fullName;
  String? get fullName => _$this._fullName;
  set fullName(String? fullName) => _$this._fullName = fullName;

  String? _searchName;
  String? get searchName => _$this._searchName;
  set searchName(String? searchName) => _$this._searchName = searchName;

  String? _uuid;
  String? get uuid => _$this._uuid;
  set uuid(String? uuid) => _$this._uuid = uuid;

  int? _createdAt;
  int? get createdAt => _$this._createdAt;
  set createdAt(int? createdAt) => _$this._createdAt = createdAt;

  int? _updatedAt;
  int? get updatedAt => _$this._updatedAt;
  set updatedAt(int? updatedAt) => _$this._updatedAt = updatedAt;

  bool? _isActive;
  bool? get isActive => _$this._isActive;
  set isActive(bool? isActive) => _$this._isActive = isActive;

  bool? _isVerified;
  bool? get isVerified => _$this._isVerified;
  set isVerified(bool? isVerified) => _$this._isVerified = isVerified;

  UserActivityBuilder? _activity;
  UserActivityBuilder get activity =>
      _$this._activity ??= new UserActivityBuilder();
  set activity(UserActivityBuilder? activity) => _$this._activity = activity;

  UserPreferencesBuilder? _preferences;
  UserPreferencesBuilder get preferences =>
      _$this._preferences ??= new UserPreferencesBuilder();
  set preferences(UserPreferencesBuilder? preferences) =>
      _$this._preferences = preferences;

  UserSubscriptionBuilder? _subscription;
  UserSubscriptionBuilder get subscription =>
      _$this._subscription ??= new UserSubscriptionBuilder();
  set subscription(UserSubscriptionBuilder? subscription) =>
      _$this._subscription = subscription;

  ListBuilder<String>? _completedModules;
  ListBuilder<String> get completedModules =>
      _$this._completedModules ??= new ListBuilder<String>();
  set completedModules(ListBuilder<String>? completedModules) =>
      _$this._completedModules = completedModules;

  ListBuilder<String>? _savedResources;
  ListBuilder<String> get savedResources =>
      _$this._savedResources ??= new ListBuilder<String>();
  set savedResources(ListBuilder<String>? savedResources) =>
      _$this._savedResources = savedResources;

  String? _photoUrl;
  String? get photoUrl => _$this._photoUrl;
  set photoUrl(String? photoUrl) => _$this._photoUrl = photoUrl;

  String? _bio;
  String? get bio => _$this._bio;
  set bio(String? bio) => _$this._bio = bio;

  UserResponseBuilder() {
    UserResponse._defaults(this);
  }

  UserResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _email = $v.email;
      _certificationTarget = $v.certificationTarget;
      _uid = $v.uid;
      _fullName = $v.fullName;
      _searchName = $v.searchName;
      _uuid = $v.uuid;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _isActive = $v.isActive;
      _isVerified = $v.isVerified;
      _activity = $v.activity.toBuilder();
      _preferences = $v.preferences.toBuilder();
      _subscription = $v.subscription.toBuilder();
      _completedModules = $v.completedModules.toBuilder();
      _savedResources = $v.savedResources.toBuilder();
      _photoUrl = $v.photoUrl;
      _bio = $v.bio;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserResponse;
  }

  @override
  void update(void Function(UserResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserResponse build() => _build();

  _$UserResponse _build() {
    _$UserResponse _$result;
    try {
      _$result = _$v ??
          new _$UserResponse._(
            firstName: BuiltValueNullFieldError.checkNotNull(
                firstName, r'UserResponse', 'firstName'),
            lastName: BuiltValueNullFieldError.checkNotNull(
                lastName, r'UserResponse', 'lastName'),
            email: BuiltValueNullFieldError.checkNotNull(
                email, r'UserResponse', 'email'),
            certificationTarget: BuiltValueNullFieldError.checkNotNull(
                certificationTarget, r'UserResponse', 'certificationTarget'),
            uid: BuiltValueNullFieldError.checkNotNull(
                uid, r'UserResponse', 'uid'),
            fullName: BuiltValueNullFieldError.checkNotNull(
                fullName, r'UserResponse', 'fullName'),
            searchName: BuiltValueNullFieldError.checkNotNull(
                searchName, r'UserResponse', 'searchName'),
            uuid: BuiltValueNullFieldError.checkNotNull(
                uuid, r'UserResponse', 'uuid'),
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'UserResponse', 'createdAt'),
            updatedAt: BuiltValueNullFieldError.checkNotNull(
                updatedAt, r'UserResponse', 'updatedAt'),
            isActive: BuiltValueNullFieldError.checkNotNull(
                isActive, r'UserResponse', 'isActive'),
            isVerified: BuiltValueNullFieldError.checkNotNull(
                isVerified, r'UserResponse', 'isVerified'),
            activity: activity.build(),
            preferences: preferences.build(),
            subscription: subscription.build(),
            completedModules: completedModules.build(),
            savedResources: savedResources.build(),
            photoUrl: photoUrl,
            bio: bio,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'activity';
        activity.build();
        _$failedField = 'preferences';
        preferences.build();
        _$failedField = 'subscription';
        subscription.build();
        _$failedField = 'completedModules';
        completedModules.build();
        _$failedField = 'savedResources';
        savedResources.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UserResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
