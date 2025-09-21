// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'star_stop_sumbit_test_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StarStopSumbitTestState {
  RequestState get state => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  SubmitAnswerResponse? get submitResponse =>
      throw _privateConstructorUsedError;
  String? get testId => throw _privateConstructorUsedError;
  String? get attemptId => throw _privateConstructorUsedError;
  int get seconds => throw _privateConstructorUsedError;
  bool get isTestRunning => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StarStopSumbitTestStateCopyWith<StarStopSumbitTestState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StarStopSumbitTestStateCopyWith<$Res> {
  factory $StarStopSumbitTestStateCopyWith(StarStopSumbitTestState value,
          $Res Function(StarStopSumbitTestState) then) =
      _$StarStopSumbitTestStateCopyWithImpl<$Res, StarStopSumbitTestState>;
  @useResult
  $Res call(
      {RequestState state,
      String message,
      SubmitAnswerResponse? submitResponse,
      String? testId,
      String? attemptId,
      int seconds,
      bool isTestRunning});
}

/// @nodoc
class _$StarStopSumbitTestStateCopyWithImpl<$Res,
        $Val extends StarStopSumbitTestState>
    implements $StarStopSumbitTestStateCopyWith<$Res> {
  _$StarStopSumbitTestStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? message = null,
    Object? submitResponse = freezed,
    Object? testId = freezed,
    Object? attemptId = freezed,
    Object? seconds = null,
    Object? isTestRunning = null,
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
      submitResponse: freezed == submitResponse
          ? _value.submitResponse
          : submitResponse // ignore: cast_nullable_to_non_nullable
              as SubmitAnswerResponse?,
      testId: freezed == testId
          ? _value.testId
          : testId // ignore: cast_nullable_to_non_nullable
              as String?,
      attemptId: freezed == attemptId
          ? _value.attemptId
          : attemptId // ignore: cast_nullable_to_non_nullable
              as String?,
      seconds: null == seconds
          ? _value.seconds
          : seconds // ignore: cast_nullable_to_non_nullable
              as int,
      isTestRunning: null == isTestRunning
          ? _value.isTestRunning
          : isTestRunning // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StarStopSumbitTestStateImplCopyWith<$Res>
    implements $StarStopSumbitTestStateCopyWith<$Res> {
  factory _$$StarStopSumbitTestStateImplCopyWith(
          _$StarStopSumbitTestStateImpl value,
          $Res Function(_$StarStopSumbitTestStateImpl) then) =
      __$$StarStopSumbitTestStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RequestState state,
      String message,
      SubmitAnswerResponse? submitResponse,
      String? testId,
      String? attemptId,
      int seconds,
      bool isTestRunning});
}

/// @nodoc
class __$$StarStopSumbitTestStateImplCopyWithImpl<$Res>
    extends _$StarStopSumbitTestStateCopyWithImpl<$Res,
        _$StarStopSumbitTestStateImpl>
    implements _$$StarStopSumbitTestStateImplCopyWith<$Res> {
  __$$StarStopSumbitTestStateImplCopyWithImpl(
      _$StarStopSumbitTestStateImpl _value,
      $Res Function(_$StarStopSumbitTestStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? message = null,
    Object? submitResponse = freezed,
    Object? testId = freezed,
    Object? attemptId = freezed,
    Object? seconds = null,
    Object? isTestRunning = null,
  }) {
    return _then(_$StarStopSumbitTestStateImpl(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as RequestState,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      submitResponse: freezed == submitResponse
          ? _value.submitResponse
          : submitResponse // ignore: cast_nullable_to_non_nullable
              as SubmitAnswerResponse?,
      testId: freezed == testId
          ? _value.testId
          : testId // ignore: cast_nullable_to_non_nullable
              as String?,
      attemptId: freezed == attemptId
          ? _value.attemptId
          : attemptId // ignore: cast_nullable_to_non_nullable
              as String?,
      seconds: null == seconds
          ? _value.seconds
          : seconds // ignore: cast_nullable_to_non_nullable
              as int,
      isTestRunning: null == isTestRunning
          ? _value.isTestRunning
          : isTestRunning // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$StarStopSumbitTestStateImpl implements _StarStopSumbitTestState {
  _$StarStopSumbitTestStateImpl(
      {required this.state,
      required this.message,
      required this.submitResponse,
      required this.testId,
      required this.attemptId,
      this.seconds = 0,
      required this.isTestRunning});

  @override
  final RequestState state;
  @override
  final String message;
  @override
  final SubmitAnswerResponse? submitResponse;
  @override
  final String? testId;
  @override
  final String? attemptId;
  @override
  @JsonKey()
  final int seconds;
  @override
  final bool isTestRunning;

  @override
  String toString() {
    return 'StarStopSumbitTestState(state: $state, message: $message, submitResponse: $submitResponse, testId: $testId, attemptId: $attemptId, seconds: $seconds, isTestRunning: $isTestRunning)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StarStopSumbitTestStateImpl &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.submitResponse, submitResponse) ||
                other.submitResponse == submitResponse) &&
            (identical(other.testId, testId) || other.testId == testId) &&
            (identical(other.attemptId, attemptId) ||
                other.attemptId == attemptId) &&
            (identical(other.seconds, seconds) || other.seconds == seconds) &&
            (identical(other.isTestRunning, isTestRunning) ||
                other.isTestRunning == isTestRunning));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state, message, submitResponse,
      testId, attemptId, seconds, isTestRunning);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StarStopSumbitTestStateImplCopyWith<_$StarStopSumbitTestStateImpl>
      get copyWith => __$$StarStopSumbitTestStateImplCopyWithImpl<
          _$StarStopSumbitTestStateImpl>(this, _$identity);
}

abstract class _StarStopSumbitTestState implements StarStopSumbitTestState {
  factory _StarStopSumbitTestState(
      {required final RequestState state,
      required final String message,
      required final SubmitAnswerResponse? submitResponse,
      required final String? testId,
      required final String? attemptId,
      final int seconds,
      required final bool isTestRunning}) = _$StarStopSumbitTestStateImpl;

  @override
  RequestState get state;
  @override
  String get message;
  @override
  SubmitAnswerResponse? get submitResponse;
  @override
  String? get testId;
  @override
  String? get attemptId;
  @override
  int get seconds;
  @override
  bool get isTestRunning;
  @override
  @JsonKey(ignore: true)
  _$$StarStopSumbitTestStateImplCopyWith<_$StarStopSumbitTestStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StarStopSumbitTestEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String testId, TestMode testMode) startTest,
    required TResult Function(
            String attemptId, String questionId, List<String> selectedOptions)
        submitAnswer,
    required TResult Function() setSubmitAnswerNull,
    required TResult Function(String attemptId) finishTest,
    required TResult Function(String attemptId) setAttemptId,
    required TResult Function() startTimer,
    required TResult Function() incrementTimer,
    required TResult Function(bool isStopTimer) resetTimer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String testId, TestMode testMode)? startTest,
    TResult? Function(
            String attemptId, String questionId, List<String> selectedOptions)?
        submitAnswer,
    TResult? Function()? setSubmitAnswerNull,
    TResult? Function(String attemptId)? finishTest,
    TResult? Function(String attemptId)? setAttemptId,
    TResult? Function()? startTimer,
    TResult? Function()? incrementTimer,
    TResult? Function(bool isStopTimer)? resetTimer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String testId, TestMode testMode)? startTest,
    TResult Function(
            String attemptId, String questionId, List<String> selectedOptions)?
        submitAnswer,
    TResult Function()? setSubmitAnswerNull,
    TResult Function(String attemptId)? finishTest,
    TResult Function(String attemptId)? setAttemptId,
    TResult Function()? startTimer,
    TResult Function()? incrementTimer,
    TResult Function(bool isStopTimer)? resetTimer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartTestEvent value) startTest,
    required TResult Function(SubmitAnswerEvent value) submitAnswer,
    required TResult Function(ChangeSubmitAnswerEvent value)
        setSubmitAnswerNull,
    required TResult Function(FinishTestEvent value) finishTest,
    required TResult Function(SetAttemptIdEvent value) setAttemptId,
    required TResult Function(StartTimerEvent value) startTimer,
    required TResult Function(IncrementTimerEvent value) incrementTimer,
    required TResult Function(ResetTimerEvent value) resetTimer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartTestEvent value)? startTest,
    TResult? Function(SubmitAnswerEvent value)? submitAnswer,
    TResult? Function(ChangeSubmitAnswerEvent value)? setSubmitAnswerNull,
    TResult? Function(FinishTestEvent value)? finishTest,
    TResult? Function(SetAttemptIdEvent value)? setAttemptId,
    TResult? Function(StartTimerEvent value)? startTimer,
    TResult? Function(IncrementTimerEvent value)? incrementTimer,
    TResult? Function(ResetTimerEvent value)? resetTimer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartTestEvent value)? startTest,
    TResult Function(SubmitAnswerEvent value)? submitAnswer,
    TResult Function(ChangeSubmitAnswerEvent value)? setSubmitAnswerNull,
    TResult Function(FinishTestEvent value)? finishTest,
    TResult Function(SetAttemptIdEvent value)? setAttemptId,
    TResult Function(StartTimerEvent value)? startTimer,
    TResult Function(IncrementTimerEvent value)? incrementTimer,
    TResult Function(ResetTimerEvent value)? resetTimer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StarStopSumbitTestEventCopyWith<$Res> {
  factory $StarStopSumbitTestEventCopyWith(StarStopSumbitTestEvent value,
          $Res Function(StarStopSumbitTestEvent) then) =
      _$StarStopSumbitTestEventCopyWithImpl<$Res, StarStopSumbitTestEvent>;
}

