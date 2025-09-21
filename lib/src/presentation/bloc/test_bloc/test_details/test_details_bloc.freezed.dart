// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TestDetailsState {
  RequestState get state => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  TestWithQuestions? get testQuestion => throw _privateConstructorUsedError;
  TestAttempt? get testDetails => throw _privateConstructorUsedError;
  int get currentIndex => throw _privateConstructorUsedError;
  int? get totalQuestions => throw _privateConstructorUsedError;
  List<String> get selectedAnswer => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TestDetailsStateCopyWith<TestDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestDetailsStateCopyWith<$Res> {
  factory $TestDetailsStateCopyWith(
          TestDetailsState value, $Res Function(TestDetailsState) then) =
      _$TestDetailsStateCopyWithImpl<$Res, TestDetailsState>;
  @useResult
  $Res call(
      {RequestState state,
      String message,
      TestWithQuestions? testQuestion,
      TestAttempt? testDetails,
      int currentIndex,
      int? totalQuestions,
      List<String> selectedAnswer});
}

/// @nodoc
class _$TestDetailsStateCopyWithImpl<$Res, $Val extends TestDetailsState>
    implements $TestDetailsStateCopyWith<$Res> {
  _$TestDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? message = null,
    Object? testQuestion = freezed,
    Object? testDetails = freezed,
    Object? currentIndex = null,
    Object? totalQuestions = freezed,
    Object? selectedAnswer = null,
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
      testQuestion: freezed == testQuestion
          ? _value.testQuestion
          : testQuestion // ignore: cast_nullable_to_non_nullable
              as TestWithQuestions?,
      testDetails: freezed == testDetails
          ? _value.testDetails
          : testDetails // ignore: cast_nullable_to_non_nullable
              as TestAttempt?,
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      totalQuestions: freezed == totalQuestions
          ? _value.totalQuestions
          : totalQuestions // ignore: cast_nullable_to_non_nullable
              as int?,
      selectedAnswer: null == selectedAnswer
          ? _value.selectedAnswer
          : selectedAnswer // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TestDetailsStateImplCopyWith<$Res>
    implements $TestDetailsStateCopyWith<$Res> {
  factory _$$TestDetailsStateImplCopyWith(_$TestDetailsStateImpl value,
          $Res Function(_$TestDetailsStateImpl) then) =
      __$$TestDetailsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RequestState state,
      String message,
      TestWithQuestions? testQuestion,
      TestAttempt? testDetails,
      int currentIndex,
      int? totalQuestions,
      List<String> selectedAnswer});
}

