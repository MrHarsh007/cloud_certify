// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test_history_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TestHistoryState {
  RequestState get state => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  TestStatusEnum? get status => throw _privateConstructorUsedError;
  String? get searchQuery => throw _privateConstructorUsedError;
  int get rowPerPages => throw _privateConstructorUsedError;
  List<TestAttemptSummary> get testHistory =>
      throw _privateConstructorUsedError;
  List<TestAttemptSummary> get searchTestHistory =>
      throw _privateConstructorUsedError;
  UserStatistics? get userStatistics => throw _privateConstructorUsedError;
  int get pageNumber => throw _privateConstructorUsedError;
  String? get lastDocId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TestHistoryStateCopyWith<TestHistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestHistoryStateCopyWith<$Res> {
  factory $TestHistoryStateCopyWith(
          TestHistoryState value, $Res Function(TestHistoryState) then) =
      _$TestHistoryStateCopyWithImpl<$Res, TestHistoryState>;
  @useResult
  $Res call(
      {RequestState state,
      String message,
      TestStatusEnum? status,
      String? searchQuery,
      int rowPerPages,
      List<TestAttemptSummary> testHistory,
      List<TestAttemptSummary> searchTestHistory,
      UserStatistics? userStatistics,
      int pageNumber,
      String? lastDocId});
}

/// @nodoc
class _$TestHistoryStateCopyWithImpl<$Res, $Val extends TestHistoryState>
    implements $TestHistoryStateCopyWith<$Res> {
  _$TestHistoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? message = null,
    Object? status = freezed,
    Object? searchQuery = freezed,
    Object? rowPerPages = null,
    Object? testHistory = null,
    Object? searchTestHistory = null,
    Object? userStatistics = freezed,
    Object? pageNumber = null,
    Object? lastDocId = freezed,
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
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TestStatusEnum?,
      searchQuery: freezed == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String?,
      rowPerPages: null == rowPerPages
          ? _value.rowPerPages
          : rowPerPages // ignore: cast_nullable_to_non_nullable
              as int,
      testHistory: null == testHistory
          ? _value.testHistory
          : testHistory // ignore: cast_nullable_to_non_nullable
              as List<TestAttemptSummary>,
      searchTestHistory: null == searchTestHistory
          ? _value.searchTestHistory
          : searchTestHistory // ignore: cast_nullable_to_non_nullable
              as List<TestAttemptSummary>,
      userStatistics: freezed == userStatistics
          ? _value.userStatistics
          : userStatistics // ignore: cast_nullable_to_non_nullable
              as UserStatistics?,
      pageNumber: null == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      lastDocId: freezed == lastDocId
          ? _value.lastDocId
          : lastDocId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TestHistoryStateImplCopyWith<$Res>
    implements $TestHistoryStateCopyWith<$Res> {
  factory _$$TestHistoryStateImplCopyWith(_$TestHistoryStateImpl value,
          $Res Function(_$TestHistoryStateImpl) then) =
      __$$TestHistoryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RequestState state,
      String message,
      TestStatusEnum? status,
      String? searchQuery,
      int rowPerPages,
      List<TestAttemptSummary> testHistory,
      List<TestAttemptSummary> searchTestHistory,
      UserStatistics? userStatistics,
      int pageNumber,
      String? lastDocId});
}