/// @nodoc
class _$StarStopSumbitTestEventCopyWithImpl<$Res,
        $Val extends StarStopSumbitTestEvent>
    implements $StarStopSumbitTestEventCopyWith<$Res> {
  _$StarStopSumbitTestEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartTestEventImplCopyWith<$Res> {
  factory _$$StartTestEventImplCopyWith(_$StartTestEventImpl value,
          $Res Function(_$StartTestEventImpl) then) =
      __$$StartTestEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String testId, TestMode testMode});
}

/// @nodoc
class __$$StartTestEventImplCopyWithImpl<$Res>
    extends _$StarStopSumbitTestEventCopyWithImpl<$Res, _$StartTestEventImpl>
    implements _$$StartTestEventImplCopyWith<$Res> {
  __$$StartTestEventImplCopyWithImpl(
      _$StartTestEventImpl _value, $Res Function(_$StartTestEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? testId = null,
    Object? testMode = null,
  }) {
    return _then(_$StartTestEventImpl(
      testId: null == testId
          ? _value.testId
          : testId // ignore: cast_nullable_to_non_nullable
              as String,
      testMode: null == testMode
          ? _value.testMode
          : testMode // ignore: cast_nullable_to_non_nullable
              as TestMode,
    ));
  }
}

/// @nodoc

class _$StartTestEventImpl implements StartTestEvent {
  const _$StartTestEventImpl(
      {required this.testId, this.testMode = TestMode.practice});

  @override
  final String testId;
  @override
  @JsonKey()
  final TestMode testMode;

