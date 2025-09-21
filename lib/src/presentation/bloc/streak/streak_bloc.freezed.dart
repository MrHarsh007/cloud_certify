// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'streak_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StreakState {
  RequestState get state => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  bool? get isCorrect => throw _privateConstructorUsedError;
  String? get selectedAnswer => throw _privateConstructorUsedError;
  DailyQuestionWithAttempt? get todayQuestion =>
      throw _privateConstructorUsedError;
  DailyStreak? get dailyStreak => throw _privateConstructorUsedError;
  int get streakCount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StreakStateCopyWith<StreakState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StreakStateCopyWith<$Res> {
  factory $StreakStateCopyWith(
          StreakState value, $Res Function(StreakState) then) =
      _$StreakStateCopyWithImpl<$Res, StreakState>;
  @useResult
  $Res call(
      {RequestState state,
      String message,
      bool? isCorrect,
      String? selectedAnswer,
      DailyQuestionWithAttempt? todayQuestion,
      DailyStreak? dailyStreak,
      int streakCount});
}

/// @nodoc
class _$StreakStateCopyWithImpl<$Res, $Val extends StreakState>
    implements $StreakStateCopyWith<$Res> {
  _$StreakStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? message = null,
    Object? isCorrect = freezed,
    Object? selectedAnswer = freezed,
    Object? todayQuestion = freezed,
    Object? dailyStreak = freezed,
    Object? streakCount = null,
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
      isCorrect: freezed == isCorrect
          ? _value.isCorrect
          : isCorrect // ignore: cast_nullable_to_non_nullable
              as bool?,
      selectedAnswer: freezed == selectedAnswer
          ? _value.selectedAnswer
          : selectedAnswer // ignore: cast_nullable_to_non_nullable
              as String?,
      todayQuestion: freezed == todayQuestion
          ? _value.todayQuestion
          : todayQuestion // ignore: cast_nullable_to_non_nullable
              as DailyQuestionWithAttempt?,
      dailyStreak: freezed == dailyStreak
          ? _value.dailyStreak
          : dailyStreak // ignore: cast_nullable_to_non_nullable
              as DailyStreak?,
      streakCount: null == streakCount
          ? _value.streakCount
          : streakCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StreakStateImplCopyWith<$Res>
    implements $StreakStateCopyWith<$Res> {
  factory _$$StreakStateImplCopyWith(
          _$StreakStateImpl value, $Res Function(_$StreakStateImpl) then) =
      __$$StreakStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RequestState state,
      String message,
      bool? isCorrect,
      String? selectedAnswer,
      DailyQuestionWithAttempt? todayQuestion,
      DailyStreak? dailyStreak,
      int streakCount});
}

