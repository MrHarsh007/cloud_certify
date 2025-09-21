// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resource_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ResourceList extends ResourceList {
  @override
  final BuiltList<Resource> resources;
  @override
  final ResourceStatistics statistics;
  @override
  final String? nextCursor;

  factory _$ResourceList([void Function(ResourceListBuilder)? updates]) =>
      (new ResourceListBuilder()..update(updates))._build();

  _$ResourceList._(
      {required this.resources, required this.statistics, this.nextCursor})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        resources, r'ResourceList', 'resources');
    BuiltValueNullFieldError.checkNotNull(
        statistics, r'ResourceList', 'statistics');
  }

  @override
  ResourceList rebuild(void Function(ResourceListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResourceListBuilder toBuilder() => new ResourceListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResourceList &&
        resources == other.resources &&
        statistics == other.statistics &&
        nextCursor == other.nextCursor;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, resources.hashCode);
    _$hash = $jc(_$hash, statistics.hashCode);
    _$hash = $jc(_$hash, nextCursor.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ResourceList')
          ..add('resources', resources)
          ..add('statistics', statistics)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class ResourceListBuilder
    implements Builder<ResourceList, ResourceListBuilder> {
  _$ResourceList? _$v;

  ListBuilder<Resource>? _resources;
  ListBuilder<Resource> get resources =>
      _$this._resources ??= new ListBuilder<Resource>();
  set resources(ListBuilder<Resource>? resources) =>
      _$this._resources = resources;

  ResourceStatisticsBuilder? _statistics;
  ResourceStatisticsBuilder get statistics =>
      _$this._statistics ??= new ResourceStatisticsBuilder();
  set statistics(ResourceStatisticsBuilder? statistics) =>
      _$this._statistics = statistics;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  ResourceListBuilder() {
    ResourceList._defaults(this);
  }

  ResourceListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _resources = $v.resources.toBuilder();
      _statistics = $v.statistics.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResourceList other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ResourceList;
  }

  @override
  void update(void Function(ResourceListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ResourceList build() => _build();

  _$ResourceList _build() {
    _$ResourceList _$result;
    try {
      _$result = _$v ??
          new _$ResourceList._(
            resources: resources.build(),
            statistics: statistics.build(),
            nextCursor: nextCursor,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'resources';
        resources.build();
        _$failedField = 'statistics';
        statistics.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ResourceList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