  @override
  String toString() {
    return 'StarStopSumbitTestEvent.startTest(testId: $testId, testMode: $testMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartTestEventImpl &&
            (identical(other.testId, testId) || other.testId == testId) &&
            (identical(other.testMode, testMode) ||
                other.testMode == testMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, testId, testMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartTestEventImplCopyWith<_$StartTestEventImpl> get copyWith =>
      __$$StartTestEventImplCopyWithImpl<_$StartTestEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String testId, TestMode testMode) startTest,
    required TResult Function(
            String attemptId, String questionId, List<String> selectedOptions)
        submitAnswer,
    required TResult Function() setSubmitAnswerNull,
    required TResult Function(String attemptId) finishTest,
    required TResult Function(String attemptId) setAttemptId,
    required TResult Function() startTimer,
    required TResult Function() incrementTimer,
    required TResult Function(bool isStopTimer) resetTimer,
  }) {
    return startTest(testId, testMode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String testId, TestMode testMode)? startTest,
    TResult? Function(
            String attemptId, String questionId, List<String> selectedOptions)?
        submitAnswer,
    TResult? Function()? setSubmitAnswerNull,
    TResult? Function(String attemptId)? finishTest,
    TResult? Function(String attemptId)? setAttemptId,
    TResult? Function()? startTimer,
    TResult? Function()? incrementTimer,
    TResult? Function(bool isStopTimer)? resetTimer,
  }) {
    return startTest?.call(testId, testMode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String testId, TestMode testMode)? startTest,
    TResult Function(
            String attemptId, String questionId, List<String> selectedOptions)?
        submitAnswer,
    TResult Function()? setSubmitAnswerNull,
    TResult Function(String attemptId)? finishTest,
    TResult Function(String attemptId)? setAttemptId,
    TResult Function()? startTimer,
    TResult Function()? incrementTimer,
    TResult Function(bool isStopTimer)? resetTimer,
    required TResult orElse(),
  }) {
    if (startTest != null) {
      return startTest(testId, testMode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartTestEvent value) startTest,
    required TResult Function(SubmitAnswerEvent value) submitAnswer,
    required TResult Function(ChangeSubmitAnswerEvent value)
        setSubmitAnswerNull,
    required TResult Function(FinishTestEvent value) finishTest,
    required TResult Function(SetAttemptIdEvent value) setAttemptId,
    required TResult Function(StartTimerEvent value) startTimer,
    required TResult Function(IncrementTimerEvent value) incrementTimer,
    required TResult Function(ResetTimerEvent value) resetTimer,
  }) {
    return startTest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartTestEvent value)? startTest,
    TResult? Function(SubmitAnswerEvent value)? submitAnswer,
    TResult? Function(ChangeSubmitAnswerEvent value)? setSubmitAnswerNull,
    TResult? Function(FinishTestEvent value)? finishTest,
    TResult? Function(SetAttemptIdEvent value)? setAttemptId,
    TResult? Function(StartTimerEvent value)? startTimer,
    TResult? Function(IncrementTimerEvent value)? incrementTimer,
    TResult? Function(ResetTimerEvent value)? resetTimer,
  }) {
    return startTest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartTestEvent value)? startTest,
    TResult Function(SubmitAnswerEvent value)? submitAnswer,
    TResult Function(ChangeSubmitAnswerEvent value)? setSubmitAnswerNull,
    TResult Function(FinishTestEvent value)? finishTest,
    TResult Function(SetAttemptIdEvent value)? setAttemptId,
    TResult Function(StartTimerEvent value)? startTimer,
    TResult Function(IncrementTimerEvent value)? incrementTimer,
    TResult Function(ResetTimerEvent value)? resetTimer,
    required TResult orElse(),
  }) {
    if (startTest != null) {
      return startTest(this);
    }
    return orElse();
  }
}

abstract class StartTestEvent implements StarStopSumbitTestEvent {
  const factory StartTestEvent(
      {required final String testId,
      final TestMode testMode}) = _$StartTestEventImpl;

  String get testId;
  TestMode get testMode;
  @JsonKey(ignore: true)
  _$$StartTestEventImplCopyWith<_$StartTestEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubmitAnswerEventImplCopyWith<$Res> {
  factory _$$SubmitAnswerEventImplCopyWith(_$SubmitAnswerEventImpl value,
          $Res Function(_$SubmitAnswerEventImpl) then) =
      __$$SubmitAnswerEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String attemptId, String questionId, List<String> selectedOptions});
}

/// @nodoc
class __$$SubmitAnswerEventImplCopyWithImpl<$Res>
    extends _$StarStopSumbitTestEventCopyWithImpl<$Res, _$SubmitAnswerEventImpl>
    implements _$$SubmitAnswerEventImplCopyWith<$Res> {
  __$$SubmitAnswerEventImplCopyWithImpl(_$SubmitAnswerEventImpl _value,
      $Res Function(_$SubmitAnswerEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attemptId = null,
    Object? questionId = null,
    Object? selectedOptions = null,
  }) {
    return _then(_$SubmitAnswerEventImpl(
      attemptId: null == attemptId
          ? _value.attemptId
          : attemptId // ignore: cast_nullable_to_non_nullable
              as String,
      questionId: null == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as String,
      selectedOptions: null == selectedOptions
          ? _value._selectedOptions
          : selectedOptions // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$SubmitAnswerEventImpl implements SubmitAnswerEvent {
  const _$SubmitAnswerEventImpl(
      {required this.attemptId,
      required this.questionId,
      required final List<String> selectedOptions})
      : _selectedOptions = selectedOptions;

  @override
  final String attemptId;
  @override
  final String questionId;
  final List<String> _selectedOptions;
  @override
  List<String> get selectedOptions {
    if (_selectedOptions is EqualUnmodifiableListView) return _selectedOptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedOptions);
  }

  @override
  String toString() {
    return 'StarStopSumbitTestEvent.submitAnswer(attemptId: $attemptId, questionId: $questionId, selectedOptions: $selectedOptions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitAnswerEventImpl &&
            (identical(other.attemptId, attemptId) ||
                other.attemptId == attemptId) &&
            (identical(other.questionId, questionId) ||
                other.questionId == questionId) &&
            const DeepCollectionEquality()
                .equals(other._selectedOptions, _selectedOptions));
  }

  @override
  int get hashCode => Object.hash(runtimeType, attemptId, questionId,
      const DeepCollectionEquality().hash(_selectedOptions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitAnswerEventImplCopyWith<_$SubmitAnswerEventImpl> get copyWith =>
      __$$SubmitAnswerEventImplCopyWithImpl<_$SubmitAnswerEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String testId, TestMode testMode) startTest,
    required TResult Function(
            String attemptId, String questionId, List<String> selectedOptions)
        submitAnswer,
    required TResult Function() setSubmitAnswerNull,
    required TResult Function(String attemptId) finishTest,
    required TResult Function(String attemptId) setAttemptId,
    required TResult Function() startTimer,
    required TResult Function() incrementTimer,
    required TResult Function(bool isStopTimer) resetTimer,
  }) {
    return submitAnswer(attemptId, questionId, selectedOptions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String testId, TestMode testMode)? startTest,
    TResult? Function(
            String attemptId, String questionId, List<String> selectedOptions)?
        submitAnswer,
    TResult? Function()? setSubmitAnswerNull,
    TResult? Function(String attemptId)? finishTest,
    TResult? Function(String attemptId)? setAttemptId,
    TResult? Function()? startTimer,
    TResult? Function()? incrementTimer,
    TResult? Function(bool isStopTimer)? resetTimer,
  }) {
    return submitAnswer?.call(attemptId, questionId, selectedOptions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String testId, TestMode testMode)? startTest,
    TResult Function(
            String attemptId, String questionId, List<String> selectedOptions)?
        submitAnswer,
    TResult Function()? setSubmitAnswerNull,
    TResult Function(String attemptId)? finishTest,
    TResult Function(String attemptId)? setAttemptId,
    TResult Function()? startTimer,
    TResult Function()? incrementTimer,
    TResult Function(bool isStopTimer)? resetTimer,
    required TResult orElse(),
  }) {
    if (submitAnswer != null) {
      return submitAnswer(attemptId, questionId, selectedOptions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartTestEvent value) startTest,
    required TResult Function(SubmitAnswerEvent value) submitAnswer,
    required TResult Function(ChangeSubmitAnswerEvent value)
        setSubmitAnswerNull,
    required TResult Function(FinishTestEvent value) finishTest,
    required TResult Function(SetAttemptIdEvent value) setAttemptId,
    required TResult Function(StartTimerEvent value) startTimer,
    required TResult Function(IncrementTimerEvent value) incrementTimer,
    required TResult Function(ResetTimerEvent value) resetTimer,
  }) {
    return submitAnswer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartTestEvent value)? startTest,
    TResult? Function(SubmitAnswerEvent value)? submitAnswer,
    TResult? Function(ChangeSubmitAnswerEvent value)? setSubmitAnswerNull,
    TResult? Function(FinishTestEvent value)? finishTest,
    TResult? Function(SetAttemptIdEvent value)? setAttemptId,
    TResult? Function(StartTimerEvent value)? startTimer,
    TResult? Function(IncrementTimerEvent value)? incrementTimer,
    TResult? Function(ResetTimerEvent value)? resetTimer,
  }) {
    return submitAnswer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartTestEvent value)? startTest,
    TResult Function(SubmitAnswerEvent value)? submitAnswer,
    TResult Function(ChangeSubmitAnswerEvent value)? setSubmitAnswerNull,
    TResult Function(FinishTestEvent value)? finishTest,
    TResult Function(SetAttemptIdEvent value)? setAttemptId,
    TResult Function(StartTimerEvent value)? startTimer,
    TResult Function(IncrementTimerEvent value)? incrementTimer,
    TResult Function(ResetTimerEvent value)? resetTimer,
    required TResult orElse(),
  }) {
    if (submitAnswer != null) {
      return submitAnswer(this);
    }
    return orElse();
  }
}