/// @nodoc
class __$$StreakStateImplCopyWithImpl<$Res>
    extends _$StreakStateCopyWithImpl<$Res, _$StreakStateImpl>
    implements _$$StreakStateImplCopyWith<$Res> {
  __$$StreakStateImplCopyWithImpl(
      _$StreakStateImpl _value, $Res Function(_$StreakStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? message = null,
    Object? isCorrect = freezed,
    Object? selectedAnswer = freezed,
    Object? todayQuestion = freezed,
    Object? dailyStreak = freezed,
    Object? streakCount = null,
  }) {
    return _then(_$StreakStateImpl(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as RequestState,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      isCorrect: freezed == isCorrect
          ? _value.isCorrect
          : isCorrect // ignore: cast_nullable_to_non_nullable
              as bool?,
      selectedAnswer: freezed == selectedAnswer
          ? _value.selectedAnswer
          : selectedAnswer // ignore: cast_nullable_to_non_nullable
              as String?,
      todayQuestion: freezed == todayQuestion
          ? _value.todayQuestion
          : todayQuestion // ignore: cast_nullable_to_non_nullable
              as DailyQuestionWithAttempt?,
      dailyStreak: freezed == dailyStreak
          ? _value.dailyStreak
          : dailyStreak // ignore: cast_nullable_to_non_nullable
              as DailyStreak?,
      streakCount: null == streakCount
          ? _value.streakCount
          : streakCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$StreakStateImpl implements _StreakState {
  _$StreakStateImpl(
      {required this.state,
      required this.message,
      required this.isCorrect,
      required this.selectedAnswer,
      required this.todayQuestion,
      required this.dailyStreak,
      required this.streakCount});

  @override
  final RequestState state;
  @override
  final String message;
  @override
  final bool? isCorrect;
  @override
  final String? selectedAnswer;
  @override
  final DailyQuestionWithAttempt? todayQuestion;
  @override
  final DailyStreak? dailyStreak;
  @override
  final int streakCount;

  @override
  String toString() {
    return 'StreakState(state: $state, message: $message, isCorrect: $isCorrect, selectedAnswer: $selectedAnswer, todayQuestion: $todayQuestion, dailyStreak: $dailyStreak, streakCount: $streakCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StreakStateImpl &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isCorrect, isCorrect) ||
                other.isCorrect == isCorrect) &&
            (identical(other.selectedAnswer, selectedAnswer) ||
                other.selectedAnswer == selectedAnswer) &&
            (identical(other.todayQuestion, todayQuestion) ||
                other.todayQuestion == todayQuestion) &&
            (identical(other.dailyStreak, dailyStreak) ||
                other.dailyStreak == dailyStreak) &&
            (identical(other.streakCount, streakCount) ||
                other.streakCount == streakCount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state, message, isCorrect,
      selectedAnswer, todayQuestion, dailyStreak, streakCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StreakStateImplCopyWith<_$StreakStateImpl> get copyWith =>
      __$$StreakStateImplCopyWithImpl<_$StreakStateImpl>(this, _$identity);
}

abstract class _StreakState implements StreakState {
  factory _StreakState(
      {required final RequestState state,
      required final String message,
      required final bool? isCorrect,
      required final String? selectedAnswer,
      required final DailyQuestionWithAttempt? todayQuestion,
      required final DailyStreak? dailyStreak,
      required final int streakCount}) = _$StreakStateImpl;

  @override
  RequestState get state;
  @override
  String get message;
  @override
  bool? get isCorrect;
  @override
  String? get selectedAnswer;
  @override
  DailyQuestionWithAttempt? get todayQuestion;
  @override
  DailyStreak? get dailyStreak;
  @override
  int get streakCount;
  @override
  @JsonKey(ignore: true)
  _$$StreakStateImplCopyWith<_$StreakStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StreakEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isLoading) getStreak,
    required TResult Function(bool isLoading) getTodayQuestion,
    required TResult Function() sumbitAnswer,
    required TResult Function(String answer) selectAnswer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isLoading)? getStreak,
    TResult? Function(bool isLoading)? getTodayQuestion,
    TResult? Function()? sumbitAnswer,
    TResult? Function(String answer)? selectAnswer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isLoading)? getStreak,
    TResult Function(bool isLoading)? getTodayQuestion,
    TResult Function()? sumbitAnswer,
    TResult Function(String answer)? selectAnswer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetStreakEvent value) getStreak,
    required TResult Function(_GetTodayQuestion value) getTodayQuestion,
    required TResult Function(_SumbitAnswer value) sumbitAnswer,
    required TResult Function(_SelectAnswer value) selectAnswer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetStreakEvent value)? getStreak,
    TResult? Function(_GetTodayQuestion value)? getTodayQuestion,
    TResult? Function(_SumbitAnswer value)? sumbitAnswer,
    TResult? Function(_SelectAnswer value)? selectAnswer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetStreakEvent value)? getStreak,
    TResult Function(_GetTodayQuestion value)? getTodayQuestion,
    TResult Function(_SumbitAnswer value)? sumbitAnswer,
    TResult Function(_SelectAnswer value)? selectAnswer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StreakEventCopyWith<$Res> {
  factory $StreakEventCopyWith(
          StreakEvent value, $Res Function(StreakEvent) then) =
      _$StreakEventCopyWithImpl<$Res, StreakEvent>;
}

