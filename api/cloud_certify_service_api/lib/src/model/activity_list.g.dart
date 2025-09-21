// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ActivityList extends ActivityList {
  @override
  final BuiltList<Activity> activities;

  factory _$ActivityList([void Function(ActivityListBuilder)? updates]) =>
      (new ActivityListBuilder()..update(updates))._build();

  _$ActivityList._({required this.activities}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        activities, r'ActivityList', 'activities');
  }

  @override
  ActivityList rebuild(void Function(ActivityListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ActivityListBuilder toBuilder() => new ActivityListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ActivityList && activities == other.activities;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, activities.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ActivityList')
          ..add('activities', activities))
        .toString();
  }
}

class ActivityListBuilder
    implements Builder<ActivityList, ActivityListBuilder> {
  _$ActivityList? _$v;

  ListBuilder<Activity>? _activities;
  ListBuilder<Activity> get activities =>
      _$this._activities ??= new ListBuilder<Activity>();
  set activities(ListBuilder<Activity>? activities) =>
      _$this._activities = activities;

  ActivityListBuilder() {
    ActivityList._defaults(this);
  }

  ActivityListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _activities = $v.activities.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ActivityList other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ActivityList;
  }

  @override
  void update(void Function(ActivityListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ActivityList build() => _build();

  _$ActivityList _build() {
    _$ActivityList _$result;
    try {
      _$result = _$v ??
          new _$ActivityList._(
            activities: activities.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'activities';
        activities.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ActivityList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