abstract class SubmitAnswerEvent implements StarStopSumbitTestEvent {
  const factory SubmitAnswerEvent(
      {required final String attemptId,
      required final String questionId,
      required final List<String> selectedOptions}) = _$SubmitAnswerEventImpl;

  String get attemptId;
  String get questionId;
  List<String> get selectedOptions;
  @JsonKey(ignore: true)
  _$$SubmitAnswerEventImplCopyWith<_$SubmitAnswerEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeSubmitAnswerEventImplCopyWith<$Res> {
  factory _$$ChangeSubmitAnswerEventImplCopyWith(
          _$ChangeSubmitAnswerEventImpl value,
          $Res Function(_$ChangeSubmitAnswerEventImpl) then) =
      __$$ChangeSubmitAnswerEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChangeSubmitAnswerEventImplCopyWithImpl<$Res>
    extends _$StarStopSumbitTestEventCopyWithImpl<$Res,
        _$ChangeSubmitAnswerEventImpl>
    implements _$$ChangeSubmitAnswerEventImplCopyWith<$Res> {
  __$$ChangeSubmitAnswerEventImplCopyWithImpl(
      _$ChangeSubmitAnswerEventImpl _value,
      $Res Function(_$ChangeSubmitAnswerEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChangeSubmitAnswerEventImpl implements ChangeSubmitAnswerEvent {
  const _$ChangeSubmitAnswerEventImpl();

  @override
  String toString() {
    return 'StarStopSumbitTestEvent.setSubmitAnswerNull()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeSubmitAnswerEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String testId, TestMode testMode) startTest,
    required TResult Function(
            String attemptId, String questionId, List<String> selectedOptions)
        submitAnswer,
    required TResult Function() setSubmitAnswerNull,
    required TResult Function(String attemptId) finishTest,
    required TResult Function(String attemptId) setAttemptId,
    required TResult Function() startTimer,
    required TResult Function() incrementTimer,
    required TResult Function(bool isStopTimer) resetTimer,
  }) {
    return setSubmitAnswerNull();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String testId, TestMode testMode)? startTest,
    TResult? Function(
            String attemptId, String questionId, List<String> selectedOptions)?
        submitAnswer,
    TResult? Function()? setSubmitAnswerNull,
    TResult? Function(String attemptId)? finishTest,
    TResult? Function(String attemptId)? setAttemptId,
    TResult? Function()? startTimer,
    TResult? Function()? incrementTimer,
    TResult? Function(bool isStopTimer)? resetTimer,
  }) {
    return setSubmitAnswerNull?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String testId, TestMode testMode)? startTest,
    TResult Function(
            String attemptId, String questionId, List<String> selectedOptions)?
        submitAnswer,
    TResult Function()? setSubmitAnswerNull,
    TResult Function(String attemptId)? finishTest,
    TResult Function(String attemptId)? setAttemptId,
    TResult Function()? startTimer,
    TResult Function()? incrementTimer,
    TResult Function(bool isStopTimer)? resetTimer,
    required TResult orElse(),
  }) {
    if (setSubmitAnswerNull != null) {
      return setSubmitAnswerNull();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartTestEvent value) startTest,
    required TResult Function(SubmitAnswerEvent value) submitAnswer,
    required TResult Function(ChangeSubmitAnswerEvent value)
        setSubmitAnswerNull,
    required TResult Function(FinishTestEvent value) finishTest,
    required TResult Function(SetAttemptIdEvent value) setAttemptId,
    required TResult Function(StartTimerEvent value) startTimer,
    required TResult Function(IncrementTimerEvent value) incrementTimer,
    required TResult Function(ResetTimerEvent value) resetTimer,
  }) {
    return setSubmitAnswerNull(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartTestEvent value)? startTest,
    TResult? Function(SubmitAnswerEvent value)? submitAnswer,
    TResult? Function(ChangeSubmitAnswerEvent value)? setSubmitAnswerNull,
    TResult? Function(FinishTestEvent value)? finishTest,
    TResult? Function(SetAttemptIdEvent value)? setAttemptId,
    TResult? Function(StartTimerEvent value)? startTimer,
    TResult? Function(IncrementTimerEvent value)? incrementTimer,
    TResult? Function(ResetTimerEvent value)? resetTimer,
  }) {
    return setSubmitAnswerNull?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartTestEvent value)? startTest,
    TResult Function(SubmitAnswerEvent value)? submitAnswer,
    TResult Function(ChangeSubmitAnswerEvent value)? setSubmitAnswerNull,
    TResult Function(FinishTestEvent value)? finishTest,
    TResult Function(SetAttemptIdEvent value)? setAttemptId,
    TResult Function(StartTimerEvent value)? startTimer,
    TResult Function(IncrementTimerEvent value)? incrementTimer,
    TResult Function(ResetTimerEvent value)? resetTimer,
    required TResult orElse(),
  }) {
    if (setSubmitAnswerNull != null) {
      return setSubmitAnswerNull(this);
    }
    return orElse();
  }
}