/// @nodoc
class __$$TestDetailsStateImplCopyWithImpl<$Res>
    extends _$TestDetailsStateCopyWithImpl<$Res, _$TestDetailsStateImpl>
    implements _$$TestDetailsStateImplCopyWith<$Res> {
  __$$TestDetailsStateImplCopyWithImpl(_$TestDetailsStateImpl _value,
      $Res Function(_$TestDetailsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? message = null,
    Object? testQuestion = freezed,
    Object? testDetails = freezed,
    Object? currentIndex = null,
    Object? totalQuestions = freezed,
    Object? selectedAnswer = null,
  }) {
    return _then(_$TestDetailsStateImpl(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as RequestState,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      testQuestion: freezed == testQuestion
          ? _value.testQuestion
          : testQuestion // ignore: cast_nullable_to_non_nullable
              as TestWithQuestions?,
      testDetails: freezed == testDetails
          ? _value.testDetails
          : testDetails // ignore: cast_nullable_to_non_nullable
              as TestAttempt?,
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      totalQuestions: freezed == totalQuestions
          ? _value.totalQuestions
          : totalQuestions // ignore: cast_nullable_to_non_nullable
              as int?,
      selectedAnswer: null == selectedAnswer
          ? _value._selectedAnswer
          : selectedAnswer // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$TestDetailsStateImpl implements _TestDetailsState {
  _$TestDetailsStateImpl(
      {required this.state,
      required this.message,
      required this.testQuestion,
      required this.testDetails,
      required this.currentIndex,
      required this.totalQuestions,
      required final List<String> selectedAnswer})
      : _selectedAnswer = selectedAnswer;

  @override
  final RequestState state;
  @override
  final String message;
  @override
  final TestWithQuestions? testQuestion;
  @override
  final TestAttempt? testDetails;
  @override
  final int currentIndex;
  @override
  final int? totalQuestions;
  final List<String> _selectedAnswer;
  @override
  List<String> get selectedAnswer {
    if (_selectedAnswer is EqualUnmodifiableListView) return _selectedAnswer;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedAnswer);
  }

  @override
  String toString() {
    return 'TestDetailsState(state: $state, message: $message, testQuestion: $testQuestion, testDetails: $testDetails, currentIndex: $currentIndex, totalQuestions: $totalQuestions, selectedAnswer: $selectedAnswer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TestDetailsStateImpl &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.testQuestion, testQuestion) ||
                other.testQuestion == testQuestion) &&
            (identical(other.testDetails, testDetails) ||
                other.testDetails == testDetails) &&
            (identical(other.currentIndex, currentIndex) ||
                other.currentIndex == currentIndex) &&
            (identical(other.totalQuestions, totalQuestions) ||
                other.totalQuestions == totalQuestions) &&
            const DeepCollectionEquality()
                .equals(other._selectedAnswer, _selectedAnswer));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      state,
      message,
      testQuestion,
      testDetails,
      currentIndex,
      totalQuestions,
      const DeepCollectionEquality().hash(_selectedAnswer));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TestDetailsStateImplCopyWith<_$TestDetailsStateImpl> get copyWith =>
      __$$TestDetailsStateImplCopyWithImpl<_$TestDetailsStateImpl>(
          this, _$identity);
}

abstract class _TestDetailsState implements TestDetailsState {
  factory _TestDetailsState(
      {required final RequestState state,
      required final String message,
      required final TestWithQuestions? testQuestion,
      required final TestAttempt? testDetails,
      required final int currentIndex,
      required final int? totalQuestions,
      required final List<String> selectedAnswer}) = _$TestDetailsStateImpl;

  @override
  RequestState get state;
  @override
  String get message;
  @override
  TestWithQuestions? get testQuestion;
  @override
  TestAttempt? get testDetails;
  @override
  int get currentIndex;
  @override
  int? get totalQuestions;
  @override
  List<String> get selectedAnswer;
  @override
  @JsonKey(ignore: true)
  _$$TestDetailsStateImplCopyWith<_$TestDetailsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TestDetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading, String attemptId) getTestDetails,
    required TResult Function(String testId) getTestQuestion,
    required TResult Function(int index) updateCurrentIndex,
    required TResult Function() initial,
    required TResult Function(String answer) addSelectedAnswer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading, String attemptId)? getTestDetails,
    TResult? Function(String testId)? getTestQuestion,
    TResult? Function(int index)? updateCurrentIndex,
    TResult? Function()? initial,
    TResult? Function(String answer)? addSelectedAnswer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, String attemptId)? getTestDetails,
    TResult Function(String testId)? getTestQuestion,
    TResult Function(int index)? updateCurrentIndex,
    TResult Function()? initial,
    TResult Function(String answer)? addSelectedAnswer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTestDetailsEvent value) getTestDetails,
    required TResult Function(GetTestQuestionEvent value) getTestQuestion,
    required TResult Function(UpdateCurrentIndexEvent value) updateCurrentIndex,
    required TResult Function(InitialEvent value) initial,
    required TResult Function(_AddSelectedAnswerEvent value) addSelectedAnswer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTestDetailsEvent value)? getTestDetails,
    TResult? Function(GetTestQuestionEvent value)? getTestQuestion,
    TResult? Function(UpdateCurrentIndexEvent value)? updateCurrentIndex,
    TResult? Function(InitialEvent value)? initial,
    TResult? Function(_AddSelectedAnswerEvent value)? addSelectedAnswer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTestDetailsEvent value)? getTestDetails,
    TResult Function(GetTestQuestionEvent value)? getTestQuestion,
    TResult Function(UpdateCurrentIndexEvent value)? updateCurrentIndex,
    TResult Function(InitialEvent value)? initial,
    TResult Function(_AddSelectedAnswerEvent value)? addSelectedAnswer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestDetailsEventCopyWith<$Res> {
  factory $TestDetailsEventCopyWith(
          TestDetailsEvent value, $Res Function(TestDetailsEvent) then) =
      _$TestDetailsEventCopyWithImpl<$Res, TestDetailsEvent>;
}