/// @nodoc
class _$StreakEventCopyWithImpl<$Res, $Val extends StreakEvent>
    implements $StreakEventCopyWith<$Res> {
  _$StreakEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$StreakEventCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'StreakEvent.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isLoading) getStreak,
    required TResult Function(bool isLoading) getTodayQuestion,
    required TResult Function() sumbitAnswer,
    required TResult Function(String answer) selectAnswer,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isLoading)? getStreak,
    TResult? Function(bool isLoading)? getTodayQuestion,
    TResult? Function()? sumbitAnswer,
    TResult? Function(String answer)? selectAnswer,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isLoading)? getStreak,
    TResult Function(bool isLoading)? getTodayQuestion,
    TResult Function()? sumbitAnswer,
    TResult Function(String answer)? selectAnswer,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetStreakEvent value) getStreak,
    required TResult Function(_GetTodayQuestion value) getTodayQuestion,
    required TResult Function(_SumbitAnswer value) sumbitAnswer,
    required TResult Function(_SelectAnswer value) selectAnswer,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetStreakEvent value)? getStreak,
    TResult? Function(_GetTodayQuestion value)? getTodayQuestion,
    TResult? Function(_SumbitAnswer value)? sumbitAnswer,
    TResult? Function(_SelectAnswer value)? selectAnswer,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetStreakEvent value)? getStreak,
    TResult Function(_GetTodayQuestion value)? getTodayQuestion,
    TResult Function(_SumbitAnswer value)? sumbitAnswer,
    TResult Function(_SelectAnswer value)? selectAnswer,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements StreakEvent {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$GetStreakEventImplCopyWith<$Res> {
  factory _$$GetStreakEventImplCopyWith(_$GetStreakEventImpl value,
          $Res Function(_$GetStreakEventImpl) then) =
      __$$GetStreakEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class __$$GetStreakEventImplCopyWithImpl<$Res>
    extends _$StreakEventCopyWithImpl<$Res, _$GetStreakEventImpl>
    implements _$$GetStreakEventImplCopyWith<$Res> {
  __$$GetStreakEventImplCopyWithImpl(
      _$GetStreakEventImpl _value, $Res Function(_$GetStreakEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_$GetStreakEventImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$GetStreakEventImpl implements _GetStreakEvent {
  const _$GetStreakEventImpl({this.isLoading = true});

  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'StreakEvent.getStreak(isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetStreakEventImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetStreakEventImplCopyWith<_$GetStreakEventImpl> get copyWith =>
      __$$GetStreakEventImplCopyWithImpl<_$GetStreakEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isLoading) getStreak,
    required TResult Function(bool isLoading) getTodayQuestion,
    required TResult Function() sumbitAnswer,
    required TResult Function(String answer) selectAnswer,
  }) {
    return getStreak(isLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isLoading)? getStreak,
    TResult? Function(bool isLoading)? getTodayQuestion,
    TResult? Function()? sumbitAnswer,
    TResult? Function(String answer)? selectAnswer,
  }) {
    return getStreak?.call(isLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isLoading)? getStreak,
    TResult Function(bool isLoading)? getTodayQuestion,
    TResult Function()? sumbitAnswer,
    TResult Function(String answer)? selectAnswer,
    required TResult orElse(),
  }) {
    if (getStreak != null) {
      return getStreak(isLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetStreakEvent value) getStreak,
    required TResult Function(_GetTodayQuestion value) getTodayQuestion,
    required TResult Function(_SumbitAnswer value) sumbitAnswer,
    required TResult Function(_SelectAnswer value) selectAnswer,
  }) {
    return getStreak(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetStreakEvent value)? getStreak,
    TResult? Function(_GetTodayQuestion value)? getTodayQuestion,
    TResult? Function(_SumbitAnswer value)? sumbitAnswer,
    TResult? Function(_SelectAnswer value)? selectAnswer,
  }) {
    return getStreak?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetStreakEvent value)? getStreak,
    TResult Function(_GetTodayQuestion value)? getTodayQuestion,
    TResult Function(_SumbitAnswer value)? sumbitAnswer,
    TResult Function(_SelectAnswer value)? selectAnswer,
    required TResult orElse(),
  }) {
    if (getStreak != null) {
      return getStreak(this);
    }
    return orElse();
  }
}

abstract class _GetStreakEvent implements StreakEvent {
  const factory _GetStreakEvent({final bool isLoading}) = _$GetStreakEventImpl;