abstract class ChangeSubmitAnswerEvent implements StarStopSumbitTestEvent {
  const factory ChangeSubmitAnswerEvent() = _$ChangeSubmitAnswerEventImpl;
}

/// @nodoc
abstract class _$$FinishTestEventImplCopyWith<$Res> {
  factory _$$FinishTestEventImplCopyWith(_$FinishTestEventImpl value,
          $Res Function(_$FinishTestEventImpl) then) =
      __$$FinishTestEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String attemptId});
}

/// @nodoc
class __$$FinishTestEventImplCopyWithImpl<$Res>
    extends _$StarStopSumbitTestEventCopyWithImpl<$Res, _$FinishTestEventImpl>
    implements _$$FinishTestEventImplCopyWith<$Res> {
  __$$FinishTestEventImplCopyWithImpl(
      _$FinishTestEventImpl _value, $Res Function(_$FinishTestEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attemptId = null,
  }) {
    return _then(_$FinishTestEventImpl(
      attemptId: null == attemptId
          ? _value.attemptId
          : attemptId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FinishTestEventImpl implements FinishTestEvent {
  const _$FinishTestEventImpl({required this.attemptId});

  @override
  final String attemptId;

  @override
  String toString() {
    return 'StarStopSumbitTestEvent.finishTest(attemptId: $attemptId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinishTestEventImpl &&
            (identical(other.attemptId, attemptId) ||
                other.attemptId == attemptId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, attemptId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FinishTestEventImplCopyWith<_$FinishTestEventImpl> get copyWith =>
      __$$FinishTestEventImplCopyWithImpl<_$FinishTestEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String testId, TestMode testMode) startTest,
    required TResult Function(
            String attemptId, String questionId, List<String> selectedOptions)
        submitAnswer,
    required TResult Function() setSubmitAnswerNull,
    required TResult Function(String attemptId) finishTest,
    required TResult Function(String attemptId) setAttemptId,
    required TResult Function() startTimer,
    required TResult Function() incrementTimer,
    required TResult Function(bool isStopTimer) resetTimer,
  }) {
    return finishTest(attemptId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String testId, TestMode testMode)? startTest,
    TResult? Function(
            String attemptId, String questionId, List<String> selectedOptions)?
        submitAnswer,
    TResult? Function()? setSubmitAnswerNull,
    TResult? Function(String attemptId)? finishTest,
    TResult? Function(String attemptId)? setAttemptId,
    TResult? Function()? startTimer,
    TResult? Function()? incrementTimer,
    TResult? Function(bool isStopTimer)? resetTimer,
  }) {
    return finishTest?.call(attemptId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String testId, TestMode testMode)? startTest,
    TResult Function(
            String attemptId, String questionId, List<String> selectedOptions)?
        submitAnswer,
    TResult Function()? setSubmitAnswerNull,
    TResult Function(String attemptId)? finishTest,
    TResult Function(String attemptId)? setAttemptId,
    TResult Function()? startTimer,
    TResult Function()? incrementTimer,
    TResult Function(bool isStopTimer)? resetTimer,
    required TResult orElse(),
  }) {
    if (finishTest != null) {
      return finishTest(attemptId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartTestEvent value) startTest,
    required TResult Function(SubmitAnswerEvent value) submitAnswer,
    required TResult Function(ChangeSubmitAnswerEvent value)
        setSubmitAnswerNull,
    required TResult Function(FinishTestEvent value) finishTest,
    required TResult Function(SetAttemptIdEvent value) setAttemptId,
    required TResult Function(StartTimerEvent value) startTimer,
    required TResult Function(IncrementTimerEvent value) incrementTimer,
    required TResult Function(ResetTimerEvent value) resetTimer,
  }) {
    return finishTest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartTestEvent value)? startTest,
    TResult? Function(SubmitAnswerEvent value)? submitAnswer,
    TResult? Function(ChangeSubmitAnswerEvent value)? setSubmitAnswerNull,
    TResult? Function(FinishTestEvent value)? finishTest,
    TResult? Function(SetAttemptIdEvent value)? setAttemptId,
    TResult? Function(StartTimerEvent value)? startTimer,
    TResult? Function(IncrementTimerEvent value)? incrementTimer,
    TResult? Function(ResetTimerEvent value)? resetTimer,
  }) {
    return finishTest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartTestEvent value)? startTest,
    TResult Function(SubmitAnswerEvent value)? submitAnswer,
    TResult Function(ChangeSubmitAnswerEvent value)? setSubmitAnswerNull,
    TResult Function(FinishTestEvent value)? finishTest,
    TResult Function(SetAttemptIdEvent value)? setAttemptId,
    TResult Function(StartTimerEvent value)? startTimer,
    TResult Function(IncrementTimerEvent value)? incrementTimer,
    TResult Function(ResetTimerEvent value)? resetTimer,
    required TResult orElse(),
  }) {
    if (finishTest != null) {
      return finishTest(this);
    }
    return orElse();
  }
}

abstract class FinishTestEvent implements StarStopSumbitTestEvent {
  const factory FinishTestEvent({required final String attemptId}) =
      _$FinishTestEventImpl;

  String get attemptId;
  @JsonKey(ignore: true)
  _$$FinishTestEventImplCopyWith<_$FinishTestEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetAttemptIdEventImplCopyWith<$Res> {
  factory _$$SetAttemptIdEventImplCopyWith(_$SetAttemptIdEventImpl value,
          $Res Function(_$SetAttemptIdEventImpl) then) =
      __$$SetAttemptIdEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String attemptId});
}