/// @nodoc
class __$$TestHistoryStateImplCopyWithImpl<$Res>
    extends _$TestHistoryStateCopyWithImpl<$Res, _$TestHistoryStateImpl>
    implements _$$TestHistoryStateImplCopyWith<$Res> {
  __$$TestHistoryStateImplCopyWithImpl(_$TestHistoryStateImpl _value,
      $Res Function(_$TestHistoryStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? message = null,
    Object? status = freezed,
    Object? searchQuery = freezed,
    Object? rowPerPages = null,
    Object? testHistory = null,
    Object? searchTestHistory = null,
    Object? userStatistics = freezed,
    Object? pageNumber = null,
    Object? lastDocId = freezed,
  }) {
    return _then(_$TestHistoryStateImpl(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as RequestState,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TestStatusEnum?,
      searchQuery: freezed == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String?,
      rowPerPages: null == rowPerPages
          ? _value.rowPerPages
          : rowPerPages // ignore: cast_nullable_to_non_nullable
              as int,
      testHistory: null == testHistory
          ? _value._testHistory
          : testHistory // ignore: cast_nullable_to_non_nullable
              as List<TestAttemptSummary>,
      searchTestHistory: null == searchTestHistory
          ? _value._searchTestHistory
          : searchTestHistory // ignore: cast_nullable_to_non_nullable
              as List<TestAttemptSummary>,
      userStatistics: freezed == userStatistics
          ? _value.userStatistics
          : userStatistics // ignore: cast_nullable_to_non_nullable
              as UserStatistics?,
      pageNumber: null == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      lastDocId: freezed == lastDocId
          ? _value.lastDocId
          : lastDocId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$TestHistoryStateImpl implements _TestHistoryState {
  _$TestHistoryStateImpl(
      {required this.state,
      required this.message,
      required this.status,
      required this.searchQuery,
      required this.rowPerPages,
      required final List<TestAttemptSummary> testHistory,
      required final List<TestAttemptSummary> searchTestHistory,
      required this.userStatistics,
      required this.pageNumber,
      required this.lastDocId})
      : _testHistory = testHistory,
        _searchTestHistory = searchTestHistory;

  @override
  final RequestState state;
  @override
  final String message;
  @override
  final TestStatusEnum? status;
  @override
  final String? searchQuery;
  @override
  final int rowPerPages;
  final List<TestAttemptSummary> _testHistory;
  @override
  List<TestAttemptSummary> get testHistory {
    if (_testHistory is EqualUnmodifiableListView) return _testHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_testHistory);
  }

  final List<TestAttemptSummary> _searchTestHistory;
  @override
  List<TestAttemptSummary> get searchTestHistory {
    if (_searchTestHistory is EqualUnmodifiableListView)
      return _searchTestHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchTestHistory);
  }

  @override
  final UserStatistics? userStatistics;
  @override
  final int pageNumber;
  @override
  final String? lastDocId;

  @override
  String toString() {
    return 'TestHistoryState(state: $state, message: $message, status: $status, searchQuery: $searchQuery, rowPerPages: $rowPerPages, testHistory: $testHistory, searchTestHistory: $searchTestHistory, userStatistics: $userStatistics, pageNumber: $pageNumber, lastDocId: $lastDocId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TestHistoryStateImpl &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery) &&
            (identical(other.rowPerPages, rowPerPages) ||
                other.rowPerPages == rowPerPages) &&
            const DeepCollectionEquality()
                .equals(other._testHistory, _testHistory) &&
            const DeepCollectionEquality()
                .equals(other._searchTestHistory, _searchTestHistory) &&
            (identical(other.userStatistics, userStatistics) ||
                other.userStatistics == userStatistics) &&
            (identical(other.pageNumber, pageNumber) ||
                other.pageNumber == pageNumber) &&
            (identical(other.lastDocId, lastDocId) ||
                other.lastDocId == lastDocId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      state,
      message,
      status,
      searchQuery,
      rowPerPages,
      const DeepCollectionEquality().hash(_testHistory),
      const DeepCollectionEquality().hash(_searchTestHistory),
      userStatistics,
      pageNumber,
      lastDocId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TestHistoryStateImplCopyWith<_$TestHistoryStateImpl> get copyWith =>
      __$$TestHistoryStateImplCopyWithImpl<_$TestHistoryStateImpl>(
          this, _$identity);
}

abstract class _TestHistoryState implements TestHistoryState {
  factory _TestHistoryState(
      {required final RequestState state,
      required final String message,
      required final TestStatusEnum? status,
      required final String? searchQuery,
      required final int rowPerPages,
      required final List<TestAttemptSummary> testHistory,
      required final List<TestAttemptSummary> searchTestHistory,
      required final UserStatistics? userStatistics,
      required final int pageNumber,
      required final String? lastDocId}) = _$TestHistoryStateImpl;

  @override
  RequestState get state;
  @override
  String get message;
  @override
  TestStatusEnum? get status;
  @override
  String? get searchQuery;
  @override
  int get rowPerPages;
  @override
  List<TestAttemptSummary> get testHistory;
  @override
  List<TestAttemptSummary> get searchTestHistory;
  @override
  UserStatistics? get userStatistics;
  @override
  int get pageNumber;
  @override
  String? get lastDocId;
  @override
  @JsonKey(ignore: true)
  _$$TestHistoryStateImplCopyWith<_$TestHistoryStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TestHistoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String? searchQuery, bool fetchMore)
        getTestHistory,
    required TResult Function(String? query) changeSearchQuery,
    required TResult Function() resetSearchTestHistory,
    required TResult Function(int rowPerPage) changeRowPerPage,
    required TResult Function() getUserStatistics,
    required TResult Function(int? pageNumber) changePageNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String? searchQuery, bool fetchMore)? getTestHistory,
    TResult? Function(String? query)? changeSearchQuery,
    TResult? Function()? resetSearchTestHistory,
    TResult? Function(int rowPerPage)? changeRowPerPage,
    TResult? Function()? getUserStatistics,
    TResult? Function(int? pageNumber)? changePageNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String? searchQuery, bool fetchMore)? getTestHistory,
    TResult Function(String? query)? changeSearchQuery,
    TResult Function()? resetSearchTestHistory,
    TResult Function(int rowPerPage)? changeRowPerPage,
    TResult Function()? getUserStatistics,
    TResult Function(int? pageNumber)? changePageNumber,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetTestHistory value) getTestHistory,
    required TResult Function(_ChangeSearchQuery value) changeSearchQuery,
    required TResult Function(_ResetSearchTestHistory value)
        resetSearchTestHistory,
    required TResult Function(_ChangeRowPerPage value) changeRowPerPage,
    required TResult Function(_GetUserStatistics value) getUserStatistics,
    required TResult Function(_ChangePageNumber value) changePageNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetTestHistory value)? getTestHistory,
    TResult? Function(_ChangeSearchQuery value)? changeSearchQuery,
    TResult? Function(_ResetSearchTestHistory value)? resetSearchTestHistory,
    TResult? Function(_ChangeRowPerPage value)? changeRowPerPage,
    TResult? Function(_GetUserStatistics value)? getUserStatistics,
    TResult? Function(_ChangePageNumber value)? changePageNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetTestHistory value)? getTestHistory,
    TResult Function(_ChangeSearchQuery value)? changeSearchQuery,
    TResult Function(_ResetSearchTestHistory value)? resetSearchTestHistory,
    TResult Function(_ChangeRowPerPage value)? changeRowPerPage,
    TResult Function(_GetUserStatistics value)? getUserStatistics,
    TResult Function(_ChangePageNumber value)? changePageNumber,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestHistoryEventCopyWith<$Res> {
  factory $TestHistoryEventCopyWith(
          TestHistoryEvent value, $Res Function(TestHistoryEvent) then) =
      _$TestHistoryEventCopyWithImpl<$Res, TestHistoryEvent>;
}