  bool get isLoading;
  @JsonKey(ignore: true)
  _$$GetStreakEventImplCopyWith<_$GetStreakEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetTodayQuestionImplCopyWith<$Res> {
  factory _$$GetTodayQuestionImplCopyWith(_$GetTodayQuestionImpl value,
          $Res Function(_$GetTodayQuestionImpl) then) =
      __$$GetTodayQuestionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class __$$GetTodayQuestionImplCopyWithImpl<$Res>
    extends _$StreakEventCopyWithImpl<$Res, _$GetTodayQuestionImpl>
    implements _$$GetTodayQuestionImplCopyWith<$Res> {
  __$$GetTodayQuestionImplCopyWithImpl(_$GetTodayQuestionImpl _value,
      $Res Function(_$GetTodayQuestionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_$GetTodayQuestionImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$GetTodayQuestionImpl implements _GetTodayQuestion {
  const _$GetTodayQuestionImpl({this.isLoading = true});

  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'StreakEvent.getTodayQuestion(isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTodayQuestionImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTodayQuestionImplCopyWith<_$GetTodayQuestionImpl> get copyWith =>
      __$$GetTodayQuestionImplCopyWithImpl<_$GetTodayQuestionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isLoading) getStreak,
    required TResult Function(bool isLoading) getTodayQuestion,
    required TResult Function() sumbitAnswer,
    required TResult Function(String answer) selectAnswer,
  }) {
    return getTodayQuestion(isLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isLoading)? getStreak,
    TResult? Function(bool isLoading)? getTodayQuestion,
    TResult? Function()? sumbitAnswer,
    TResult? Function(String answer)? selectAnswer,
  }) {
    return getTodayQuestion?.call(isLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isLoading)? getStreak,
    TResult Function(bool isLoading)? getTodayQuestion,
    TResult Function()? sumbitAnswer,
    TResult Function(String answer)? selectAnswer,
    required TResult orElse(),
  }) {
    if (getTodayQuestion != null) {
      return getTodayQuestion(isLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetStreakEvent value) getStreak,
    required TResult Function(_GetTodayQuestion value) getTodayQuestion,
    required TResult Function(_SumbitAnswer value) sumbitAnswer,
    required TResult Function(_SelectAnswer value) selectAnswer,
  }) {
    return getTodayQuestion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetStreakEvent value)? getStreak,
    TResult? Function(_GetTodayQuestion value)? getTodayQuestion,
    TResult? Function(_SumbitAnswer value)? sumbitAnswer,
    TResult? Function(_SelectAnswer value)? selectAnswer,
  }) {
    return getTodayQuestion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetStreakEvent value)? getStreak,
    TResult Function(_GetTodayQuestion value)? getTodayQuestion,
    TResult Function(_SumbitAnswer value)? sumbitAnswer,
    TResult Function(_SelectAnswer value)? selectAnswer,
    required TResult orElse(),
  }) {
    if (getTodayQuestion != null) {
      return getTodayQuestion(this);
    }
    return orElse();
  }
}

abstract class _GetTodayQuestion implements StreakEvent {
  const factory _GetTodayQuestion({final bool isLoading}) =
      _$GetTodayQuestionImpl;

  bool get isLoading;
  @JsonKey(ignore: true)
  _$$GetTodayQuestionImplCopyWith<_$GetTodayQuestionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SumbitAnswerImplCopyWith<$Res> {
  factory _$$SumbitAnswerImplCopyWith(
          _$SumbitAnswerImpl value, $Res Function(_$SumbitAnswerImpl) then) =
      __$$SumbitAnswerImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SumbitAnswerImplCopyWithImpl<$Res>
    extends _$StreakEventCopyWithImpl<$Res, _$SumbitAnswerImpl>
    implements _$$SumbitAnswerImplCopyWith<$Res> {
  __$$SumbitAnswerImplCopyWithImpl(
      _$SumbitAnswerImpl _value, $Res Function(_$SumbitAnswerImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SumbitAnswerImpl implements _SumbitAnswer {
  const _$SumbitAnswerImpl();

  @override
  String toString() {
    return 'StreakEvent.sumbitAnswer()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SumbitAnswerImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isLoading) getStreak,
    required TResult Function(bool isLoading) getTodayQuestion,
    required TResult Function() sumbitAnswer,
    required TResult Function(String answer) selectAnswer,
  }) {
    return sumbitAnswer();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isLoading)? getStreak,
    TResult? Function(bool isLoading)? getTodayQuestion,
    TResult? Function()? sumbitAnswer,
    TResult? Function(String answer)? selectAnswer,
  }) {
    return sumbitAnswer?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isLoading)? getStreak,
    TResult Function(bool isLoading)? getTodayQuestion,
    TResult Function()? sumbitAnswer,
    TResult Function(String answer)? selectAnswer,
    required TResult orElse(),
  }) {
    if (sumbitAnswer != null) {
      return sumbitAnswer();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetStreakEvent value) getStreak,
    required TResult Function(_GetTodayQuestion value) getTodayQuestion,
    required TResult Function(_SumbitAnswer value) sumbitAnswer,
    required TResult Function(_SelectAnswer value) selectAnswer,
  }) {
    return sumbitAnswer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetStreakEvent value)? getStreak,
    TResult? Function(_GetTodayQuestion value)? getTodayQuestion,
    TResult? Function(_SumbitAnswer value)? sumbitAnswer,
    TResult? Function(_SelectAnswer value)? selectAnswer,
  }) {
    return sumbitAnswer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetStreakEvent value)? getStreak,
    TResult Function(_GetTodayQuestion value)? getTodayQuestion,
    TResult Function(_SumbitAnswer value)? sumbitAnswer,
    TResult Function(_SelectAnswer value)? selectAnswer,
    required TResult orElse(),
  }) {
    if (sumbitAnswer != null) {
      return sumbitAnswer(this);
    }
    return orElse();
  }
}

