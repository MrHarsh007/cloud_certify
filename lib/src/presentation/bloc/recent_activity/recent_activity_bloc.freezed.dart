// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recent_activity_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RecentActivityState {
  RequestState get state => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  ActivityList? get activities => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecentActivityStateCopyWith<RecentActivityState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecentActivityStateCopyWith<$Res> {
  factory $RecentActivityStateCopyWith(
          RecentActivityState value, $Res Function(RecentActivityState) then) =
      _$RecentActivityStateCopyWithImpl<$Res, RecentActivityState>;
  @useResult
  $Res call({RequestState state, String message, ActivityList? activities});
}

/// @nodoc
class _$RecentActivityStateCopyWithImpl<$Res, $Val extends RecentActivityState>
    implements $RecentActivityStateCopyWith<$Res> {
  _$RecentActivityStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? message = null,
    Object? activities = freezed,
  }) {
    return _then(_value.copyWith(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as RequestState,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      activities: freezed == activities
          ? _value.activities
          : activities // ignore: cast_nullable_to_non_nullable
              as ActivityList?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecentActivityStateImplCopyWith<$Res>
    implements $RecentActivityStateCopyWith<$Res> {
  factory _$$RecentActivityStateImplCopyWith(_$RecentActivityStateImpl value,
          $Res Function(_$RecentActivityStateImpl) then) =
      __$$RecentActivityStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RequestState state, String message, ActivityList? activities});
}

/// @nodoc
class __$$RecentActivityStateImplCopyWithImpl<$Res>
    extends _$RecentActivityStateCopyWithImpl<$Res, _$RecentActivityStateImpl>
    implements _$$RecentActivityStateImplCopyWith<$Res> {
  __$$RecentActivityStateImplCopyWithImpl(_$RecentActivityStateImpl _value,
      $Res Function(_$RecentActivityStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? message = null,
    Object? activities = freezed,
  }) {
    return _then(_$RecentActivityStateImpl(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as RequestState,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      activities: freezed == activities
          ? _value.activities
          : activities // ignore: cast_nullable_to_non_nullable
              as ActivityList?,
    ));
  }
}

/// @nodoc

class _$RecentActivityStateImpl implements _RecentActivityState {
  _$RecentActivityStateImpl(
      {required this.state, required this.message, required this.activities});

  @override
  final RequestState state;
  @override
  final String message;
  @override
  final ActivityList? activities;

  @override
  String toString() {
    return 'RecentActivityState(state: $state, message: $message, activities: $activities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecentActivityStateImpl &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.activities, activities) ||
                other.activities == activities));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state, message, activities);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecentActivityStateImplCopyWith<_$RecentActivityStateImpl> get copyWith =>
      __$$RecentActivityStateImplCopyWithImpl<_$RecentActivityStateImpl>(
          this, _$identity);
}

abstract class _RecentActivityState implements RecentActivityState {
  factory _RecentActivityState(
      {required final RequestState state,
      required final String message,
      required final ActivityList? activities}) = _$RecentActivityStateImpl;

  @override
  RequestState get state;
  @override
  String get message;
  @override
  ActivityList? get activities;
  @override
  @JsonKey(ignore: true)
  _$$RecentActivityStateImplCopyWith<_$RecentActivityStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RecentActivityEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading) fetchRecentActivity,
    required TResult Function(String activity, Map<String, String>? metaData)
        addActivityDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading)? fetchRecentActivity,
    TResult? Function(String activity, Map<String, String>? metaData)?
        addActivityDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? fetchRecentActivity,
    TResult Function(String activity, Map<String, String>? metaData)?
        addActivityDetail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchRecentActivity value) fetchRecentActivity,
    required TResult Function(_AddActivityDetail value) addActivityDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchRecentActivity value)? fetchRecentActivity,
    TResult? Function(_AddActivityDetail value)? addActivityDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchRecentActivity value)? fetchRecentActivity,
    TResult Function(_AddActivityDetail value)? addActivityDetail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecentActivityEventCopyWith<$Res> {
  factory $RecentActivityEventCopyWith(
          RecentActivityEvent value, $Res Function(RecentActivityEvent) then) =
      _$RecentActivityEventCopyWithImpl<$Res, RecentActivityEvent>;
}

