// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_user_exists_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CheckUserExistsRequest extends CheckUserExistsRequest {
  @override
  final String email;

  factory _$CheckUserExistsRequest(
          [void Function(CheckUserExistsRequestBuilder)? updates]) =>
      (new CheckUserExistsRequestBuilder()..update(updates))._build();

  _$CheckUserExistsRequest._({required this.email}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        email, r'CheckUserExistsRequest', 'email');
  }

  @override
  CheckUserExistsRequest rebuild(
          void Function(CheckUserExistsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CheckUserExistsRequestBuilder toBuilder() =>
      new CheckUserExistsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CheckUserExistsRequest && email == other.email;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CheckUserExistsRequest')
          ..add('email', email))
        .toString();
  }
}

class CheckUserExistsRequestBuilder
    implements Builder<CheckUserExistsRequest, CheckUserExistsRequestBuilder> {
  _$CheckUserExistsRequest? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  CheckUserExistsRequestBuilder() {
    CheckUserExistsRequest._defaults(this);
  }

  CheckUserExistsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CheckUserExistsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CheckUserExistsRequest;
  }

  @override
  void update(void Function(CheckUserExistsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CheckUserExistsRequest build() => _build();

  _$CheckUserExistsRequest _build() {
    final _$result = _$v ??
        new _$CheckUserExistsRequest._(
          email: BuiltValueNullFieldError.checkNotNull(
              email, r'CheckUserExistsRequest', 'email'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
