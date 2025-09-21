// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'personalized_courses_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PersonalizedCoursesState {
  RequestState get state => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<TestRecommendation> get recommendationsTest =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PersonalizedCoursesStateCopyWith<PersonalizedCoursesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonalizedCoursesStateCopyWith<$Res> {
  factory $PersonalizedCoursesStateCopyWith(PersonalizedCoursesState value,
          $Res Function(PersonalizedCoursesState) then) =
      _$PersonalizedCoursesStateCopyWithImpl<$Res, PersonalizedCoursesState>;
  @useResult
  $Res call(
      {RequestState state,
      String message,
      List<TestRecommendation> recommendationsTest});
}

/// @nodoc
class _$PersonalizedCoursesStateCopyWithImpl<$Res,
        $Val extends PersonalizedCoursesState>
    implements $PersonalizedCoursesStateCopyWith<$Res> {
  _$PersonalizedCoursesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? message = null,
    Object? recommendationsTest = null,
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
      recommendationsTest: null == recommendationsTest
          ? _value.recommendationsTest
          : recommendationsTest // ignore: cast_nullable_to_non_nullable
              as List<TestRecommendation>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PersonalizedCoursesStateImplCopyWith<$Res>
    implements $PersonalizedCoursesStateCopyWith<$Res> {
  factory _$$PersonalizedCoursesStateImplCopyWith(
          _$PersonalizedCoursesStateImpl value,
          $Res Function(_$PersonalizedCoursesStateImpl) then) =
      __$$PersonalizedCoursesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RequestState state,
      String message,
      List<TestRecommendation> recommendationsTest});
}

/// @nodoc
class __$$PersonalizedCoursesStateImplCopyWithImpl<$Res>
    extends _$PersonalizedCoursesStateCopyWithImpl<$Res,
        _$PersonalizedCoursesStateImpl>
    implements _$$PersonalizedCoursesStateImplCopyWith<$Res> {
  __$$PersonalizedCoursesStateImplCopyWithImpl(
      _$PersonalizedCoursesStateImpl _value,
      $Res Function(_$PersonalizedCoursesStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? message = null,
    Object? recommendationsTest = null,
  }) {
    return _then(_$PersonalizedCoursesStateImpl(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as RequestState,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      recommendationsTest: null == recommendationsTest
          ? _value._recommendationsTest
          : recommendationsTest // ignore: cast_nullable_to_non_nullable
              as List<TestRecommendation>,
    ));
  }
}

/// @nodoc

class _$PersonalizedCoursesStateImpl implements _PersonalizedCoursesState {
  _$PersonalizedCoursesStateImpl(
      {required this.state,
      required this.message,
      required final List<TestRecommendation> recommendationsTest})
      : _recommendationsTest = recommendationsTest;

  @override
  final RequestState state;
  @override
  final String message;
  final List<TestRecommendation> _recommendationsTest;
  @override
  List<TestRecommendation> get recommendationsTest {
    if (_recommendationsTest is EqualUnmodifiableListView)
      return _recommendationsTest;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recommendationsTest);
  }

  @override
  String toString() {
    return 'PersonalizedCoursesState(state: $state, message: $message, recommendationsTest: $recommendationsTest)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PersonalizedCoursesStateImpl &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality()
                .equals(other._recommendationsTest, _recommendationsTest));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state, message,
      const DeepCollectionEquality().hash(_recommendationsTest));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PersonalizedCoursesStateImplCopyWith<_$PersonalizedCoursesStateImpl>
      get copyWith => __$$PersonalizedCoursesStateImplCopyWithImpl<
          _$PersonalizedCoursesStateImpl>(this, _$identity);
}

abstract class _PersonalizedCoursesState implements PersonalizedCoursesState {
  factory _PersonalizedCoursesState(
          {required final RequestState state,
          required final String message,
          required final List<TestRecommendation> recommendationsTest}) =
      _$PersonalizedCoursesStateImpl;

  @override
  RequestState get state;
  @override
  String get message;
  @override
  List<TestRecommendation> get recommendationsTest;
  @override
  @JsonKey(ignore: true)
  _$$PersonalizedCoursesStateImplCopyWith<_$PersonalizedCoursesStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PersonalizedCoursesEvent {
  RecommendationType? get type => throw _privateConstructorUsedError;
  int get limite => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RecommendationType? type, int limite)
        fetchUserPersonalizedCourses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RecommendationType? type, int limite)?
        fetchUserPersonalizedCourses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RecommendationType? type, int limite)?
        fetchUserPersonalizedCourses,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchUserPersonalizedCourses value)
        fetchUserPersonalizedCourses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchUserPersonalizedCourses value)?
        fetchUserPersonalizedCourses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchUserPersonalizedCourses value)?
        fetchUserPersonalizedCourses,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PersonalizedCoursesEventCopyWith<PersonalizedCoursesEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonalizedCoursesEventCopyWith<$Res> {
  factory $PersonalizedCoursesEventCopyWith(PersonalizedCoursesEvent value,
          $Res Function(PersonalizedCoursesEvent) then) =
      _$PersonalizedCoursesEventCopyWithImpl<$Res, PersonalizedCoursesEvent>;
  @useResult
  $Res call({RecommendationType? type, int limite});
}

