// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'submit_answer_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SubmitAnswerRequest extends SubmitAnswerRequest {
  @override
  final String questionId;
  @override
  final BuiltList<String> selectedOption;
  @override
  final int timeTaken;

  factory _$SubmitAnswerRequest(
          [void Function(SubmitAnswerRequestBuilder)? updates]) =>
      (new SubmitAnswerRequestBuilder()..update(updates))._build();

  _$SubmitAnswerRequest._(
      {required this.questionId,
      required this.selectedOption,
      required this.timeTaken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        questionId, r'SubmitAnswerRequest', 'questionId');
    BuiltValueNullFieldError.checkNotNull(
        selectedOption, r'SubmitAnswerRequest', 'selectedOption');
    BuiltValueNullFieldError.checkNotNull(
        timeTaken, r'SubmitAnswerRequest', 'timeTaken');
  }

  @override
  SubmitAnswerRequest rebuild(
          void Function(SubmitAnswerRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SubmitAnswerRequestBuilder toBuilder() =>
      new SubmitAnswerRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SubmitAnswerRequest &&
        questionId == other.questionId &&
        selectedOption == other.selectedOption &&
        timeTaken == other.timeTaken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, questionId.hashCode);
    _$hash = $jc(_$hash, selectedOption.hashCode);
    _$hash = $jc(_$hash, timeTaken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SubmitAnswerRequest')
          ..add('questionId', questionId)
          ..add('selectedOption', selectedOption)
          ..add('timeTaken', timeTaken))
        .toString();
  }
}

class SubmitAnswerRequestBuilder
    implements Builder<SubmitAnswerRequest, SubmitAnswerRequestBuilder> {
  _$SubmitAnswerRequest? _$v;

  String? _questionId;
  String? get questionId => _$this._questionId;
  set questionId(String? questionId) => _$this._questionId = questionId;

  ListBuilder<String>? _selectedOption;
  ListBuilder<String> get selectedOption =>
      _$this._selectedOption ??= new ListBuilder<String>();
  set selectedOption(ListBuilder<String>? selectedOption) =>
      _$this._selectedOption = selectedOption;

  int? _timeTaken;
  int? get timeTaken => _$this._timeTaken;
  set timeTaken(int? timeTaken) => _$this._timeTaken = timeTaken;

  SubmitAnswerRequestBuilder() {
    SubmitAnswerRequest._defaults(this);
  }

  SubmitAnswerRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _questionId = $v.questionId;
      _selectedOption = $v.selectedOption.toBuilder();
      _timeTaken = $v.timeTaken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SubmitAnswerRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SubmitAnswerRequest;
  }

  @override
  void update(void Function(SubmitAnswerRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SubmitAnswerRequest build() => _build();

  _$SubmitAnswerRequest _build() {
    _$SubmitAnswerRequest _$result;
    try {
      _$result = _$v ??
          new _$SubmitAnswerRequest._(
            questionId: BuiltValueNullFieldError.checkNotNull(
                questionId, r'SubmitAnswerRequest', 'questionId'),
            selectedOption: selectedOption.build(),
            timeTaken: BuiltValueNullFieldError.checkNotNull(
                timeTaken, r'SubmitAnswerRequest', 'timeTaken'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'selectedOption';
        selectedOption.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SubmitAnswerRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
