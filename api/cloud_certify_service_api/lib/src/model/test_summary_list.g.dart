// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_summary_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TestSummaryList extends TestSummaryList {
  @override
  final BuiltList<TestSummary> tests;
  @override
  final String? nextCursor;
  @override
  final TestSummary? featuredTest;
  @override
  final TestSummary? mostPopularTest;

  factory _$TestSummaryList([void Function(TestSummaryListBuilder)? updates]) =>
      (new TestSummaryListBuilder()..update(updates))._build();

  _$TestSummaryList._(
      {required this.tests,
      this.nextCursor,
      this.featuredTest,
      this.mostPopularTest})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(tests, r'TestSummaryList', 'tests');
  }

  @override
  TestSummaryList rebuild(void Function(TestSummaryListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TestSummaryListBuilder toBuilder() =>
      new TestSummaryListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TestSummaryList &&
        tests == other.tests &&
        nextCursor == other.nextCursor &&
        featuredTest == other.featuredTest &&
        mostPopularTest == other.mostPopularTest;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tests.hashCode);
    _$hash = $jc(_$hash, nextCursor.hashCode);
    _$hash = $jc(_$hash, featuredTest.hashCode);
    _$hash = $jc(_$hash, mostPopularTest.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TestSummaryList')
          ..add('tests', tests)
          ..add('nextCursor', nextCursor)
          ..add('featuredTest', featuredTest)
          ..add('mostPopularTest', mostPopularTest))
        .toString();
  }
}

class TestSummaryListBuilder
    implements Builder<TestSummaryList, TestSummaryListBuilder> {
  _$TestSummaryList? _$v;

  ListBuilder<TestSummary>? _tests;
  ListBuilder<TestSummary> get tests =>
      _$this._tests ??= new ListBuilder<TestSummary>();
  set tests(ListBuilder<TestSummary>? tests) => _$this._tests = tests;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  TestSummaryBuilder? _featuredTest;
  TestSummaryBuilder get featuredTest =>
      _$this._featuredTest ??= new TestSummaryBuilder();
  set featuredTest(TestSummaryBuilder? featuredTest) =>
      _$this._featuredTest = featuredTest;

  TestSummaryBuilder? _mostPopularTest;
  TestSummaryBuilder get mostPopularTest =>
      _$this._mostPopularTest ??= new TestSummaryBuilder();
  set mostPopularTest(TestSummaryBuilder? mostPopularTest) =>
      _$this._mostPopularTest = mostPopularTest;

  TestSummaryListBuilder() {
    TestSummaryList._defaults(this);
  }

  TestSummaryListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tests = $v.tests.toBuilder();
      _nextCursor = $v.nextCursor;
      _featuredTest = $v.featuredTest?.toBuilder();
      _mostPopularTest = $v.mostPopularTest?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TestSummaryList other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TestSummaryList;
  }

  @override
  void update(void Function(TestSummaryListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TestSummaryList build() => _build();

  _$TestSummaryList _build() {
    _$TestSummaryList _$result;
    try {
      _$result = _$v ??
          new _$TestSummaryList._(
            tests: tests.build(),
            nextCursor: nextCursor,
            featuredTest: _featuredTest?.build(),
            mostPopularTest: _mostPopularTest?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tests';
        tests.build();

        _$failedField = 'featuredTest';
        _featuredTest?.build();
        _$failedField = 'mostPopularTest';
        _mostPopularTest?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TestSummaryList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