/// @nodoc
class _$TestHistoryEventCopyWithImpl<$Res, $Val extends TestHistoryEvent>
    implements $TestHistoryEventCopyWith<$Res> {
  _$TestHistoryEventCopyWithImpl(this._value, this._then);

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
    extends _$TestHistoryEventCopyWithImpl<$Res, _$InitialImpl>
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
    return 'TestHistoryEvent.initial()';
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
    required TResult Function(String? searchQuery, bool fetchMore)
        getTestHistory,
    required TResult Function(String? query) changeSearchQuery,
    required TResult Function() resetSearchTestHistory,
    required TResult Function(int rowPerPage) changeRowPerPage,
    required TResult Function() getUserStatistics,
    required TResult Function(int? pageNumber) changePageNumber,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String? searchQuery, bool fetchMore)? getTestHistory,
    TResult? Function(String? query)? changeSearchQuery,
    TResult? Function()? resetSearchTestHistory,
    TResult? Function(int rowPerPage)? changeRowPerPage,
    TResult? Function()? getUserStatistics,
    TResult? Function(int? pageNumber)? changePageNumber,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String? searchQuery, bool fetchMore)? getTestHistory,
    TResult Function(String? query)? changeSearchQuery,
    TResult Function()? resetSearchTestHistory,
    TResult Function(int rowPerPage)? changeRowPerPage,
    TResult Function()? getUserStatistics,
    TResult Function(int? pageNumber)? changePageNumber,
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
    required TResult Function(_GetTestHistory value) getTestHistory,
    required TResult Function(_ChangeSearchQuery value) changeSearchQuery,
    required TResult Function(_ResetSearchTestHistory value)
        resetSearchTestHistory,
    required TResult Function(_ChangeRowPerPage value) changeRowPerPage,
    required TResult Function(_GetUserStatistics value) getUserStatistics,
    required TResult Function(_ChangePageNumber value) changePageNumber,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetTestHistory value)? getTestHistory,
    TResult? Function(_ChangeSearchQuery value)? changeSearchQuery,
    TResult? Function(_ResetSearchTestHistory value)? resetSearchTestHistory,
    TResult? Function(_ChangeRowPerPage value)? changeRowPerPage,
    TResult? Function(_GetUserStatistics value)? getUserStatistics,
    TResult? Function(_ChangePageNumber value)? changePageNumber,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetTestHistory value)? getTestHistory,
    TResult Function(_ChangeSearchQuery value)? changeSearchQuery,
    TResult Function(_ResetSearchTestHistory value)? resetSearchTestHistory,
    TResult Function(_ChangeRowPerPage value)? changeRowPerPage,
    TResult Function(_GetUserStatistics value)? getUserStatistics,
    TResult Function(_ChangePageNumber value)? changePageNumber,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TestHistoryEvent {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$GetTestHistoryImplCopyWith<$Res> {
  factory _$$GetTestHistoryImplCopyWith(_$GetTestHistoryImpl value,
          $Res Function(_$GetTestHistoryImpl) then) =
      __$$GetTestHistoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? searchQuery, bool fetchMore});
}

