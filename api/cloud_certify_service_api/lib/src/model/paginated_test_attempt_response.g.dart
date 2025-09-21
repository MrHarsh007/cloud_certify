// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_test_attempt_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PaginatedTestAttemptResponse extends PaginatedTestAttemptResponse {
  @override
  final BuiltList<TestAttemptSummary> attempts;
  @override
  final String? nextCursor;

  factory _$PaginatedTestAttemptResponse(
          [void Function(PaginatedTestAttemptResponseBuilder)? updates]) =>
      (new PaginatedTestAttemptResponseBuilder()..update(updates))._build();

  _$PaginatedTestAttemptResponse._({required this.attempts, this.nextCursor})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        attempts, r'PaginatedTestAttemptResponse', 'attempts');
  }

  @override
  PaginatedTestAttemptResponse rebuild(
          void Function(PaginatedTestAttemptResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PaginatedTestAttemptResponseBuilder toBuilder() =>
      new PaginatedTestAttemptResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PaginatedTestAttemptResponse &&
        attempts == other.attempts &&
        nextCursor == other.nextCursor;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, attempts.hashCode);
    _$hash = $jc(_$hash, nextCursor.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PaginatedTestAttemptResponse')
          ..add('attempts', attempts)
          ..add('nextCursor', nextCursor))
        .toString();
  }
}

class PaginatedTestAttemptResponseBuilder
    implements
        Builder<PaginatedTestAttemptResponse,
            PaginatedTestAttemptResponseBuilder> {
  _$PaginatedTestAttemptResponse? _$v;

  ListBuilder<TestAttemptSummary>? _attempts;
  ListBuilder<TestAttemptSummary> get attempts =>
      _$this._attempts ??= new ListBuilder<TestAttemptSummary>();
  set attempts(ListBuilder<TestAttemptSummary>? attempts) =>
      _$this._attempts = attempts;

  String? _nextCursor;
  String? get nextCursor => _$this._nextCursor;
  set nextCursor(String? nextCursor) => _$this._nextCursor = nextCursor;

  PaginatedTestAttemptResponseBuilder() {
    PaginatedTestAttemptResponse._defaults(this);
  }

  PaginatedTestAttemptResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _attempts = $v.attempts.toBuilder();
      _nextCursor = $v.nextCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PaginatedTestAttemptResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PaginatedTestAttemptResponse;
  }

  @override
  void update(void Function(PaginatedTestAttemptResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PaginatedTestAttemptResponse build() => _build();

  _$PaginatedTestAttemptResponse _build() {
    _$PaginatedTestAttemptResponse _$result;
    try {
      _$result = _$v ??
          new _$PaginatedTestAttemptResponse._(
            attempts: attempts.build(),
            nextCursor: nextCursor,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'attempts';
        attempts.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PaginatedTestAttemptResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
