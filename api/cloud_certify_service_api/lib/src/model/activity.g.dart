// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Activity extends Activity {
  @override
  final String activity;
  @override
  final String? id;
  @override
  final int? timestamp;
  @override
  final BuiltList<JsonObject>? metadata;

  factory _$Activity([void Function(ActivityBuilder)? updates]) =>
      (new ActivityBuilder()..update(updates))._build();

  _$Activity._({required this.activity, this.id, this.timestamp, this.metadata})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(activity, r'Activity', 'activity');
  }

  @override
  Activity rebuild(void Function(ActivityBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ActivityBuilder toBuilder() => new ActivityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Activity &&
        activity == other.activity &&
        id == other.id &&
        timestamp == other.timestamp &&
        metadata == other.metadata;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, activity.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, timestamp.hashCode);
    _$hash = $jc(_$hash, metadata.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Activity')
          ..add('activity', activity)
          ..add('id', id)
          ..add('timestamp', timestamp)
          ..add('metadata', metadata))
        .toString();
  }
}

class ActivityBuilder implements Builder<Activity, ActivityBuilder> {
  _$Activity? _$v;

  String? _activity;
  String? get activity => _$this._activity;
  set activity(String? activity) => _$this._activity = activity;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  int? _timestamp;
  int? get timestamp => _$this._timestamp;
  set timestamp(int? timestamp) => _$this._timestamp = timestamp;

  ListBuilder<JsonObject>? _metadata;
  ListBuilder<JsonObject> get metadata =>
      _$this._metadata ??= new ListBuilder<JsonObject>();
  set metadata(ListBuilder<JsonObject>? metadata) =>
      _$this._metadata = metadata;

  ActivityBuilder() {
    Activity._defaults(this);
  }

  ActivityBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _activity = $v.activity;
      _id = $v.id;
      _timestamp = $v.timestamp;
      _metadata = $v.metadata?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Activity other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Activity;
  }

  @override
  void update(void Function(ActivityBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Activity build() => _build();

  _$Activity _build() {
    _$Activity _$result;
    try {
      _$result = _$v ??
          new _$Activity._(
            activity: BuiltValueNullFieldError.checkNotNull(
                activity, r'Activity', 'activity'),
            id: id,
            timestamp: timestamp,
            metadata: _metadata?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'metadata';
        _metadata?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Activity', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