/// @nodoc
class __$$GetTestHistoryImplCopyWithImpl<$Res>
    extends _$TestHistoryEventCopyWithImpl<$Res, _$GetTestHistoryImpl>
    implements _$$GetTestHistoryImplCopyWith<$Res> {
  __$$GetTestHistoryImplCopyWithImpl(
      _$GetTestHistoryImpl _value, $Res Function(_$GetTestHistoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchQuery = freezed,
    Object? fetchMore = null,
  }) {
    return _then(_$GetTestHistoryImpl(
      searchQuery: freezed == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String?,
      fetchMore: null == fetchMore
          ? _value.fetchMore
          : fetchMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$GetTestHistoryImpl implements _GetTestHistory {
  const _$GetTestHistoryImpl({this.searchQuery, this.fetchMore = false});

  @override
  final String? searchQuery;
  @override
  @JsonKey()
  final bool fetchMore;

  @override
  String toString() {
    return 'TestHistoryEvent.getTestHistory(searchQuery: $searchQuery, fetchMore: $fetchMore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTestHistoryImpl &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery) &&
            (identical(other.fetchMore, fetchMore) ||
                other.fetchMore == fetchMore));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchQuery, fetchMore);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTestHistoryImplCopyWith<_$GetTestHistoryImpl> get copyWith =>
      __$$GetTestHistoryImplCopyWithImpl<_$GetTestHistoryImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String? searchQuery, bool fetchMore)
        getTestHistory,
    required TResult Function(String? query) changeSearchQuery,
    required TResult Function() resetSearchTestHistory,
    required TResult Function(int rowPerPage) changeRowPerPage,
    required TResult Function() getUserStatistics,
    required TResult Function(int? pageNumber) changePageNumber,
  }) {
    return getTestHistory(searchQuery, fetchMore);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String? searchQuery, bool fetchMore)? getTestHistory,
    TResult? Function(String? query)? changeSearchQuery,
    TResult? Function()? resetSearchTestHistory,
    TResult? Function(int rowPerPage)? changeRowPerPage,
    TResult? Function()? getUserStatistics,
    TResult? Function(int? pageNumber)? changePageNumber,
  }) {
    return getTestHistory?.call(searchQuery, fetchMore);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String? searchQuery, bool fetchMore)? getTestHistory,
    TResult Function(String? query)? changeSearchQuery,
    TResult Function()? resetSearchTestHistory,
    TResult Function(int rowPerPage)? changeRowPerPage,
    TResult Function()? getUserStatistics,
    TResult Function(int? pageNumber)? changePageNumber,
    required TResult orElse(),
  }) {
    if (getTestHistory != null) {
      return getTestHistory(searchQuery, fetchMore);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetTestHistory value) getTestHistory,
    required TResult Function(_ChangeSearchQuery value) changeSearchQuery,
    required TResult Function(_ResetSearchTestHistory value)
        resetSearchTestHistory,
    required TResult Function(_ChangeRowPerPage value) changeRowPerPage,
    required TResult Function(_GetUserStatistics value) getUserStatistics,
    required TResult Function(_ChangePageNumber value) changePageNumber,
  }) {
    return getTestHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetTestHistory value)? getTestHistory,
    TResult? Function(_ChangeSearchQuery value)? changeSearchQuery,
    TResult? Function(_ResetSearchTestHistory value)? resetSearchTestHistory,
    TResult? Function(_ChangeRowPerPage value)? changeRowPerPage,
    TResult? Function(_GetUserStatistics value)? getUserStatistics,
    TResult? Function(_ChangePageNumber value)? changePageNumber,
  }) {
    return getTestHistory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetTestHistory value)? getTestHistory,
    TResult Function(_ChangeSearchQuery value)? changeSearchQuery,
    TResult Function(_ResetSearchTestHistory value)? resetSearchTestHistory,
    TResult Function(_ChangeRowPerPage value)? changeRowPerPage,
    TResult Function(_GetUserStatistics value)? getUserStatistics,
    TResult Function(_ChangePageNumber value)? changePageNumber,
    required TResult orElse(),
  }) {
    if (getTestHistory != null) {
      return getTestHistory(this);
    }
    return orElse();
  }
}

abstract class _GetTestHistory implements TestHistoryEvent {
  const factory _GetTestHistory(
      {final String? searchQuery, final bool fetchMore}) = _$GetTestHistoryImpl;

  String? get searchQuery;
  bool get fetchMore;
  @JsonKey(ignore: true)
  _$$GetTestHistoryImplCopyWith<_$GetTestHistoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeSearchQueryImplCopyWith<$Res> {
  factory _$$ChangeSearchQueryImplCopyWith(_$ChangeSearchQueryImpl value,
          $Res Function(_$ChangeSearchQueryImpl) then) =
      __$$ChangeSearchQueryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? query});
}

