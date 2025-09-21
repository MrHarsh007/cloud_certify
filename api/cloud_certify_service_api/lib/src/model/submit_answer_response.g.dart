// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'submit_answer_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SubmitAnswerResponse extends SubmitAnswerResponse {
  @override
  final bool isCorrect;
  @override
  final String correctOption;
  @override
  final String explanation;

  factory _$SubmitAnswerResponse(
          [void Function(SubmitAnswerResponseBuilder)? updates]) =>
      (new SubmitAnswerResponseBuilder()..update(updates))._build();

  _$SubmitAnswerResponse._(
      {required this.isCorrect,
      required this.correctOption,
      required this.explanation})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        isCorrect, r'SubmitAnswerResponse', 'isCorrect');
    BuiltValueNullFieldError.checkNotNull(
        correctOption, r'SubmitAnswerResponse', 'correctOption');
    BuiltValueNullFieldError.checkNotNull(
        explanation, r'SubmitAnswerResponse', 'explanation');
  }

  @override
  SubmitAnswerResponse rebuild(
          void Function(SubmitAnswerResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SubmitAnswerResponseBuilder toBuilder() =>
      new SubmitAnswerResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SubmitAnswerResponse &&
        isCorrect == other.isCorrect &&
        correctOption == other.correctOption &&
        explanation == other.explanation;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, isCorrect.hashCode);
    _$hash = $jc(_$hash, correctOption.hashCode);
    _$hash = $jc(_$hash, explanation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SubmitAnswerResponse')
          ..add('isCorrect', isCorrect)
          ..add('correctOption', correctOption)
          ..add('explanation', explanation))
        .toString();
  }
}

class SubmitAnswerResponseBuilder
    implements Builder<SubmitAnswerResponse, SubmitAnswerResponseBuilder> {
  _$SubmitAnswerResponse? _$v;

  bool? _isCorrect;
  bool? get isCorrect => _$this._isCorrect;
  set isCorrect(bool? isCorrect) => _$this._isCorrect = isCorrect;

  String? _correctOption;
  String? get correctOption => _$this._correctOption;
  set correctOption(String? correctOption) =>
      _$this._correctOption = correctOption;

  String? _explanation;
  String? get explanation => _$this._explanation;
  set explanation(String? explanation) => _$this._explanation = explanation;

  SubmitAnswerResponseBuilder() {
    SubmitAnswerResponse._defaults(this);
  }

  SubmitAnswerResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isCorrect = $v.isCorrect;
      _correctOption = $v.correctOption;
      _explanation = $v.explanation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SubmitAnswerResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SubmitAnswerResponse;
  }

  @override
  void update(void Function(SubmitAnswerResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SubmitAnswerResponse build() => _build();

  _$SubmitAnswerResponse _build() {
    final _$result = _$v ??
        new _$SubmitAnswerResponse._(
          isCorrect: BuiltValueNullFieldError.checkNotNull(
              isCorrect, r'SubmitAnswerResponse', 'isCorrect'),
          correctOption: BuiltValueNullFieldError.checkNotNull(
              correctOption, r'SubmitAnswerResponse', 'correctOption'),
          explanation: BuiltValueNullFieldError.checkNotNull(
              explanation, r'SubmitAnswerResponse', 'explanation'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