abstract class _SumbitAnswer implements StreakEvent {
  const factory _SumbitAnswer() = _$SumbitAnswerImpl;
}

/// @nodoc
abstract class _$$SelectAnswerImplCopyWith<$Res> {
  factory _$$SelectAnswerImplCopyWith(
          _$SelectAnswerImpl value, $Res Function(_$SelectAnswerImpl) then) =
      __$$SelectAnswerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String answer});
}

/// @nodoc
class __$$SelectAnswerImplCopyWithImpl<$Res>
    extends _$StreakEventCopyWithImpl<$Res, _$SelectAnswerImpl>
    implements _$$SelectAnswerImplCopyWith<$Res> {
  __$$SelectAnswerImplCopyWithImpl(
      _$SelectAnswerImpl _value, $Res Function(_$SelectAnswerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? answer = null,
  }) {
    return _then(_$SelectAnswerImpl(
      null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SelectAnswerImpl implements _SelectAnswer {
  const _$SelectAnswerImpl(this.answer);

  @override
  final String answer;

  @override
  String toString() {
    return 'StreakEvent.selectAnswer(answer: $answer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectAnswerImpl &&
            (identical(other.answer, answer) || other.answer == answer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, answer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectAnswerImplCopyWith<_$SelectAnswerImpl> get copyWith =>
      __$$SelectAnswerImplCopyWithImpl<_$SelectAnswerImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isLoading) getStreak,
    required TResult Function(bool isLoading) getTodayQuestion,
    required TResult Function() sumbitAnswer,
    required TResult Function(String answer) selectAnswer,
  }) {
    return selectAnswer(answer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isLoading)? getStreak,
    TResult? Function(bool isLoading)? getTodayQuestion,
    TResult? Function()? sumbitAnswer,
    TResult? Function(String answer)? selectAnswer,
  }) {
    return selectAnswer?.call(answer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isLoading)? getStreak,
    TResult Function(bool isLoading)? getTodayQuestion,
    TResult Function()? sumbitAnswer,
    TResult Function(String answer)? selectAnswer,
    required TResult orElse(),
  }) {
    if (selectAnswer != null) {
      return selectAnswer(answer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetStreakEvent value) getStreak,
    required TResult Function(_GetTodayQuestion value) getTodayQuestion,
    required TResult Function(_SumbitAnswer value) sumbitAnswer,
    required TResult Function(_SelectAnswer value) selectAnswer,
  }) {
    return selectAnswer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetStreakEvent value)? getStreak,
    TResult? Function(_GetTodayQuestion value)? getTodayQuestion,
    TResult? Function(_SumbitAnswer value)? sumbitAnswer,
    TResult? Function(_SelectAnswer value)? selectAnswer,
  }) {
    return selectAnswer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetStreakEvent value)? getStreak,
    TResult Function(_GetTodayQuestion value)? getTodayQuestion,
    TResult Function(_SumbitAnswer value)? sumbitAnswer,
    TResult Function(_SelectAnswer value)? selectAnswer,
    required TResult orElse(),
  }) {
    if (selectAnswer != null) {
      return selectAnswer(this);
    }
    return orElse();
  }
}

abstract class _SelectAnswer implements StreakEvent {
  const factory _SelectAnswer(final String answer) = _$SelectAnswerImpl;

  String get answer;
  @JsonKey(ignore: true)
  _$$SelectAnswerImplCopyWith<_$SelectAnswerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
