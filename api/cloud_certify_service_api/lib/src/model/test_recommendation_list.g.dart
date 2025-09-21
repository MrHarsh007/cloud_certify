// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_recommendation_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TestRecommendationList extends TestRecommendationList {
  @override
  final BuiltList<TestRecommendation> recommendations;

  factory _$TestRecommendationList(
          [void Function(TestRecommendationListBuilder)? updates]) =>
      (new TestRecommendationListBuilder()..update(updates))._build();

  _$TestRecommendationList._({required this.recommendations}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        recommendations, r'TestRecommendationList', 'recommendations');
  }

  @override
  TestRecommendationList rebuild(
          void Function(TestRecommendationListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TestRecommendationListBuilder toBuilder() =>
      new TestRecommendationListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TestRecommendationList &&
        recommendations == other.recommendations;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, recommendations.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TestRecommendationList')
          ..add('recommendations', recommendations))
        .toString();
  }
}

class TestRecommendationListBuilder
    implements Builder<TestRecommendationList, TestRecommendationListBuilder> {
  _$TestRecommendationList? _$v;

  ListBuilder<TestRecommendation>? _recommendations;
  ListBuilder<TestRecommendation> get recommendations =>
      _$this._recommendations ??= new ListBuilder<TestRecommendation>();
  set recommendations(ListBuilder<TestRecommendation>? recommendations) =>
      _$this._recommendations = recommendations;

  TestRecommendationListBuilder() {
    TestRecommendationList._defaults(this);
  }

  TestRecommendationListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _recommendations = $v.recommendations.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TestRecommendationList other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TestRecommendationList;
  }

  @override
  void update(void Function(TestRecommendationListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TestRecommendationList build() => _build();

  _$TestRecommendationList _build() {
    _$TestRecommendationList _$result;
    try {
      _$result = _$v ??
          new _$TestRecommendationList._(
            recommendations: recommendations.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'recommendations';
        recommendations.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TestRecommendationList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
