// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'start_test_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StartTestRequest extends StartTestRequest {
  @override
  final TestMode mode;

  factory _$StartTestRequest(
          [void Function(StartTestRequestBuilder)? updates]) =>
      (new StartTestRequestBuilder()..update(updates))._build();

  _$StartTestRequest._({required this.mode}) : super._() {
    BuiltValueNullFieldError.checkNotNull(mode, r'StartTestRequest', 'mode');
  }

  @override
  StartTestRequest rebuild(void Function(StartTestRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StartTestRequestBuilder toBuilder() =>
      new StartTestRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StartTestRequest && mode == other.mode;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, mode.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StartTestRequest')..add('mode', mode))
        .toString();
  }
}

class StartTestRequestBuilder
    implements Builder<StartTestRequest, StartTestRequestBuilder> {
  _$StartTestRequest? _$v;

  TestMode? _mode;
  TestMode? get mode => _$this._mode;
  set mode(TestMode? mode) => _$this._mode = mode;

  StartTestRequestBuilder() {
    StartTestRequest._defaults(this);
  }

  StartTestRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _mode = $v.mode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StartTestRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StartTestRequest;
  }

  @override
  void update(void Function(StartTestRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StartTestRequest build() => _build();

  _$StartTestRequest _build() {
    final _$result = _$v ??
        new _$StartTestRequest._(
          mode: BuiltValueNullFieldError.checkNotNull(
              mode, r'StartTestRequest', 'mode'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