/// @nodoc
class _$TestDetailsEventCopyWithImpl<$Res, $Val extends TestDetailsEvent>
    implements $TestDetailsEventCopyWith<$Res> {
  _$TestDetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetTestDetailsEventImplCopyWith<$Res> {
  factory _$$GetTestDetailsEventImplCopyWith(_$GetTestDetailsEventImpl value,
          $Res Function(_$GetTestDetailsEventImpl) then) =
      __$$GetTestDetailsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isLoading, String attemptId});
}

/// @nodoc
class __$$GetTestDetailsEventImplCopyWithImpl<$Res>
    extends _$TestDetailsEventCopyWithImpl<$Res, _$GetTestDetailsEventImpl>
    implements _$$GetTestDetailsEventImplCopyWith<$Res> {
  __$$GetTestDetailsEventImplCopyWithImpl(_$GetTestDetailsEventImpl _value,
      $Res Function(_$GetTestDetailsEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? attemptId = null,
  }) {
    return _then(_$GetTestDetailsEventImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      attemptId: null == attemptId
          ? _value.attemptId
          : attemptId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetTestDetailsEventImpl implements GetTestDetailsEvent {
  const _$GetTestDetailsEventImpl(
      {this.isLoading = true, required this.attemptId});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String attemptId;

  @override
  String toString() {
    return 'TestDetailsEvent.getTestDetails(isLoading: $isLoading, attemptId: $attemptId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTestDetailsEventImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.attemptId, attemptId) ||
                other.attemptId == attemptId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, attemptId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTestDetailsEventImplCopyWith<_$GetTestDetailsEventImpl> get copyWith =>
      __$$GetTestDetailsEventImplCopyWithImpl<_$GetTestDetailsEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading, String attemptId) getTestDetails,
    required TResult Function(String testId) getTestQuestion,
    required TResult Function(int index) updateCurrentIndex,
    required TResult Function() initial,
    required TResult Function(String answer) addSelectedAnswer,
  }) {
    return getTestDetails(isLoading, attemptId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading, String attemptId)? getTestDetails,
    TResult? Function(String testId)? getTestQuestion,
    TResult? Function(int index)? updateCurrentIndex,
    TResult? Function()? initial,
    TResult? Function(String answer)? addSelectedAnswer,
  }) {
    return getTestDetails?.call(isLoading, attemptId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, String attemptId)? getTestDetails,
    TResult Function(String testId)? getTestQuestion,
    TResult Function(int index)? updateCurrentIndex,
    TResult Function()? initial,
    TResult Function(String answer)? addSelectedAnswer,
    required TResult orElse(),
  }) {
    if (getTestDetails != null) {
      return getTestDetails(isLoading, attemptId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTestDetailsEvent value) getTestDetails,
    required TResult Function(GetTestQuestionEvent value) getTestQuestion,
    required TResult Function(UpdateCurrentIndexEvent value) updateCurrentIndex,
    required TResult Function(InitialEvent value) initial,
    required TResult Function(_AddSelectedAnswerEvent value) addSelectedAnswer,
  }) {
    return getTestDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTestDetailsEvent value)? getTestDetails,
    TResult? Function(GetTestQuestionEvent value)? getTestQuestion,
    TResult? Function(UpdateCurrentIndexEvent value)? updateCurrentIndex,
    TResult? Function(InitialEvent value)? initial,
    TResult? Function(_AddSelectedAnswerEvent value)? addSelectedAnswer,
  }) {
    return getTestDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTestDetailsEvent value)? getTestDetails,
    TResult Function(GetTestQuestionEvent value)? getTestQuestion,
    TResult Function(UpdateCurrentIndexEvent value)? updateCurrentIndex,
    TResult Function(InitialEvent value)? initial,
    TResult Function(_AddSelectedAnswerEvent value)? addSelectedAnswer,
    required TResult orElse(),
  }) {
    if (getTestDetails != null) {
      return getTestDetails(this);
    }
    return orElse();
  }
}

