// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'str_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StrResponse extends StrResponse {
  @override
  final String response;

  factory _$StrResponse([void Function(StrResponseBuilder)? updates]) =>
      (new StrResponseBuilder()..update(updates))._build();

  _$StrResponse._({required this.response}) : super._() {
    BuiltValueNullFieldError.checkNotNull(response, r'StrResponse', 'response');
  }

  @override
  StrResponse rebuild(void Function(StrResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StrResponseBuilder toBuilder() => new StrResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StrResponse && response == other.response;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, response.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StrResponse')
          ..add('response', response))
        .toString();
  }
}

class StrResponseBuilder implements Builder<StrResponse, StrResponseBuilder> {
  _$StrResponse? _$v;

  String? _response;
  String? get response => _$this._response;
  set response(String? response) => _$this._response = response;

  StrResponseBuilder() {
    StrResponse._defaults(this);
  }

  StrResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _response = $v.response;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StrResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StrResponse;
  }

  @override
  void update(void Function(StrResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StrResponse build() => _build();

  _$StrResponse _build() {
    final _$result = _$v ??
        new _$StrResponse._(
          response: BuiltValueNullFieldError.checkNotNull(
              response, r'StrResponse', 'response'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