/// @nodoc
class __$$SetAttemptIdEventImplCopyWithImpl<$Res>
    extends _$StarStopSumbitTestEventCopyWithImpl<$Res, _$SetAttemptIdEventImpl>
    implements _$$SetAttemptIdEventImplCopyWith<$Res> {
  __$$SetAttemptIdEventImplCopyWithImpl(_$SetAttemptIdEventImpl _value,
      $Res Function(_$SetAttemptIdEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attemptId = null,
  }) {
    return _then(_$SetAttemptIdEventImpl(
      attemptId: null == attemptId
          ? _value.attemptId
          : attemptId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SetAttemptIdEventImpl implements SetAttemptIdEvent {
  const _$SetAttemptIdEventImpl({required this.attemptId});

  @override
  final String attemptId;

  @override
  String toString() {
    return 'StarStopSumbitTestEvent.setAttemptId(attemptId: $attemptId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetAttemptIdEventImpl &&
            (identical(other.attemptId, attemptId) ||
                other.attemptId == attemptId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, attemptId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetAttemptIdEventImplCopyWith<_$SetAttemptIdEventImpl> get copyWith =>
      __$$SetAttemptIdEventImplCopyWithImpl<_$SetAttemptIdEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String testId, TestMode testMode) startTest,
    required TResult Function(
            String attemptId, String questionId, List<String> selectedOptions)
        submitAnswer,
    required TResult Function() setSubmitAnswerNull,
    required TResult Function(String attemptId) finishTest,
    required TResult Function(String attemptId) setAttemptId,
    required TResult Function() startTimer,
    required TResult Function() incrementTimer,
    required TResult Function(bool isStopTimer) resetTimer,
  }) {
    return setAttemptId(attemptId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String testId, TestMode testMode)? startTest,
    TResult? Function(
            String attemptId, String questionId, List<String> selectedOptions)?
        submitAnswer,
    TResult? Function()? setSubmitAnswerNull,
    TResult? Function(String attemptId)? finishTest,
    TResult? Function(String attemptId)? setAttemptId,
    TResult? Function()? startTimer,
    TResult? Function()? incrementTimer,
    TResult? Function(bool isStopTimer)? resetTimer,
  }) {
    return setAttemptId?.call(attemptId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String testId, TestMode testMode)? startTest,
    TResult Function(
            String attemptId, String questionId, List<String> selectedOptions)?
        submitAnswer,
    TResult Function()? setSubmitAnswerNull,
    TResult Function(String attemptId)? finishTest,
    TResult Function(String attemptId)? setAttemptId,
    TResult Function()? startTimer,
    TResult Function()? incrementTimer,
    TResult Function(bool isStopTimer)? resetTimer,
    required TResult orElse(),
  }) {
    if (setAttemptId != null) {
      return setAttemptId(attemptId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartTestEvent value) startTest,
    required TResult Function(SubmitAnswerEvent value) submitAnswer,
    required TResult Function(ChangeSubmitAnswerEvent value)
        setSubmitAnswerNull,
    required TResult Function(FinishTestEvent value) finishTest,
    required TResult Function(SetAttemptIdEvent value) setAttemptId,
    required TResult Function(StartTimerEvent value) startTimer,
    required TResult Function(IncrementTimerEvent value) incrementTimer,
    required TResult Function(ResetTimerEvent value) resetTimer,
  }) {
    return setAttemptId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartTestEvent value)? startTest,
    TResult? Function(SubmitAnswerEvent value)? submitAnswer,
    TResult? Function(ChangeSubmitAnswerEvent value)? setSubmitAnswerNull,
    TResult? Function(FinishTestEvent value)? finishTest,
    TResult? Function(SetAttemptIdEvent value)? setAttemptId,
    TResult? Function(StartTimerEvent value)? startTimer,
    TResult? Function(IncrementTimerEvent value)? incrementTimer,
    TResult? Function(ResetTimerEvent value)? resetTimer,
  }) {
    return setAttemptId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartTestEvent value)? startTest,
    TResult Function(SubmitAnswerEvent value)? submitAnswer,
    TResult Function(ChangeSubmitAnswerEvent value)? setSubmitAnswerNull,
    TResult Function(FinishTestEvent value)? finishTest,
    TResult Function(SetAttemptIdEvent value)? setAttemptId,
    TResult Function(StartTimerEvent value)? startTimer,
    TResult Function(IncrementTimerEvent value)? incrementTimer,
    TResult Function(ResetTimerEvent value)? resetTimer,
    required TResult orElse(),
  }) {
    if (setAttemptId != null) {
      return setAttemptId(this);
    }
    return orElse();
  }
}

abstract class SetAttemptIdEvent implements StarStopSumbitTestEvent {
  const factory SetAttemptIdEvent({required final String attemptId}) =
      _$SetAttemptIdEventImpl;

