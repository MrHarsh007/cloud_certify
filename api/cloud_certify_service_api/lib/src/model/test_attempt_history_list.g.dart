// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_attempt_history_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TestAttemptHistoryList extends TestAttemptHistoryList {
  @override
  final BuiltList<TestAttemptHistory> history;

  factory _$TestAttemptHistoryList(
          [void Function(TestAttemptHistoryListBuilder)? updates]) =>
      (new TestAttemptHistoryListBuilder()..update(updates))._build();

  _$TestAttemptHistoryList._({required this.history}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        history, r'TestAttemptHistoryList', 'history');
  }

  @override
  TestAttemptHistoryList rebuild(
          void Function(TestAttemptHistoryListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TestAttemptHistoryListBuilder toBuilder() =>
      new TestAttemptHistoryListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TestAttemptHistoryList && history == other.history;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, history.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TestAttemptHistoryList')
          ..add('history', history))
        .toString();
  }
}

class TestAttemptHistoryListBuilder
    implements Builder<TestAttemptHistoryList, TestAttemptHistoryListBuilder> {
  _$TestAttemptHistoryList? _$v;

  ListBuilder<TestAttemptHistory>? _history;
  ListBuilder<TestAttemptHistory> get history =>
      _$this._history ??= new ListBuilder<TestAttemptHistory>();
  set history(ListBuilder<TestAttemptHistory>? history) =>
      _$this._history = history;

  TestAttemptHistoryListBuilder() {
    TestAttemptHistoryList._defaults(this);
  }

  TestAttemptHistoryListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _history = $v.history.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TestAttemptHistoryList other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TestAttemptHistoryList;
  }

  @override
  void update(void Function(TestAttemptHistoryListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TestAttemptHistoryList build() => _build();

  _$TestAttemptHistoryList _build() {
    _$TestAttemptHistoryList _$result;
    try {
      _$result = _$v ??
          new _$TestAttemptHistoryList._(
            history: history.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'history';
        history.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TestAttemptHistoryList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
