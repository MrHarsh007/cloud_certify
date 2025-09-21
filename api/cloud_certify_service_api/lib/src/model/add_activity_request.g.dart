// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_activity_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AddActivityRequest extends AddActivityRequest {
  @override
  final String activity;
  @override
  final BuiltList<JsonObject>? metadata;

  factory _$AddActivityRequest(
          [void Function(AddActivityRequestBuilder)? updates]) =>
      (new AddActivityRequestBuilder()..update(updates))._build();

  _$AddActivityRequest._({required this.activity, this.metadata}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        activity, r'AddActivityRequest', 'activity');
  }

  @override
  AddActivityRequest rebuild(
          void Function(AddActivityRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddActivityRequestBuilder toBuilder() =>
      new AddActivityRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddActivityRequest &&
        activity == other.activity &&
        metadata == other.metadata;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, activity.hashCode);
    _$hash = $jc(_$hash, metadata.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AddActivityRequest')
          ..add('activity', activity)
          ..add('metadata', metadata))
        .toString();
  }
}

class AddActivityRequestBuilder
    implements Builder<AddActivityRequest, AddActivityRequestBuilder> {
  _$AddActivityRequest? _$v;

  String? _activity;
  String? get activity => _$this._activity;
  set activity(String? activity) => _$this._activity = activity;

  ListBuilder<JsonObject>? _metadata;
  ListBuilder<JsonObject> get metadata =>
      _$this._metadata ??= new ListBuilder<JsonObject>();
  set metadata(ListBuilder<JsonObject>? metadata) =>
      _$this._metadata = metadata;

  AddActivityRequestBuilder() {
    AddActivityRequest._defaults(this);
  }

  AddActivityRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _activity = $v.activity;
      _metadata = $v.metadata?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddActivityRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AddActivityRequest;
  }

  @override
  void update(void Function(AddActivityRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AddActivityRequest build() => _build();

  _$AddActivityRequest _build() {
    _$AddActivityRequest _$result;
    try {
      _$result = _$v ??
          new _$AddActivityRequest._(
            activity: BuiltValueNullFieldError.checkNotNull(
                activity, r'AddActivityRequest', 'activity'),
            metadata: _metadata?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'metadata';
        _metadata?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AddActivityRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