abstract class GetTestDetailsEvent implements TestDetailsEvent {
  const factory GetTestDetailsEvent(
      {final bool isLoading,
      required final String attemptId}) = _$GetTestDetailsEventImpl;

  bool get isLoading;
  String get attemptId;
  @JsonKey(ignore: true)
  _$$GetTestDetailsEventImplCopyWith<_$GetTestDetailsEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetTestQuestionEventImplCopyWith<$Res> {
  factory _$$GetTestQuestionEventImplCopyWith(_$GetTestQuestionEventImpl value,
          $Res Function(_$GetTestQuestionEventImpl) then) =
      __$$GetTestQuestionEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String testId});
}

/// @nodoc
class __$$GetTestQuestionEventImplCopyWithImpl<$Res>
    extends _$TestDetailsEventCopyWithImpl<$Res, _$GetTestQuestionEventImpl>
    implements _$$GetTestQuestionEventImplCopyWith<$Res> {
  __$$GetTestQuestionEventImplCopyWithImpl(_$GetTestQuestionEventImpl _value,
      $Res Function(_$GetTestQuestionEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? testId = null,
  }) {
    return _then(_$GetTestQuestionEventImpl(
      testId: null == testId
          ? _value.testId
          : testId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetTestQuestionEventImpl implements GetTestQuestionEvent {
  const _$GetTestQuestionEventImpl({required this.testId});

  @override
  final String testId;

  @override
  String toString() {
    return 'TestDetailsEvent.getTestQuestion(testId: $testId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTestQuestionEventImpl &&
            (identical(other.testId, testId) || other.testId == testId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, testId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTestQuestionEventImplCopyWith<_$GetTestQuestionEventImpl>
      get copyWith =>
          __$$GetTestQuestionEventImplCopyWithImpl<_$GetTestQuestionEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading, String attemptId) getTestDetails,
    required TResult Function(String testId) getTestQuestion,
    required TResult Function(int index) updateCurrentIndex,
    required TResult Function() initial,
    required TResult Function(String answer) addSelectedAnswer,
  }) {
    return getTestQuestion(testId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading, String attemptId)? getTestDetails,
    TResult? Function(String testId)? getTestQuestion,
    TResult? Function(int index)? updateCurrentIndex,
    TResult? Function()? initial,
    TResult? Function(String answer)? addSelectedAnswer,
  }) {
    return getTestQuestion?.call(testId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, String attemptId)? getTestDetails,
    TResult Function(String testId)? getTestQuestion,
    TResult Function(int index)? updateCurrentIndex,
    TResult Function()? initial,
    TResult Function(String answer)? addSelectedAnswer,
    required TResult orElse(),
  }) {
    if (getTestQuestion != null) {
      return getTestQuestion(testId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTestDetailsEvent value) getTestDetails,
    required TResult Function(GetTestQuestionEvent value) getTestQuestion,
    required TResult Function(UpdateCurrentIndexEvent value) updateCurrentIndex,
    required TResult Function(InitialEvent value) initial,
    required TResult Function(_AddSelectedAnswerEvent value) addSelectedAnswer,
  }) {
    return getTestQuestion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTestDetailsEvent value)? getTestDetails,
    TResult? Function(GetTestQuestionEvent value)? getTestQuestion,
    TResult? Function(UpdateCurrentIndexEvent value)? updateCurrentIndex,
    TResult? Function(InitialEvent value)? initial,
    TResult? Function(_AddSelectedAnswerEvent value)? addSelectedAnswer,
  }) {
    return getTestQuestion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTestDetailsEvent value)? getTestDetails,
    TResult Function(GetTestQuestionEvent value)? getTestQuestion,
    TResult Function(UpdateCurrentIndexEvent value)? updateCurrentIndex,
    TResult Function(InitialEvent value)? initial,
    TResult Function(_AddSelectedAnswerEvent value)? addSelectedAnswer,
    required TResult orElse(),
  }) {
    if (getTestQuestion != null) {
      return getTestQuestion(this);
    }
    return orElse();
  }
}