/// @nodoc
class _$PersonalizedCoursesEventCopyWithImpl<$Res,
        $Val extends PersonalizedCoursesEvent>
    implements $PersonalizedCoursesEventCopyWith<$Res> {
  _$PersonalizedCoursesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? limite = null,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as RecommendationType?,
      limite: null == limite
          ? _value.limite
          : limite // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetchUserPersonalizedCoursesImplCopyWith<$Res>
    implements $PersonalizedCoursesEventCopyWith<$Res> {
  factory _$$FetchUserPersonalizedCoursesImplCopyWith(
          _$FetchUserPersonalizedCoursesImpl value,
          $Res Function(_$FetchUserPersonalizedCoursesImpl) then) =
      __$$FetchUserPersonalizedCoursesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RecommendationType? type, int limite});
}

/// @nodoc
class __$$FetchUserPersonalizedCoursesImplCopyWithImpl<$Res>
    extends _$PersonalizedCoursesEventCopyWithImpl<$Res,
        _$FetchUserPersonalizedCoursesImpl>
    implements _$$FetchUserPersonalizedCoursesImplCopyWith<$Res> {
  __$$FetchUserPersonalizedCoursesImplCopyWithImpl(
      _$FetchUserPersonalizedCoursesImpl _value,
      $Res Function(_$FetchUserPersonalizedCoursesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? limite = null,
  }) {
    return _then(_$FetchUserPersonalizedCoursesImpl(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as RecommendationType?,
      limite: null == limite
          ? _value.limite
          : limite // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FetchUserPersonalizedCoursesImpl
    implements _FetchUserPersonalizedCourses {
  const _$FetchUserPersonalizedCoursesImpl({this.type, this.limite = 10});

  @override
  final RecommendationType? type;
  @override
  @JsonKey()
  final int limite;

  @override
  String toString() {
    return 'PersonalizedCoursesEvent.fetchUserPersonalizedCourses(type: $type, limite: $limite)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchUserPersonalizedCoursesImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.limite, limite) || other.limite == limite));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, limite);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchUserPersonalizedCoursesImplCopyWith<
          _$FetchUserPersonalizedCoursesImpl>
      get copyWith => __$$FetchUserPersonalizedCoursesImplCopyWithImpl<
          _$FetchUserPersonalizedCoursesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RecommendationType? type, int limite)
        fetchUserPersonalizedCourses,
  }) {
    return fetchUserPersonalizedCourses(type, limite);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RecommendationType? type, int limite)?
        fetchUserPersonalizedCourses,
  }) {
    return fetchUserPersonalizedCourses?.call(type, limite);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RecommendationType? type, int limite)?
        fetchUserPersonalizedCourses,
    required TResult orElse(),
  }) {
    if (fetchUserPersonalizedCourses != null) {
      return fetchUserPersonalizedCourses(type, limite);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchUserPersonalizedCourses value)
        fetchUserPersonalizedCourses,
  }) {
    return fetchUserPersonalizedCourses(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchUserPersonalizedCourses value)?
        fetchUserPersonalizedCourses,
  }) {
    return fetchUserPersonalizedCourses?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchUserPersonalizedCourses value)?
        fetchUserPersonalizedCourses,
    required TResult orElse(),
  }) {
    if (fetchUserPersonalizedCourses != null) {
      return fetchUserPersonalizedCourses(this);
    }
    return orElse();
  }
}

abstract class _FetchUserPersonalizedCourses
    implements PersonalizedCoursesEvent {
  const factory _FetchUserPersonalizedCourses(
      {final RecommendationType? type,
      final int limite}) = _$FetchUserPersonalizedCoursesImpl;

  @override
  RecommendationType? get type;
  @override
  int get limite;
  @override
  @JsonKey(ignore: true)
  _$$FetchUserPersonalizedCoursesImplCopyWith<
          _$FetchUserPersonalizedCoursesImpl>
      get copyWith => throw _privateConstructorUsedError;
}