/// @nodoc
class __$$ChangeSearchQueryImplCopyWithImpl<$Res>
    extends _$TestHistoryEventCopyWithImpl<$Res, _$ChangeSearchQueryImpl>
    implements _$$ChangeSearchQueryImplCopyWith<$Res> {
  __$$ChangeSearchQueryImplCopyWithImpl(_$ChangeSearchQueryImpl _value,
      $Res Function(_$ChangeSearchQueryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(_$ChangeSearchQueryImpl(
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ChangeSearchQueryImpl implements _ChangeSearchQuery {
  const _$ChangeSearchQueryImpl({this.query});

  @override
  final String? query;

  @override
  String toString() {
    return 'TestHistoryEvent.changeSearchQuery(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeSearchQueryImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeSearchQueryImplCopyWith<_$ChangeSearchQueryImpl> get copyWith =>
      __$$ChangeSearchQueryImplCopyWithImpl<_$ChangeSearchQueryImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String? searchQuery, bool fetchMore)
        getTestHistory,
    required TResult Function(String? query) changeSearchQuery,
    required TResult Function() resetSearchTestHistory,
    required TResult Function(int rowPerPage) changeRowPerPage,
    required TResult Function() getUserStatistics,
    required TResult Function(int? pageNumber) changePageNumber,
  }) {
    return changeSearchQuery(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String? searchQuery, bool fetchMore)? getTestHistory,
    TResult? Function(String? query)? changeSearchQuery,
    TResult? Function()? resetSearchTestHistory,
    TResult? Function(int rowPerPage)? changeRowPerPage,
    TResult? Function()? getUserStatistics,
    TResult? Function(int? pageNumber)? changePageNumber,
  }) {
    return changeSearchQuery?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String? searchQuery, bool fetchMore)? getTestHistory,
    TResult Function(String? query)? changeSearchQuery,
    TResult Function()? resetSearchTestHistory,
    TResult Function(int rowPerPage)? changeRowPerPage,
    TResult Function()? getUserStatistics,
    TResult Function(int? pageNumber)? changePageNumber,
    required TResult orElse(),
  }) {
    if (changeSearchQuery != null) {
      return changeSearchQuery(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetTestHistory value) getTestHistory,
    required TResult Function(_ChangeSearchQuery value) changeSearchQuery,
    required TResult Function(_ResetSearchTestHistory value)
        resetSearchTestHistory,
    required TResult Function(_ChangeRowPerPage value) changeRowPerPage,
    required TResult Function(_GetUserStatistics value) getUserStatistics,
    required TResult Function(_ChangePageNumber value) changePageNumber,
  }) {
    return changeSearchQuery(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetTestHistory value)? getTestHistory,
    TResult? Function(_ChangeSearchQuery value)? changeSearchQuery,
    TResult? Function(_ResetSearchTestHistory value)? resetSearchTestHistory,
    TResult? Function(_ChangeRowPerPage value)? changeRowPerPage,
    TResult? Function(_GetUserStatistics value)? getUserStatistics,
    TResult? Function(_ChangePageNumber value)? changePageNumber,
  }) {
    return changeSearchQuery?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetTestHistory value)? getTestHistory,
    TResult Function(_ChangeSearchQuery value)? changeSearchQuery,
    TResult Function(_ResetSearchTestHistory value)? resetSearchTestHistory,
    TResult Function(_ChangeRowPerPage value)? changeRowPerPage,
    TResult Function(_GetUserStatistics value)? getUserStatistics,
    TResult Function(_ChangePageNumber value)? changePageNumber,
    required TResult orElse(),
  }) {
    if (changeSearchQuery != null) {
      return changeSearchQuery(this);
    }
    return orElse();
  }
}

abstract class _ChangeSearchQuery implements TestHistoryEvent {
  const factory _ChangeSearchQuery({final String? query}) =
      _$ChangeSearchQueryImpl;

  String? get query;
  @JsonKey(ignore: true)
  _$$ChangeSearchQueryImplCopyWith<_$ChangeSearchQueryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetSearchTestHistoryImplCopyWith<$Res> {
  factory _$$ResetSearchTestHistoryImplCopyWith(
          _$ResetSearchTestHistoryImpl value,
          $Res Function(_$ResetSearchTestHistoryImpl) then) =
      __$$ResetSearchTestHistoryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetSearchTestHistoryImplCopyWithImpl<$Res>
    extends _$TestHistoryEventCopyWithImpl<$Res, _$ResetSearchTestHistoryImpl>
    implements _$$ResetSearchTestHistoryImplCopyWith<$Res> {
  __$$ResetSearchTestHistoryImplCopyWithImpl(
      _$ResetSearchTestHistoryImpl _value,
      $Res Function(_$ResetSearchTestHistoryImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResetSearchTestHistoryImpl implements _ResetSearchTestHistory {
  const _$ResetSearchTestHistoryImpl();

  @override
  String toString() {
    return 'TestHistoryEvent.resetSearchTestHistory()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetSearchTestHistoryImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String? searchQuery, bool fetchMore)
        getTestHistory,
    required TResult Function(String? query) changeSearchQuery,
    required TResult Function() resetSearchTestHistory,
    required TResult Function(int rowPerPage) changeRowPerPage,
    required TResult Function() getUserStatistics,
    required TResult Function(int? pageNumber) changePageNumber,
  }) {
    return resetSearchTestHistory();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String? searchQuery, bool fetchMore)? getTestHistory,
    TResult? Function(String? query)? changeSearchQuery,
    TResult? Function()? resetSearchTestHistory,
    TResult? Function(int rowPerPage)? changeRowPerPage,
    TResult? Function()? getUserStatistics,
    TResult? Function(int? pageNumber)? changePageNumber,
  }) {
    return resetSearchTestHistory?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String? searchQuery, bool fetchMore)? getTestHistory,
    TResult Function(String? query)? changeSearchQuery,
    TResult Function()? resetSearchTestHistory,
    TResult Function(int rowPerPage)? changeRowPerPage,
    TResult Function()? getUserStatistics,
    TResult Function(int? pageNumber)? changePageNumber,
    required TResult orElse(),
  }) {
    if (resetSearchTestHistory != null) {
      return resetSearchTestHistory();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetTestHistory value) getTestHistory,
    required TResult Function(_ChangeSearchQuery value) changeSearchQuery,
    required TResult Function(_ResetSearchTestHistory value)
        resetSearchTestHistory,
    required TResult Function(_ChangeRowPerPage value) changeRowPerPage,
    required TResult Function(_GetUserStatistics value) getUserStatistics,
    required TResult Function(_ChangePageNumber value) changePageNumber,
  }) {
    return resetSearchTestHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetTestHistory value)? getTestHistory,
    TResult? Function(_ChangeSearchQuery value)? changeSearchQuery,
    TResult? Function(_ResetSearchTestHistory value)? resetSearchTestHistory,
    TResult? Function(_ChangeRowPerPage value)? changeRowPerPage,
    TResult? Function(_GetUserStatistics value)? getUserStatistics,
    TResult? Function(_ChangePageNumber value)? changePageNumber,
  }) {
    return resetSearchTestHistory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetTestHistory value)? getTestHistory,
    TResult Function(_ChangeSearchQuery value)? changeSearchQuery,
    TResult Function(_ResetSearchTestHistory value)? resetSearchTestHistory,
    TResult Function(_ChangeRowPerPage value)? changeRowPerPage,
    TResult Function(_GetUserStatistics value)? getUserStatistics,
    TResult Function(_ChangePageNumber value)? changePageNumber,
    required TResult orElse(),
  }) {
    if (resetSearchTestHistory != null) {
      return resetSearchTestHistory(this);
    }
    return orElse();
  }
}