abstract class GetTestQuestionEvent implements TestDetailsEvent {
  const factory GetTestQuestionEvent({required final String testId}) =
      _$GetTestQuestionEventImpl;

  String get testId;
  @JsonKey(ignore: true)
  _$$GetTestQuestionEventImplCopyWith<_$GetTestQuestionEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateCurrentIndexEventImplCopyWith<$Res> {
  factory _$$UpdateCurrentIndexEventImplCopyWith(
          _$UpdateCurrentIndexEventImpl value,
          $Res Function(_$UpdateCurrentIndexEventImpl) then) =
      __$$UpdateCurrentIndexEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$UpdateCurrentIndexEventImplCopyWithImpl<$Res>
    extends _$TestDetailsEventCopyWithImpl<$Res, _$UpdateCurrentIndexEventImpl>
    implements _$$UpdateCurrentIndexEventImplCopyWith<$Res> {
  __$$UpdateCurrentIndexEventImplCopyWithImpl(
      _$UpdateCurrentIndexEventImpl _value,
      $Res Function(_$UpdateCurrentIndexEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$UpdateCurrentIndexEventImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdateCurrentIndexEventImpl implements UpdateCurrentIndexEvent {
  const _$UpdateCurrentIndexEventImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'TestDetailsEvent.updateCurrentIndex(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCurrentIndexEventImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCurrentIndexEventImplCopyWith<_$UpdateCurrentIndexEventImpl>
      get copyWith => __$$UpdateCurrentIndexEventImplCopyWithImpl<
          _$UpdateCurrentIndexEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading, String attemptId) getTestDetails,
    required TResult Function(String testId) getTestQuestion,
    required TResult Function(int index) updateCurrentIndex,
    required TResult Function() initial,
    required TResult Function(String answer) addSelectedAnswer,
  }) {
    return updateCurrentIndex(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading, String attemptId)? getTestDetails,
    TResult? Function(String testId)? getTestQuestion,
    TResult? Function(int index)? updateCurrentIndex,
    TResult? Function()? initial,
    TResult? Function(String answer)? addSelectedAnswer,
  }) {
    return updateCurrentIndex?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, String attemptId)? getTestDetails,
    TResult Function(String testId)? getTestQuestion,
    TResult Function(int index)? updateCurrentIndex,
    TResult Function()? initial,
    TResult Function(String answer)? addSelectedAnswer,
    required TResult orElse(),
  }) {
    if (updateCurrentIndex != null) {
      return updateCurrentIndex(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTestDetailsEvent value) getTestDetails,
    required TResult Function(GetTestQuestionEvent value) getTestQuestion,
    required TResult Function(UpdateCurrentIndexEvent value) updateCurrentIndex,
    required TResult Function(InitialEvent value) initial,
    required TResult Function(_AddSelectedAnswerEvent value) addSelectedAnswer,
  }) {
    return updateCurrentIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTestDetailsEvent value)? getTestDetails,
    TResult? Function(GetTestQuestionEvent value)? getTestQuestion,
    TResult? Function(UpdateCurrentIndexEvent value)? updateCurrentIndex,
    TResult? Function(InitialEvent value)? initial,
    TResult? Function(_AddSelectedAnswerEvent value)? addSelectedAnswer,
  }) {
    return updateCurrentIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTestDetailsEvent value)? getTestDetails,
    TResult Function(GetTestQuestionEvent value)? getTestQuestion,
    TResult Function(UpdateCurrentIndexEvent value)? updateCurrentIndex,
    TResult Function(InitialEvent value)? initial,
    TResult Function(_AddSelectedAnswerEvent value)? addSelectedAnswer,
    required TResult orElse(),
  }) {
    if (updateCurrentIndex != null) {
      return updateCurrentIndex(this);
    }
    return orElse();
  }
}

