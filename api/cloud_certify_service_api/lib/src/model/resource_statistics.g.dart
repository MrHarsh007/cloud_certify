// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resource_statistics.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ResourceStatistics extends ResourceStatistics {
  @override
  final int totalResources;
  @override
  final int totalLikes;
  @override
  final int totalViews;

  factory _$ResourceStatistics(
          [void Function(ResourceStatisticsBuilder)? updates]) =>
      (new ResourceStatisticsBuilder()..update(updates))._build();

  _$ResourceStatistics._(
      {required this.totalResources,
      required this.totalLikes,
      required this.totalViews})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        totalResources, r'ResourceStatistics', 'totalResources');
    BuiltValueNullFieldError.checkNotNull(
        totalLikes, r'ResourceStatistics', 'totalLikes');
    BuiltValueNullFieldError.checkNotNull(
        totalViews, r'ResourceStatistics', 'totalViews');
  }

  @override
  ResourceStatistics rebuild(
          void Function(ResourceStatisticsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResourceStatisticsBuilder toBuilder() =>
      new ResourceStatisticsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResourceStatistics &&
        totalResources == other.totalResources &&
        totalLikes == other.totalLikes &&
        totalViews == other.totalViews;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, totalResources.hashCode);
    _$hash = $jc(_$hash, totalLikes.hashCode);
    _$hash = $jc(_$hash, totalViews.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ResourceStatistics')
          ..add('totalResources', totalResources)
          ..add('totalLikes', totalLikes)
          ..add('totalViews', totalViews))
        .toString();
  }
}

class ResourceStatisticsBuilder
    implements Builder<ResourceStatistics, ResourceStatisticsBuilder> {
  _$ResourceStatistics? _$v;

  int? _totalResources;
  int? get totalResources => _$this._totalResources;
  set totalResources(int? totalResources) =>
      _$this._totalResources = totalResources;

  int? _totalLikes;
  int? get totalLikes => _$this._totalLikes;
  set totalLikes(int? totalLikes) => _$this._totalLikes = totalLikes;

  int? _totalViews;
  int? get totalViews => _$this._totalViews;
  set totalViews(int? totalViews) => _$this._totalViews = totalViews;

  ResourceStatisticsBuilder() {
    ResourceStatistics._defaults(this);
  }

  ResourceStatisticsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _totalResources = $v.totalResources;
      _totalLikes = $v.totalLikes;
      _totalViews = $v.totalViews;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResourceStatistics other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ResourceStatistics;
  }

  @override
  void update(void Function(ResourceStatisticsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ResourceStatistics build() => _build();

  _$ResourceStatistics _build() {
    final _$result = _$v ??
        new _$ResourceStatistics._(
          totalResources: BuiltValueNullFieldError.checkNotNull(
              totalResources, r'ResourceStatistics', 'totalResources'),
          totalLikes: BuiltValueNullFieldError.checkNotNull(
              totalLikes, r'ResourceStatistics', 'totalLikes'),
          totalViews: BuiltValueNullFieldError.checkNotNull(
              totalViews, r'ResourceStatistics', 'totalViews'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
