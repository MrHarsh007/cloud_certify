// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'view_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ViewResponse extends ViewResponse {
  @override
  final String resourceId;
  @override
  final int views;

  factory _$ViewResponse([void Function(ViewResponseBuilder)? updates]) =>
      (new ViewResponseBuilder()..update(updates))._build();

  _$ViewResponse._({required this.resourceId, required this.views})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        resourceId, r'ViewResponse', 'resourceId');
    BuiltValueNullFieldError.checkNotNull(views, r'ViewResponse', 'views');
  }

  @override
  ViewResponse rebuild(void Function(ViewResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ViewResponseBuilder toBuilder() => new ViewResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ViewResponse &&
        resourceId == other.resourceId &&
        views == other.views;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, resourceId.hashCode);
    _$hash = $jc(_$hash, views.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ViewResponse')
          ..add('resourceId', resourceId)
          ..add('views', views))
        .toString();
  }
}

class ViewResponseBuilder
    implements Builder<ViewResponse, ViewResponseBuilder> {
  _$ViewResponse? _$v;

  String? _resourceId;
  String? get resourceId => _$this._resourceId;
  set resourceId(String? resourceId) => _$this._resourceId = resourceId;

  int? _views;
  int? get views => _$this._views;
  set views(int? views) => _$this._views = views;

  ViewResponseBuilder() {
    ViewResponse._defaults(this);
  }

  ViewResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _resourceId = $v.resourceId;
      _views = $v.views;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ViewResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ViewResponse;
  }

  @override
  void update(void Function(ViewResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ViewResponse build() => _build();

  _$ViewResponse _build() {
    final _$result = _$v ??
        new _$ViewResponse._(
          resourceId: BuiltValueNullFieldError.checkNotNull(
              resourceId, r'ViewResponse', 'resourceId'),
          views: BuiltValueNullFieldError.checkNotNull(
              views, r'ViewResponse', 'views'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