abstract class _ResetSearchTestHistory implements TestHistoryEvent {
  const factory _ResetSearchTestHistory() = _$ResetSearchTestHistoryImpl;
}

/// @nodoc
abstract class _$$ChangeRowPerPageImplCopyWith<$Res> {
  factory _$$ChangeRowPerPageImplCopyWith(_$ChangeRowPerPageImpl value,
          $Res Function(_$ChangeRowPerPageImpl) then) =
      __$$ChangeRowPerPageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int rowPerPage});
}

/// @nodoc
class __$$ChangeRowPerPageImplCopyWithImpl<$Res>
    extends _$TestHistoryEventCopyWithImpl<$Res, _$ChangeRowPerPageImpl>
    implements _$$ChangeRowPerPageImplCopyWith<$Res> {
  __$$ChangeRowPerPageImplCopyWithImpl(_$ChangeRowPerPageImpl _value,
      $Res Function(_$ChangeRowPerPageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rowPerPage = null,
  }) {
    return _then(_$ChangeRowPerPageImpl(
      rowPerPage: null == rowPerPage
          ? _value.rowPerPage
          : rowPerPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangeRowPerPageImpl implements _ChangeRowPerPage {
  const _$ChangeRowPerPageImpl({required this.rowPerPage});

  @override
  final int rowPerPage;

  @override
  String toString() {
    return 'TestHistoryEvent.changeRowPerPage(rowPerPage: $rowPerPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeRowPerPageImpl &&
            (identical(other.rowPerPage, rowPerPage) ||
                other.rowPerPage == rowPerPage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rowPerPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeRowPerPageImplCopyWith<_$ChangeRowPerPageImpl> get copyWith =>
      __$$ChangeRowPerPageImplCopyWithImpl<_$ChangeRowPerPageImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String? searchQuery, bool fetchMore)
        getTestHistory,
    required TResult Function(String? query) changeSearchQuery,
    required TResult Function() resetSearchTestHistory,
    required TResult Function(int rowPerPage) changeRowPerPage,
    required TResult Function() getUserStatistics,
    required TResult Function(int? pageNumber) changePageNumber,
  }) {
    return changeRowPerPage(rowPerPage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String? searchQuery, bool fetchMore)? getTestHistory,
    TResult? Function(String? query)? changeSearchQuery,
    TResult? Function()? resetSearchTestHistory,
    TResult? Function(int rowPerPage)? changeRowPerPage,
    TResult? Function()? getUserStatistics,
    TResult? Function(int? pageNumber)? changePageNumber,
  }) {
    return changeRowPerPage?.call(rowPerPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String? searchQuery, bool fetchMore)? getTestHistory,
    TResult Function(String? query)? changeSearchQuery,
    TResult Function()? resetSearchTestHistory,
    TResult Function(int rowPerPage)? changeRowPerPage,
    TResult Function()? getUserStatistics,
    TResult Function(int? pageNumber)? changePageNumber,
    required TResult orElse(),
  }) {
    if (changeRowPerPage != null) {
      return changeRowPerPage(rowPerPage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetTestHistory value) getTestHistory,
    required TResult Function(_ChangeSearchQuery value) changeSearchQuery,
    required TResult Function(_ResetSearchTestHistory value)
        resetSearchTestHistory,
    required TResult Function(_ChangeRowPerPage value) changeRowPerPage,
    required TResult Function(_GetUserStatistics value) getUserStatistics,
    required TResult Function(_ChangePageNumber value) changePageNumber,
  }) {
    return changeRowPerPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetTestHistory value)? getTestHistory,
    TResult? Function(_ChangeSearchQuery value)? changeSearchQuery,
    TResult? Function(_ResetSearchTestHistory value)? resetSearchTestHistory,
    TResult? Function(_ChangeRowPerPage value)? changeRowPerPage,
    TResult? Function(_GetUserStatistics value)? getUserStatistics,
    TResult? Function(_ChangePageNumber value)? changePageNumber,
  }) {
    return changeRowPerPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetTestHistory value)? getTestHistory,
    TResult Function(_ChangeSearchQuery value)? changeSearchQuery,
    TResult Function(_ResetSearchTestHistory value)? resetSearchTestHistory,
    TResult Function(_ChangeRowPerPage value)? changeRowPerPage,
    TResult Function(_GetUserStatistics value)? getUserStatistics,
    TResult Function(_ChangePageNumber value)? changePageNumber,
    required TResult orElse(),
  }) {
    if (changeRowPerPage != null) {
      return changeRowPerPage(this);
    }
    return orElse();
  }
}

