// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_create.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserCreate extends UserCreate {
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String email;
  @override
  final CertificationType certificationTarget;
  @override
  final String password;

  factory _$UserCreate([void Function(UserCreateBuilder)? updates]) =>
      (new UserCreateBuilder()..update(updates))._build();

  _$UserCreate._(
      {required this.firstName,
      required this.lastName,
      required this.email,
      required this.certificationTarget,
      required this.password})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firstName, r'UserCreate', 'firstName');
    BuiltValueNullFieldError.checkNotNull(lastName, r'UserCreate', 'lastName');
    BuiltValueNullFieldError.checkNotNull(email, r'UserCreate', 'email');
    BuiltValueNullFieldError.checkNotNull(
        certificationTarget, r'UserCreate', 'certificationTarget');
    BuiltValueNullFieldError.checkNotNull(password, r'UserCreate', 'password');
  }

  @override
  UserCreate rebuild(void Function(UserCreateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserCreateBuilder toBuilder() => new UserCreateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserCreate &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        email == other.email &&
        certificationTarget == other.certificationTarget &&
        password == other.password;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, certificationTarget.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserCreate')
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('email', email)
          ..add('certificationTarget', certificationTarget)
          ..add('password', password))
        .toString();
  }
}

class UserCreateBuilder implements Builder<UserCreate, UserCreateBuilder> {
  _$UserCreate? _$v;

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

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  UserCreateBuilder() {
    UserCreate._defaults(this);
  }

  UserCreateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _email = $v.email;
      _certificationTarget = $v.certificationTarget;
      _password = $v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserCreate other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserCreate;
  }

  @override
  void update(void Function(UserCreateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserCreate build() => _build();

  _$UserCreate _build() {
    final _$result = _$v ??
        new _$UserCreate._(
          firstName: BuiltValueNullFieldError.checkNotNull(
              firstName, r'UserCreate', 'firstName'),
          lastName: BuiltValueNullFieldError.checkNotNull(
              lastName, r'UserCreate', 'lastName'),
          email: BuiltValueNullFieldError.checkNotNull(
              email, r'UserCreate', 'email'),
          certificationTarget: BuiltValueNullFieldError.checkNotNull(
              certificationTarget, r'UserCreate', 'certificationTarget'),
          password: BuiltValueNullFieldError.checkNotNull(
              password, r'UserCreate', 'password'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