abstract class UpdateCurrentIndexEvent implements TestDetailsEvent {
  const factory UpdateCurrentIndexEvent(final int index) =
      _$UpdateCurrentIndexEventImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$UpdateCurrentIndexEventImplCopyWith<_$UpdateCurrentIndexEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitialEventImplCopyWith<$Res> {
  factory _$$InitialEventImplCopyWith(
          _$InitialEventImpl value, $Res Function(_$InitialEventImpl) then) =
      __$$InitialEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialEventImplCopyWithImpl<$Res>
    extends _$TestDetailsEventCopyWithImpl<$Res, _$InitialEventImpl>
    implements _$$InitialEventImplCopyWith<$Res> {
  __$$InitialEventImplCopyWithImpl(
      _$InitialEventImpl _value, $Res Function(_$InitialEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialEventImpl implements InitialEvent {
  const _$InitialEventImpl();

  @override
  String toString() {
    return 'TestDetailsEvent.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading, String attemptId) getTestDetails,
    required TResult Function(String testId) getTestQuestion,
    required TResult Function(int index) updateCurrentIndex,
    required TResult Function() initial,
    required TResult Function(String answer) addSelectedAnswer,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading, String attemptId)? getTestDetails,
    TResult? Function(String testId)? getTestQuestion,
    TResult? Function(int index)? updateCurrentIndex,
    TResult? Function()? initial,
    TResult? Function(String answer)? addSelectedAnswer,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, String attemptId)? getTestDetails,
    TResult Function(String testId)? getTestQuestion,
    TResult Function(int index)? updateCurrentIndex,
    TResult Function()? initial,
    TResult Function(String answer)? addSelectedAnswer,
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
    required TResult Function(GetTestDetailsEvent value) getTestDetails,
    required TResult Function(GetTestQuestionEvent value) getTestQuestion,
    required TResult Function(UpdateCurrentIndexEvent value) updateCurrentIndex,
    required TResult Function(InitialEvent value) initial,
    required TResult Function(_AddSelectedAnswerEvent value) addSelectedAnswer,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTestDetailsEvent value)? getTestDetails,
    TResult? Function(GetTestQuestionEvent value)? getTestQuestion,
    TResult? Function(UpdateCurrentIndexEvent value)? updateCurrentIndex,
    TResult? Function(InitialEvent value)? initial,
    TResult? Function(_AddSelectedAnswerEvent value)? addSelectedAnswer,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTestDetailsEvent value)? getTestDetails,
    TResult Function(GetTestQuestionEvent value)? getTestQuestion,
    TResult Function(UpdateCurrentIndexEvent value)? updateCurrentIndex,
    TResult Function(InitialEvent value)? initial,
    TResult Function(_AddSelectedAnswerEvent value)? addSelectedAnswer,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialEvent implements TestDetailsEvent {
  const factory InitialEvent() = _$InitialEventImpl;
}

/// @nodoc
abstract class _$$AddSelectedAnswerEventImplCopyWith<$Res> {
  factory _$$AddSelectedAnswerEventImplCopyWith(
          _$AddSelectedAnswerEventImpl value,
          $Res Function(_$AddSelectedAnswerEventImpl) then) =
      __$$AddSelectedAnswerEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String answer});
}

/// @nodoc
class __$$AddSelectedAnswerEventImplCopyWithImpl<$Res>
    extends _$TestDetailsEventCopyWithImpl<$Res, _$AddSelectedAnswerEventImpl>
    implements _$$AddSelectedAnswerEventImplCopyWith<$Res> {
  __$$AddSelectedAnswerEventImplCopyWithImpl(
      _$AddSelectedAnswerEventImpl _value,
      $Res Function(_$AddSelectedAnswerEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? answer = null,
  }) {
    return _then(_$AddSelectedAnswerEventImpl(
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddSelectedAnswerEventImpl implements _AddSelectedAnswerEvent {
  const _$AddSelectedAnswerEventImpl({required this.answer});

  @override
  final String answer;

  @override
  String toString() {
    return 'TestDetailsEvent.addSelectedAnswer(answer: $answer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddSelectedAnswerEventImpl &&
            (identical(other.answer, answer) || other.answer == answer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, answer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddSelectedAnswerEventImplCopyWith<_$AddSelectedAnswerEventImpl>
      get copyWith => __$$AddSelectedAnswerEventImplCopyWithImpl<
          _$AddSelectedAnswerEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading, String attemptId) getTestDetails,
    required TResult Function(String testId) getTestQuestion,
    required TResult Function(int index) updateCurrentIndex,
    required TResult Function() initial,
    required TResult Function(String answer) addSelectedAnswer,
  }) {
    return addSelectedAnswer(answer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading, String attemptId)? getTestDetails,
    TResult? Function(String testId)? getTestQuestion,
    TResult? Function(int index)? updateCurrentIndex,
    TResult? Function()? initial,
    TResult? Function(String answer)? addSelectedAnswer,
  }) {
    return addSelectedAnswer?.call(answer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, String attemptId)? getTestDetails,
    TResult Function(String testId)? getTestQuestion,
    TResult Function(int index)? updateCurrentIndex,
    TResult Function()? initial,
    TResult Function(String answer)? addSelectedAnswer,
    required TResult orElse(),
  }) {
    if (addSelectedAnswer != null) {
      return addSelectedAnswer(answer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTestDetailsEvent value) getTestDetails,
    required TResult Function(GetTestQuestionEvent value) getTestQuestion,
    required TResult Function(UpdateCurrentIndexEvent value) updateCurrentIndex,
    required TResult Function(InitialEvent value) initial,
    required TResult Function(_AddSelectedAnswerEvent value) addSelectedAnswer,
  }) {
    return addSelectedAnswer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTestDetailsEvent value)? getTestDetails,
    TResult? Function(GetTestQuestionEvent value)? getTestQuestion,
    TResult? Function(UpdateCurrentIndexEvent value)? updateCurrentIndex,
    TResult? Function(InitialEvent value)? initial,
    TResult? Function(_AddSelectedAnswerEvent value)? addSelectedAnswer,
  }) {
    return addSelectedAnswer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTestDetailsEvent value)? getTestDetails,
    TResult Function(GetTestQuestionEvent value)? getTestQuestion,
    TResult Function(UpdateCurrentIndexEvent value)? updateCurrentIndex,
    TResult Function(InitialEvent value)? initial,
    TResult Function(_AddSelectedAnswerEvent value)? addSelectedAnswer,
    required TResult orElse(),
  }) {
    if (addSelectedAnswer != null) {
      return addSelectedAnswer(this);
    }
    return orElse();
  }
}

abstract class _AddSelectedAnswerEvent implements TestDetailsEvent {
  const factory _AddSelectedAnswerEvent({required final String answer}) =
      _$AddSelectedAnswerEventImpl;

  String get answer;
  @JsonKey(ignore: true)
  _$$AddSelectedAnswerEventImplCopyWith<_$AddSelectedAnswerEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}
