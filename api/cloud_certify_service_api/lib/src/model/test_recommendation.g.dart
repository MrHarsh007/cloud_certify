// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_recommendation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TestRecommendation extends TestRecommendation {
  @override
  final String testId;
  @override
  final String title;
  @override
  final String category;
  @override
  final String difficulty;
  @override
  final RecommendationType recommendationType;
  @override
  final num? popularityScore;

  factory _$TestRecommendation(
          [void Function(TestRecommendationBuilder)? updates]) =>
      (new TestRecommendationBuilder()..update(updates))._build();

  _$TestRecommendation._(
      {required this.testId,
      required this.title,
      required this.category,
      required this.difficulty,
      required this.recommendationType,
      this.popularityScore})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        testId, r'TestRecommendation', 'testId');
    BuiltValueNullFieldError.checkNotNull(
        title, r'TestRecommendation', 'title');
    BuiltValueNullFieldError.checkNotNull(
        category, r'TestRecommendation', 'category');
    BuiltValueNullFieldError.checkNotNull(
        difficulty, r'TestRecommendation', 'difficulty');
    BuiltValueNullFieldError.checkNotNull(
        recommendationType, r'TestRecommendation', 'recommendationType');
  }

  @override
  TestRecommendation rebuild(
          void Function(TestRecommendationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TestRecommendationBuilder toBuilder() =>
      new TestRecommendationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TestRecommendation &&
        testId == other.testId &&
        title == other.title &&
        category == other.category &&
        difficulty == other.difficulty &&
        recommendationType == other.recommendationType &&
        popularityScore == other.popularityScore;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, testId.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, category.hashCode);
    _$hash = $jc(_$hash, difficulty.hashCode);
    _$hash = $jc(_$hash, recommendationType.hashCode);
    _$hash = $jc(_$hash, popularityScore.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TestRecommendation')
          ..add('testId', testId)
          ..add('title', title)
          ..add('category', category)
          ..add('difficulty', difficulty)
          ..add('recommendationType', recommendationType)
          ..add('popularityScore', popularityScore))
        .toString();
  }
}

class TestRecommendationBuilder
    implements Builder<TestRecommendation, TestRecommendationBuilder> {
  _$TestRecommendation? _$v;

  String? _testId;
  String? get testId => _$this._testId;
  set testId(String? testId) => _$this._testId = testId;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _category;
  String? get category => _$this._category;
  set category(String? category) => _$this._category = category;

  String? _difficulty;
  String? get difficulty => _$this._difficulty;
  set difficulty(String? difficulty) => _$this._difficulty = difficulty;

  RecommendationType? _recommendationType;
  RecommendationType? get recommendationType => _$this._recommendationType;
  set recommendationType(RecommendationType? recommendationType) =>
      _$this._recommendationType = recommendationType;

  num? _popularityScore;
  num? get popularityScore => _$this._popularityScore;
  set popularityScore(num? popularityScore) =>
      _$this._popularityScore = popularityScore;

  TestRecommendationBuilder() {
    TestRecommendation._defaults(this);
  }

  TestRecommendationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _testId = $v.testId;
      _title = $v.title;
      _category = $v.category;
      _difficulty = $v.difficulty;
      _recommendationType = $v.recommendationType;
      _popularityScore = $v.popularityScore;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TestRecommendation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TestRecommendation;
  }

  @override
  void update(void Function(TestRecommendationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TestRecommendation build() => _build();

  _$TestRecommendation _build() {
    final _$result = _$v ??
        new _$TestRecommendation._(
          testId: BuiltValueNullFieldError.checkNotNull(
              testId, r'TestRecommendation', 'testId'),
          title: BuiltValueNullFieldError.checkNotNull(
              title, r'TestRecommendation', 'title'),
          category: BuiltValueNullFieldError.checkNotNull(
              category, r'TestRecommendation', 'category'),
          difficulty: BuiltValueNullFieldError.checkNotNull(
              difficulty, r'TestRecommendation', 'difficulty'),
          recommendationType: BuiltValueNullFieldError.checkNotNull(
              recommendationType, r'TestRecommendation', 'recommendationType'),
          popularityScore: popularityScore,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
