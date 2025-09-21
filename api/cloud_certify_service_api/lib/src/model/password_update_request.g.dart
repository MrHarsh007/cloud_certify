// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'password_update_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PasswordUpdateRequest extends PasswordUpdateRequest {
  @override
  final String newPassword;

  factory _$PasswordUpdateRequest(
          [void Function(PasswordUpdateRequestBuilder)? updates]) =>
      (new PasswordUpdateRequestBuilder()..update(updates))._build();

  _$PasswordUpdateRequest._({required this.newPassword}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        newPassword, r'PasswordUpdateRequest', 'newPassword');
  }

  @override
  PasswordUpdateRequest rebuild(
          void Function(PasswordUpdateRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PasswordUpdateRequestBuilder toBuilder() =>
      new PasswordUpdateRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PasswordUpdateRequest && newPassword == other.newPassword;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, newPassword.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PasswordUpdateRequest')
          ..add('newPassword', newPassword))
        .toString();
  }
}

class PasswordUpdateRequestBuilder
    implements Builder<PasswordUpdateRequest, PasswordUpdateRequestBuilder> {
  _$PasswordUpdateRequest? _$v;

  String? _newPassword;
  String? get newPassword => _$this._newPassword;
  set newPassword(String? newPassword) => _$this._newPassword = newPassword;

  PasswordUpdateRequestBuilder() {
    PasswordUpdateRequest._defaults(this);
  }

  PasswordUpdateRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _newPassword = $v.newPassword;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PasswordUpdateRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PasswordUpdateRequest;
  }

  @override
  void update(void Function(PasswordUpdateRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PasswordUpdateRequest build() => _build();

  _$PasswordUpdateRequest _build() {
    final _$result = _$v ??
        new _$PasswordUpdateRequest._(
          newPassword: BuiltValueNullFieldError.checkNotNull(
              newPassword, r'PasswordUpdateRequest', 'newPassword'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