  String get attemptId;
  @JsonKey(ignore: true)
  _$$SetAttemptIdEventImplCopyWith<_$SetAttemptIdEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StartTimerEventImplCopyWith<$Res> {
  factory _$$StartTimerEventImplCopyWith(_$StartTimerEventImpl value,
          $Res Function(_$StartTimerEventImpl) then) =
      __$$StartTimerEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartTimerEventImplCopyWithImpl<$Res>
    extends _$StarStopSumbitTestEventCopyWithImpl<$Res, _$StartTimerEventImpl>
    implements _$$StartTimerEventImplCopyWith<$Res> {
  __$$StartTimerEventImplCopyWithImpl(
      _$StartTimerEventImpl _value, $Res Function(_$StartTimerEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartTimerEventImpl implements StartTimerEvent {
  const _$StartTimerEventImpl();

  @override
  String toString() {
    return 'StarStopSumbitTestEvent.startTimer()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartTimerEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String testId, TestMode testMode) startTest,
    required TResult Function(
            String attemptId, String questionId, List<String> selectedOptions)
        submitAnswer,
    required TResult Function() setSubmitAnswerNull,
    required TResult Function(String attemptId) finishTest,
    required TResult Function(String attemptId) setAttemptId,
    required TResult Function() startTimer,
    required TResult Function() incrementTimer,
    required TResult Function(bool isStopTimer) resetTimer,
  }) {
    return startTimer();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String testId, TestMode testMode)? startTest,
    TResult? Function(
            String attemptId, String questionId, List<String> selectedOptions)?
        submitAnswer,
    TResult? Function()? setSubmitAnswerNull,
    TResult? Function(String attemptId)? finishTest,
    TResult? Function(String attemptId)? setAttemptId,
    TResult? Function()? startTimer,
    TResult? Function()? incrementTimer,
    TResult? Function(bool isStopTimer)? resetTimer,
  }) {
    return startTimer?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String testId, TestMode testMode)? startTest,
    TResult Function(
            String attemptId, String questionId, List<String> selectedOptions)?
        submitAnswer,
    TResult Function()? setSubmitAnswerNull,
    TResult Function(String attemptId)? finishTest,
    TResult Function(String attemptId)? setAttemptId,
    TResult Function()? startTimer,
    TResult Function()? incrementTimer,
    TResult Function(bool isStopTimer)? resetTimer,
    required TResult orElse(),
  }) {
    if (startTimer != null) {
      return startTimer();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartTestEvent value) startTest,
    required TResult Function(SubmitAnswerEvent value) submitAnswer,
    required TResult Function(ChangeSubmitAnswerEvent value)
        setSubmitAnswerNull,
    required TResult Function(FinishTestEvent value) finishTest,
    required TResult Function(SetAttemptIdEvent value) setAttemptId,
    required TResult Function(StartTimerEvent value) startTimer,
    required TResult Function(IncrementTimerEvent value) incrementTimer,
    required TResult Function(ResetTimerEvent value) resetTimer,
  }) {
    return startTimer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartTestEvent value)? startTest,
    TResult? Function(SubmitAnswerEvent value)? submitAnswer,
    TResult? Function(ChangeSubmitAnswerEvent value)? setSubmitAnswerNull,
    TResult? Function(FinishTestEvent value)? finishTest,
    TResult? Function(SetAttemptIdEvent value)? setAttemptId,
    TResult? Function(StartTimerEvent value)? startTimer,
    TResult? Function(IncrementTimerEvent value)? incrementTimer,
    TResult? Function(ResetTimerEvent value)? resetTimer,
  }) {
    return startTimer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartTestEvent value)? startTest,
    TResult Function(SubmitAnswerEvent value)? submitAnswer,
    TResult Function(ChangeSubmitAnswerEvent value)? setSubmitAnswerNull,
    TResult Function(FinishTestEvent value)? finishTest,
    TResult Function(SetAttemptIdEvent value)? setAttemptId,
    TResult Function(StartTimerEvent value)? startTimer,
    TResult Function(IncrementTimerEvent value)? incrementTimer,
    TResult Function(ResetTimerEvent value)? resetTimer,
    required TResult orElse(),
  }) {
    if (startTimer != null) {
      return startTimer(this);
    }
    return orElse();
  }
}

abstract class StartTimerEvent implements StarStopSumbitTestEvent {
  const factory StartTimerEvent() = _$StartTimerEventImpl;
}

/// @nodoc
abstract class _$$IncrementTimerEventImplCopyWith<$Res> {
  factory _$$IncrementTimerEventImplCopyWith(_$IncrementTimerEventImpl value,
          $Res Function(_$IncrementTimerEventImpl) then) =
      __$$IncrementTimerEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IncrementTimerEventImplCopyWithImpl<$Res>
    extends _$StarStopSumbitTestEventCopyWithImpl<$Res,
        _$IncrementTimerEventImpl>
    implements _$$IncrementTimerEventImplCopyWith<$Res> {
  __$$IncrementTimerEventImplCopyWithImpl(_$IncrementTimerEventImpl _value,
      $Res Function(_$IncrementTimerEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$IncrementTimerEventImpl implements IncrementTimerEvent {
  const _$IncrementTimerEventImpl();

  @override
  String toString() {
    return 'StarStopSumbitTestEvent.incrementTimer()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IncrementTimerEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String testId, TestMode testMode) startTest,
    required TResult Function(
            String attemptId, String questionId, List<String> selectedOptions)
        submitAnswer,
    required TResult Function() setSubmitAnswerNull,
    required TResult Function(String attemptId) finishTest,
    required TResult Function(String attemptId) setAttemptId,
    required TResult Function() startTimer,
    required TResult Function() incrementTimer,
    required TResult Function(bool isStopTimer) resetTimer,
  }) {
    return incrementTimer();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String testId, TestMode testMode)? startTest,
    TResult? Function(
            String attemptId, String questionId, List<String> selectedOptions)?
        submitAnswer,
    TResult? Function()? setSubmitAnswerNull,
    TResult? Function(String attemptId)? finishTest,
    TResult? Function(String attemptId)? setAttemptId,
    TResult? Function()? startTimer,
    TResult? Function()? incrementTimer,
    TResult? Function(bool isStopTimer)? resetTimer,
  }) {
    return incrementTimer?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String testId, TestMode testMode)? startTest,
    TResult Function(
            String attemptId, String questionId, List<String> selectedOptions)?
        submitAnswer,
    TResult Function()? setSubmitAnswerNull,
    TResult Function(String attemptId)? finishTest,
    TResult Function(String attemptId)? setAttemptId,
    TResult Function()? startTimer,
    TResult Function()? incrementTimer,
    TResult Function(bool isStopTimer)? resetTimer,
    required TResult orElse(),
  }) {
    if (incrementTimer != null) {
      return incrementTimer();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartTestEvent value) startTest,
    required TResult Function(SubmitAnswerEvent value) submitAnswer,
    required TResult Function(ChangeSubmitAnswerEvent value)
        setSubmitAnswerNull,
    required TResult Function(FinishTestEvent value) finishTest,
    required TResult Function(SetAttemptIdEvent value) setAttemptId,
    required TResult Function(StartTimerEvent value) startTimer,
    required TResult Function(IncrementTimerEvent value) incrementTimer,
    required TResult Function(ResetTimerEvent value) resetTimer,
  }) {
    return incrementTimer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartTestEvent value)? startTest,
    TResult? Function(SubmitAnswerEvent value)? submitAnswer,
    TResult? Function(ChangeSubmitAnswerEvent value)? setSubmitAnswerNull,
    TResult? Function(FinishTestEvent value)? finishTest,
    TResult? Function(SetAttemptIdEvent value)? setAttemptId,
    TResult? Function(StartTimerEvent value)? startTimer,
    TResult? Function(IncrementTimerEvent value)? incrementTimer,
    TResult? Function(ResetTimerEvent value)? resetTimer,
  }) {
    return incrementTimer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartTestEvent value)? startTest,
    TResult Function(SubmitAnswerEvent value)? submitAnswer,
    TResult Function(ChangeSubmitAnswerEvent value)? setSubmitAnswerNull,
    TResult Function(FinishTestEvent value)? finishTest,
    TResult Function(SetAttemptIdEvent value)? setAttemptId,
    TResult Function(StartTimerEvent value)? startTimer,
    TResult Function(IncrementTimerEvent value)? incrementTimer,
    TResult Function(ResetTimerEvent value)? resetTimer,
    required TResult orElse(),
  }) {
    if (incrementTimer != null) {
      return incrementTimer(this);
    }
    return orElse();
  }
}

