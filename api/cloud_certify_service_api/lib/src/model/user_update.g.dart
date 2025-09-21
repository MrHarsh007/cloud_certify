// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_update.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserUpdate extends UserUpdate {
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final CertificationType? certificationTarget;
  @override
  final String? bio;
  @override
  final String? photoUrl;

  factory _$UserUpdate([void Function(UserUpdateBuilder)? updates]) =>
      (new UserUpdateBuilder()..update(updates))._build();

  _$UserUpdate._(
      {this.firstName,
      this.lastName,
      this.certificationTarget,
      this.bio,
      this.photoUrl})
      : super._();

  @override
  UserUpdate rebuild(void Function(UserUpdateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserUpdateBuilder toBuilder() => new UserUpdateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserUpdate &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        certificationTarget == other.certificationTarget &&
        bio == other.bio &&
        photoUrl == other.photoUrl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, certificationTarget.hashCode);
    _$hash = $jc(_$hash, bio.hashCode);
    _$hash = $jc(_$hash, photoUrl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserUpdate')
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('certificationTarget', certificationTarget)
          ..add('bio', bio)
          ..add('photoUrl', photoUrl))
        .toString();
  }
}

class UserUpdateBuilder implements Builder<UserUpdate, UserUpdateBuilder> {
  _$UserUpdate? _$v;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  CertificationType? _certificationTarget;
  CertificationType? get certificationTarget => _$this._certificationTarget;
  set certificationTarget(CertificationType? certificationTarget) =>
      _$this._certificationTarget = certificationTarget;

  String? _bio;
  String? get bio => _$this._bio;
  set bio(String? bio) => _$this._bio = bio;

  String? _photoUrl;
  String? get photoUrl => _$this._photoUrl;
  set photoUrl(String? photoUrl) => _$this._photoUrl = photoUrl;

  UserUpdateBuilder() {
    UserUpdate._defaults(this);
  }

  UserUpdateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _certificationTarget = $v.certificationTarget;
      _bio = $v.bio;
      _photoUrl = $v.photoUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserUpdate other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserUpdate;
  }

  @override
  void update(void Function(UserUpdateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserUpdate build() => _build();

  _$UserUpdate _build() {
    final _$result = _$v ??
        new _$UserUpdate._(
          firstName: firstName,
          lastName: lastName,
          certificationTarget: certificationTarget,
          bio: bio,
          photoUrl: photoUrl,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
