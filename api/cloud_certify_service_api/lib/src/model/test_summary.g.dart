// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_summary.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TestSummary extends TestSummary {
  @override
  final String id;
  @override
  final String title;
  @override
  final String category;
  @override
  final int duration;
  @override
  final int totalQuestions;
  @override
  final String difficulty;
  @override
  final String description;
  @override
  final String? cloudProvider;
  @override
  final BuiltList<String>? topic;
  @override
  final String? subCategory;
  @override
  final String? iconUrl;
  @override
  final String? status;
  @override
  final int? createdAt;
  @override
  final int? updatedAt;

  factory _$TestSummary([void Function(TestSummaryBuilder)? updates]) =>
      (new TestSummaryBuilder()..update(updates))._build();

  _$TestSummary._(
      {required this.id,
      required this.title,
      required this.category,
      required this.duration,
      required this.totalQuestions,
      required this.difficulty,
      required this.description,
      this.cloudProvider,
      this.topic,
      this.subCategory,
      this.iconUrl,
      this.status,
      this.createdAt,
      this.updatedAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'TestSummary', 'id');
    BuiltValueNullFieldError.checkNotNull(title, r'TestSummary', 'title');
    BuiltValueNullFieldError.checkNotNull(category, r'TestSummary', 'category');
    BuiltValueNullFieldError.checkNotNull(duration, r'TestSummary', 'duration');
    BuiltValueNullFieldError.checkNotNull(
        totalQuestions, r'TestSummary', 'totalQuestions');
    BuiltValueNullFieldError.checkNotNull(
        difficulty, r'TestSummary', 'difficulty');
    BuiltValueNullFieldError.checkNotNull(
        description, r'TestSummary', 'description');
  }

  @override
  TestSummary rebuild(void Function(TestSummaryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TestSummaryBuilder toBuilder() => new TestSummaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TestSummary &&
        id == other.id &&
        title == other.title &&
        category == other.category &&
        duration == other.duration &&
        totalQuestions == other.totalQuestions &&
        difficulty == other.difficulty &&
        description == other.description &&
        cloudProvider == other.cloudProvider &&
        topic == other.topic &&
        subCategory == other.subCategory &&
        iconUrl == other.iconUrl &&
        status == other.status &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, category.hashCode);
    _$hash = $jc(_$hash, duration.hashCode);
    _$hash = $jc(_$hash, totalQuestions.hashCode);
    _$hash = $jc(_$hash, difficulty.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, cloudProvider.hashCode);
    _$hash = $jc(_$hash, topic.hashCode);
    _$hash = $jc(_$hash, subCategory.hashCode);
    _$hash = $jc(_$hash, iconUrl.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TestSummary')
          ..add('id', id)
          ..add('title', title)
          ..add('category', category)
          ..add('duration', duration)
          ..add('totalQuestions', totalQuestions)
          ..add('difficulty', difficulty)
          ..add('description', description)
          ..add('cloudProvider', cloudProvider)
          ..add('topic', topic)
          ..add('subCategory', subCategory)
          ..add('iconUrl', iconUrl)
          ..add('status', status)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class TestSummaryBuilder implements Builder<TestSummary, TestSummaryBuilder> {
  _$TestSummary? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _category;
  String? get category => _$this._category;
  set category(String? category) => _$this._category = category;

  int? _duration;
  int? get duration => _$this._duration;
  set duration(int? duration) => _$this._duration = duration;

  int? _totalQuestions;
  int? get totalQuestions => _$this._totalQuestions;
  set totalQuestions(int? totalQuestions) =>
      _$this._totalQuestions = totalQuestions;

  String? _difficulty;
  String? get difficulty => _$this._difficulty;
  set difficulty(String? difficulty) => _$this._difficulty = difficulty;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _cloudProvider;
  String? get cloudProvider => _$this._cloudProvider;
  set cloudProvider(String? cloudProvider) =>
      _$this._cloudProvider = cloudProvider;

  ListBuilder<String>? _topic;
  ListBuilder<String> get topic => _$this._topic ??= new ListBuilder<String>();
  set topic(ListBuilder<String>? topic) => _$this._topic = topic;

  String? _subCategory;
  String? get subCategory => _$this._subCategory;
  set subCategory(String? subCategory) => _$this._subCategory = subCategory;

  String? _iconUrl;
  String? get iconUrl => _$this._iconUrl;
  set iconUrl(String? iconUrl) => _$this._iconUrl = iconUrl;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  int? _createdAt;
  int? get createdAt => _$this._createdAt;
  set createdAt(int? createdAt) => _$this._createdAt = createdAt;

  int? _updatedAt;
  int? get updatedAt => _$this._updatedAt;
  set updatedAt(int? updatedAt) => _$this._updatedAt = updatedAt;

  TestSummaryBuilder() {
    TestSummary._defaults(this);
  }

  TestSummaryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _title = $v.title;
      _category = $v.category;
      _duration = $v.duration;
      _totalQuestions = $v.totalQuestions;
      _difficulty = $v.difficulty;
      _description = $v.description;
      _cloudProvider = $v.cloudProvider;
      _topic = $v.topic?.toBuilder();
      _subCategory = $v.subCategory;
      _iconUrl = $v.iconUrl;
      _status = $v.status;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TestSummary other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TestSummary;
  }

  @override
  void update(void Function(TestSummaryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TestSummary build() => _build();

  _$TestSummary _build() {
    _$TestSummary _$result;
    try {
      _$result = _$v ??
          new _$TestSummary._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'TestSummary', 'id'),
            title: BuiltValueNullFieldError.checkNotNull(
                title, r'TestSummary', 'title'),
            category: BuiltValueNullFieldError.checkNotNull(
                category, r'TestSummary', 'category'),
            duration: BuiltValueNullFieldError.checkNotNull(
                duration, r'TestSummary', 'duration'),
            totalQuestions: BuiltValueNullFieldError.checkNotNull(
                totalQuestions, r'TestSummary', 'totalQuestions'),
            difficulty: BuiltValueNullFieldError.checkNotNull(
                difficulty, r'TestSummary', 'difficulty'),
            description: BuiltValueNullFieldError.checkNotNull(
                description, r'TestSummary', 'description'),
            cloudProvider: cloudProvider,
            topic: _topic?.build(),
            subCategory: subCategory,
            iconUrl: iconUrl,
            status: status,
            createdAt: createdAt,
            updatedAt: updatedAt,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'topic';
        _topic?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TestSummary', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