abstract class IncrementTimerEvent implements StarStopSumbitTestEvent {
  const factory IncrementTimerEvent() = _$IncrementTimerEventImpl;
}

/// @nodoc
abstract class _$$ResetTimerEventImplCopyWith<$Res> {
  factory _$$ResetTimerEventImplCopyWith(_$ResetTimerEventImpl value,
          $Res Function(_$ResetTimerEventImpl) then) =
      __$$ResetTimerEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isStopTimer});
}

/// @nodoc
class __$$ResetTimerEventImplCopyWithImpl<$Res>
    extends _$StarStopSumbitTestEventCopyWithImpl<$Res, _$ResetTimerEventImpl>
    implements _$$ResetTimerEventImplCopyWith<$Res> {
  __$$ResetTimerEventImplCopyWithImpl(
      _$ResetTimerEventImpl _value, $Res Function(_$ResetTimerEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isStopTimer = null,
  }) {
    return _then(_$ResetTimerEventImpl(
      isStopTimer: null == isStopTimer
          ? _value.isStopTimer
          : isStopTimer // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ResetTimerEventImpl implements ResetTimerEvent {
  const _$ResetTimerEventImpl({this.isStopTimer = false});

  @override
  @JsonKey()
  final bool isStopTimer;

  @override
  String toString() {
    return 'StarStopSumbitTestEvent.resetTimer(isStopTimer: $isStopTimer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetTimerEventImpl &&
            (identical(other.isStopTimer, isStopTimer) ||
                other.isStopTimer == isStopTimer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isStopTimer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResetTimerEventImplCopyWith<_$ResetTimerEventImpl> get copyWith =>
      __$$ResetTimerEventImplCopyWithImpl<_$ResetTimerEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String testId, TestMode testMode) startTest,
    required TResult Function(
            String attemptId, String questionId, List<String> selectedOptions)
        submitAnswer,
    required TResult Function() setSubmitAnswerNull,
    required TResult Function(String attemptId) finishTest,
    required TResult Function(String attemptId) setAttemptId,
    required TResult Function() startTimer,
    required TResult Function() incrementTimer,
    required TResult Function(bool isStopTimer) resetTimer,
  }) {
    return resetTimer(isStopTimer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String testId, TestMode testMode)? startTest,
    TResult? Function(
            String attemptId, String questionId, List<String> selectedOptions)?
        submitAnswer,
    TResult? Function()? setSubmitAnswerNull,
    TResult? Function(String attemptId)? finishTest,
    TResult? Function(String attemptId)? setAttemptId,
    TResult? Function()? startTimer,
    TResult? Function()? incrementTimer,
    TResult? Function(bool isStopTimer)? resetTimer,
  }) {
    return resetTimer?.call(isStopTimer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String testId, TestMode testMode)? startTest,
    TResult Function(
            String attemptId, String questionId, List<String> selectedOptions)?
        submitAnswer,
    TResult Function()? setSubmitAnswerNull,
    TResult Function(String attemptId)? finishTest,
    TResult Function(String attemptId)? setAttemptId,
    TResult Function()? startTimer,
    TResult Function()? incrementTimer,
    TResult Function(bool isStopTimer)? resetTimer,
    required TResult orElse(),
  }) {
    if (resetTimer != null) {
      return resetTimer(isStopTimer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartTestEvent value) startTest,
    required TResult Function(SubmitAnswerEvent value) submitAnswer,
    required TResult Function(ChangeSubmitAnswerEvent value)
        setSubmitAnswerNull,
    required TResult Function(FinishTestEvent value) finishTest,
    required TResult Function(SetAttemptIdEvent value) setAttemptId,
    required TResult Function(StartTimerEvent value) startTimer,
    required TResult Function(IncrementTimerEvent value) incrementTimer,
    required TResult Function(ResetTimerEvent value) resetTimer,
  }) {
    return resetTimer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartTestEvent value)? startTest,
    TResult? Function(SubmitAnswerEvent value)? submitAnswer,
    TResult? Function(ChangeSubmitAnswerEvent value)? setSubmitAnswerNull,
    TResult? Function(FinishTestEvent value)? finishTest,
    TResult? Function(SetAttemptIdEvent value)? setAttemptId,
    TResult? Function(StartTimerEvent value)? startTimer,
    TResult? Function(IncrementTimerEvent value)? incrementTimer,
    TResult? Function(ResetTimerEvent value)? resetTimer,
  }) {
    return resetTimer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartTestEvent value)? startTest,
    TResult Function(SubmitAnswerEvent value)? submitAnswer,
    TResult Function(ChangeSubmitAnswerEvent value)? setSubmitAnswerNull,
    TResult Function(FinishTestEvent value)? finishTest,
    TResult Function(SetAttemptIdEvent value)? setAttemptId,
    TResult Function(StartTimerEvent value)? startTimer,
    TResult Function(IncrementTimerEvent value)? incrementTimer,
    TResult Function(ResetTimerEvent value)? resetTimer,
    required TResult orElse(),
  }) {
    if (resetTimer != null) {
      return resetTimer(this);
    }
    return orElse();
  }
}

abstract class ResetTimerEvent implements StarStopSumbitTestEvent {
  const factory ResetTimerEvent({final bool isStopTimer}) =
      _$ResetTimerEventImpl;

  bool get isStopTimer;
  @JsonKey(ignore: true)
  _$$ResetTimerEventImplCopyWith<_$ResetTimerEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