abstract class _ChangeRowPerPage implements TestHistoryEvent {
  const factory _ChangeRowPerPage({required final int rowPerPage}) =
      _$ChangeRowPerPageImpl;

  int get rowPerPage;
  @JsonKey(ignore: true)
  _$$ChangeRowPerPageImplCopyWith<_$ChangeRowPerPageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetUserStatisticsImplCopyWith<$Res> {
  factory _$$GetUserStatisticsImplCopyWith(_$GetUserStatisticsImpl value,
          $Res Function(_$GetUserStatisticsImpl) then) =
      __$$GetUserStatisticsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetUserStatisticsImplCopyWithImpl<$Res>
    extends _$TestHistoryEventCopyWithImpl<$Res, _$GetUserStatisticsImpl>
    implements _$$GetUserStatisticsImplCopyWith<$Res> {
  __$$GetUserStatisticsImplCopyWithImpl(_$GetUserStatisticsImpl _value,
      $Res Function(_$GetUserStatisticsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetUserStatisticsImpl implements _GetUserStatistics {
  const _$GetUserStatisticsImpl();

  @override
  String toString() {
    return 'TestHistoryEvent.getUserStatistics()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetUserStatisticsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String? searchQuery, bool fetchMore)
        getTestHistory,
    required TResult Function(String? query) changeSearchQuery,
    required TResult Function() resetSearchTestHistory,
    required TResult Function(int rowPerPage) changeRowPerPage,
    required TResult Function() getUserStatistics,
    required TResult Function(int? pageNumber) changePageNumber,
  }) {
    return getUserStatistics();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String? searchQuery, bool fetchMore)? getTestHistory,
    TResult? Function(String? query)? changeSearchQuery,
    TResult? Function()? resetSearchTestHistory,
    TResult? Function(int rowPerPage)? changeRowPerPage,
    TResult? Function()? getUserStatistics,
    TResult? Function(int? pageNumber)? changePageNumber,
  }) {
    return getUserStatistics?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String? searchQuery, bool fetchMore)? getTestHistory,
    TResult Function(String? query)? changeSearchQuery,
    TResult Function()? resetSearchTestHistory,
    TResult Function(int rowPerPage)? changeRowPerPage,
    TResult Function()? getUserStatistics,
    TResult Function(int? pageNumber)? changePageNumber,
    required TResult orElse(),
  }) {
    if (getUserStatistics != null) {
      return getUserStatistics();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetTestHistory value) getTestHistory,
    required TResult Function(_ChangeSearchQuery value) changeSearchQuery,
    required TResult Function(_ResetSearchTestHistory value)
        resetSearchTestHistory,
    required TResult Function(_ChangeRowPerPage value) changeRowPerPage,
    required TResult Function(_GetUserStatistics value) getUserStatistics,
    required TResult Function(_ChangePageNumber value) changePageNumber,
  }) {
    return getUserStatistics(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetTestHistory value)? getTestHistory,
    TResult? Function(_ChangeSearchQuery value)? changeSearchQuery,
    TResult? Function(_ResetSearchTestHistory value)? resetSearchTestHistory,
    TResult? Function(_ChangeRowPerPage value)? changeRowPerPage,
    TResult? Function(_GetUserStatistics value)? getUserStatistics,
    TResult? Function(_ChangePageNumber value)? changePageNumber,
  }) {
    return getUserStatistics?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetTestHistory value)? getTestHistory,
    TResult Function(_ChangeSearchQuery value)? changeSearchQuery,
    TResult Function(_ResetSearchTestHistory value)? resetSearchTestHistory,
    TResult Function(_ChangeRowPerPage value)? changeRowPerPage,
    TResult Function(_GetUserStatistics value)? getUserStatistics,
    TResult Function(_ChangePageNumber value)? changePageNumber,
    required TResult orElse(),
  }) {
    if (getUserStatistics != null) {
      return getUserStatistics(this);
    }
    return orElse();
  }
}