/// @nodoc
class _$RecentActivityEventCopyWithImpl<$Res, $Val extends RecentActivityEvent>
    implements $RecentActivityEventCopyWith<$Res> {
  _$RecentActivityEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchRecentActivityImplCopyWith<$Res> {
  factory _$$FetchRecentActivityImplCopyWith(_$FetchRecentActivityImpl value,
          $Res Function(_$FetchRecentActivityImpl) then) =
      __$$FetchRecentActivityImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class __$$FetchRecentActivityImplCopyWithImpl<$Res>
    extends _$RecentActivityEventCopyWithImpl<$Res, _$FetchRecentActivityImpl>
    implements _$$FetchRecentActivityImplCopyWith<$Res> {
  __$$FetchRecentActivityImplCopyWithImpl(_$FetchRecentActivityImpl _value,
      $Res Function(_$FetchRecentActivityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_$FetchRecentActivityImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$FetchRecentActivityImpl implements _FetchRecentActivity {
  const _$FetchRecentActivityImpl({this.isLoading = true});

  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'RecentActivityEvent.fetchRecentActivity(isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchRecentActivityImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchRecentActivityImplCopyWith<_$FetchRecentActivityImpl> get copyWith =>
      __$$FetchRecentActivityImplCopyWithImpl<_$FetchRecentActivityImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading) fetchRecentActivity,
    required TResult Function(String activity, Map<String, String>? metaData)
        addActivityDetail,
  }) {
    return fetchRecentActivity(isLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading)? fetchRecentActivity,
    TResult? Function(String activity, Map<String, String>? metaData)?
        addActivityDetail,
  }) {
    return fetchRecentActivity?.call(isLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? fetchRecentActivity,
    TResult Function(String activity, Map<String, String>? metaData)?
        addActivityDetail,
    required TResult orElse(),
  }) {
    if (fetchRecentActivity != null) {
      return fetchRecentActivity(isLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchRecentActivity value) fetchRecentActivity,
    required TResult Function(_AddActivityDetail value) addActivityDetail,
  }) {
    return fetchRecentActivity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchRecentActivity value)? fetchRecentActivity,
    TResult? Function(_AddActivityDetail value)? addActivityDetail,
  }) {
    return fetchRecentActivity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchRecentActivity value)? fetchRecentActivity,
    TResult Function(_AddActivityDetail value)? addActivityDetail,
    required TResult orElse(),
  }) {
    if (fetchRecentActivity != null) {
      return fetchRecentActivity(this);
    }
    return orElse();
  }
}

abstract class _FetchRecentActivity implements RecentActivityEvent {
  const factory _FetchRecentActivity({final bool isLoading}) =
      _$FetchRecentActivityImpl;

  bool get isLoading;
  @JsonKey(ignore: true)
  _$$FetchRecentActivityImplCopyWith<_$FetchRecentActivityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddActivityDetailImplCopyWith<$Res> {
  factory _$$AddActivityDetailImplCopyWith(_$AddActivityDetailImpl value,
          $Res Function(_$AddActivityDetailImpl) then) =
      __$$AddActivityDetailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String activity, Map<String, String>? metaData});
}

/// @nodoc
class __$$AddActivityDetailImplCopyWithImpl<$Res>
    extends _$RecentActivityEventCopyWithImpl<$Res, _$AddActivityDetailImpl>
    implements _$$AddActivityDetailImplCopyWith<$Res> {
  __$$AddActivityDetailImplCopyWithImpl(_$AddActivityDetailImpl _value,
      $Res Function(_$AddActivityDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activity = null,
    Object? metaData = freezed,
  }) {
    return _then(_$AddActivityDetailImpl(
      activity: null == activity
          ? _value.activity
          : activity // ignore: cast_nullable_to_non_nullable
              as String,
      metaData: freezed == metaData
          ? _value._metaData
          : metaData // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
    ));
  }
}

/// @nodoc

class _$AddActivityDetailImpl implements _AddActivityDetail {
  const _$AddActivityDetailImpl(
      {required this.activity, final Map<String, String>? metaData})
      : _metaData = metaData;

  @override
  final String activity;
  final Map<String, String>? _metaData;
  @override
  Map<String, String>? get metaData {
    final value = _metaData;
    if (value == null) return null;
    if (_metaData is EqualUnmodifiableMapView) return _metaData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'RecentActivityEvent.addActivityDetail(activity: $activity, metaData: $metaData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddActivityDetailImpl &&
            (identical(other.activity, activity) ||
                other.activity == activity) &&
            const DeepCollectionEquality().equals(other._metaData, _metaData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, activity, const DeepCollectionEquality().hash(_metaData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddActivityDetailImplCopyWith<_$AddActivityDetailImpl> get copyWith =>
      __$$AddActivityDetailImplCopyWithImpl<_$AddActivityDetailImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading) fetchRecentActivity,
    required TResult Function(String activity, Map<String, String>? metaData)
        addActivityDetail,
  }) {
    return addActivityDetail(activity, metaData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading)? fetchRecentActivity,
    TResult? Function(String activity, Map<String, String>? metaData)?
        addActivityDetail,
  }) {
    return addActivityDetail?.call(activity, metaData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? fetchRecentActivity,
    TResult Function(String activity, Map<String, String>? metaData)?
        addActivityDetail,
    required TResult orElse(),
  }) {
    if (addActivityDetail != null) {
      return addActivityDetail(activity, metaData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchRecentActivity value) fetchRecentActivity,
    required TResult Function(_AddActivityDetail value) addActivityDetail,
  }) {
    return addActivityDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchRecentActivity value)? fetchRecentActivity,
    TResult? Function(_AddActivityDetail value)? addActivityDetail,
  }) {
    return addActivityDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchRecentActivity value)? fetchRecentActivity,
    TResult Function(_AddActivityDetail value)? addActivityDetail,
    required TResult orElse(),
  }) {
    if (addActivityDetail != null) {
      return addActivityDetail(this);
    }
    return orElse();
  }
}

abstract class _AddActivityDetail implements RecentActivityEvent {
  const factory _AddActivityDetail(
      {required final String activity,
      final Map<String, String>? metaData}) = _$AddActivityDetailImpl;

  String get activity;
  Map<String, String>? get metaData;
  @JsonKey(ignore: true)
  _$$AddActivityDetailImplCopyWith<_$AddActivityDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