abstract class _GetUserStatistics implements TestHistoryEvent {
  const factory _GetUserStatistics() = _$GetUserStatisticsImpl;
}

/// @nodoc
abstract class _$$ChangePageNumberImplCopyWith<$Res> {
  factory _$$ChangePageNumberImplCopyWith(_$ChangePageNumberImpl value,
          $Res Function(_$ChangePageNumberImpl) then) =
      __$$ChangePageNumberImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? pageNumber});
}

/// @nodoc
class __$$ChangePageNumberImplCopyWithImpl<$Res>
    extends _$TestHistoryEventCopyWithImpl<$Res, _$ChangePageNumberImpl>
    implements _$$ChangePageNumberImplCopyWith<$Res> {
  __$$ChangePageNumberImplCopyWithImpl(_$ChangePageNumberImpl _value,
      $Res Function(_$ChangePageNumberImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageNumber = freezed,
  }) {
    return _then(_$ChangePageNumberImpl(
      pageNumber: freezed == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$ChangePageNumberImpl implements _ChangePageNumber {
  const _$ChangePageNumberImpl({this.pageNumber});

  @override
  final int? pageNumber;

  @override
  String toString() {
    return 'TestHistoryEvent.changePageNumber(pageNumber: $pageNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePageNumberImpl &&
            (identical(other.pageNumber, pageNumber) ||
                other.pageNumber == pageNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangePageNumberImplCopyWith<_$ChangePageNumberImpl> get copyWith =>
      __$$ChangePageNumberImplCopyWithImpl<_$ChangePageNumberImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String? searchQuery, bool fetchMore)
        getTestHistory,
    required TResult Function(String? query) changeSearchQuery,
    required TResult Function() resetSearchTestHistory,
    required TResult Function(int rowPerPage) changeRowPerPage,
    required TResult Function() getUserStatistics,
    required TResult Function(int? pageNumber) changePageNumber,
  }) {
    return changePageNumber(pageNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String? searchQuery, bool fetchMore)? getTestHistory,
    TResult? Function(String? query)? changeSearchQuery,
    TResult? Function()? resetSearchTestHistory,
    TResult? Function(int rowPerPage)? changeRowPerPage,
    TResult? Function()? getUserStatistics,
    TResult? Function(int? pageNumber)? changePageNumber,
  }) {
    return changePageNumber?.call(pageNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String? searchQuery, bool fetchMore)? getTestHistory,
    TResult Function(String? query)? changeSearchQuery,
    TResult Function()? resetSearchTestHistory,
    TResult Function(int rowPerPage)? changeRowPerPage,
    TResult Function()? getUserStatistics,
    TResult Function(int? pageNumber)? changePageNumber,
    required TResult orElse(),
  }) {
    if (changePageNumber != null) {
      return changePageNumber(pageNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetTestHistory value) getTestHistory,
    required TResult Function(_ChangeSearchQuery value) changeSearchQuery,
    required TResult Function(_ResetSearchTestHistory value)
        resetSearchTestHistory,
    required TResult Function(_ChangeRowPerPage value) changeRowPerPage,
    required TResult Function(_GetUserStatistics value) getUserStatistics,
    required TResult Function(_ChangePageNumber value) changePageNumber,
  }) {
    return changePageNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetTestHistory value)? getTestHistory,
    TResult? Function(_ChangeSearchQuery value)? changeSearchQuery,
    TResult? Function(_ResetSearchTestHistory value)? resetSearchTestHistory,
    TResult? Function(_ChangeRowPerPage value)? changeRowPerPage,
    TResult? Function(_GetUserStatistics value)? getUserStatistics,
    TResult? Function(_ChangePageNumber value)? changePageNumber,
  }) {
    return changePageNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetTestHistory value)? getTestHistory,
    TResult Function(_ChangeSearchQuery value)? changeSearchQuery,
    TResult Function(_ResetSearchTestHistory value)? resetSearchTestHistory,
    TResult Function(_ChangeRowPerPage value)? changeRowPerPage,
    TResult Function(_GetUserStatistics value)? getUserStatistics,
    TResult Function(_ChangePageNumber value)? changePageNumber,
    required TResult orElse(),
  }) {
    if (changePageNumber != null) {
      return changePageNumber(this);
    }
    return orElse();
  }
}

abstract class _ChangePageNumber implements TestHistoryEvent {
  const factory _ChangePageNumber({final int? pageNumber}) =
      _$ChangePageNumberImpl;

  int? get pageNumber;
  @JsonKey(ignore: true)
  _$$ChangePageNumberImplCopyWith<_$ChangePageNumberImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
