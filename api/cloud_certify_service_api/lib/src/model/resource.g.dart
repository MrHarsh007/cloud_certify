// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Resource extends Resource {
  @override
  final String title;
  @override
  final String description;
  @override
  final ResourceType resourceType;
  @override
  final String id;
  @override
  final int createdAt;
  @override
  final String createdBy;
  @override
  final String? fileUrl;
  @override
  final String? link;
  @override
  final String? certification;
  @override
  final String? thumbnail;
  @override
  final BuiltList<String>? tags;
  @override
  final bool? isApproved;
  @override
  final int? likes;
  @override
  final int? views;
  @override
  final bool? isLiked;

  factory _$Resource([void Function(ResourceBuilder)? updates]) =>
      (new ResourceBuilder()..update(updates))._build();

  _$Resource._(
      {required this.title,
      required this.description,
      required this.resourceType,
      required this.id,
      required this.createdAt,
      required this.createdBy,
      this.fileUrl,
      this.link,
      this.certification,
      this.thumbnail,
      this.tags,
      this.isApproved,
      this.likes,
      this.views,
      this.isLiked})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(title, r'Resource', 'title');
    BuiltValueNullFieldError.checkNotNull(
        description, r'Resource', 'description');
    BuiltValueNullFieldError.checkNotNull(
        resourceType, r'Resource', 'resourceType');
    BuiltValueNullFieldError.checkNotNull(id, r'Resource', 'id');
    BuiltValueNullFieldError.checkNotNull(createdAt, r'Resource', 'createdAt');
    BuiltValueNullFieldError.checkNotNull(createdBy, r'Resource', 'createdBy');
  }

  @override
  Resource rebuild(void Function(ResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResourceBuilder toBuilder() => new ResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Resource &&
        title == other.title &&
        description == other.description &&
        resourceType == other.resourceType &&
        id == other.id &&
        createdAt == other.createdAt &&
        createdBy == other.createdBy &&
        fileUrl == other.fileUrl &&
        link == other.link &&
        certification == other.certification &&
        thumbnail == other.thumbnail &&
        tags == other.tags &&
        isApproved == other.isApproved &&
        likes == other.likes &&
        views == other.views &&
        isLiked == other.isLiked;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, resourceType.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, createdBy.hashCode);
    _$hash = $jc(_$hash, fileUrl.hashCode);
    _$hash = $jc(_$hash, link.hashCode);
    _$hash = $jc(_$hash, certification.hashCode);
    _$hash = $jc(_$hash, thumbnail.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, isApproved.hashCode);
    _$hash = $jc(_$hash, likes.hashCode);
    _$hash = $jc(_$hash, views.hashCode);
    _$hash = $jc(_$hash, isLiked.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Resource')
          ..add('title', title)
          ..add('description', description)
          ..add('resourceType', resourceType)
          ..add('id', id)
          ..add('createdAt', createdAt)
          ..add('createdBy', createdBy)
          ..add('fileUrl', fileUrl)
          ..add('link', link)
          ..add('certification', certification)
          ..add('thumbnail', thumbnail)
          ..add('tags', tags)
          ..add('isApproved', isApproved)
          ..add('likes', likes)
          ..add('views', views)
          ..add('isLiked', isLiked))
        .toString();
  }
}

class ResourceBuilder implements Builder<Resource, ResourceBuilder> {
  _$Resource? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  ResourceType? _resourceType;
  ResourceType? get resourceType => _$this._resourceType;
  set resourceType(ResourceType? resourceType) =>
      _$this._resourceType = resourceType;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  int? _createdAt;
  int? get createdAt => _$this._createdAt;
  set createdAt(int? createdAt) => _$this._createdAt = createdAt;

  String? _createdBy;
  String? get createdBy => _$this._createdBy;
  set createdBy(String? createdBy) => _$this._createdBy = createdBy;

  String? _fileUrl;
  String? get fileUrl => _$this._fileUrl;
  set fileUrl(String? fileUrl) => _$this._fileUrl = fileUrl;

  String? _link;
  String? get link => _$this._link;
  set link(String? link) => _$this._link = link;

  String? _certification;
  String? get certification => _$this._certification;
  set certification(String? certification) =>
      _$this._certification = certification;

  String? _thumbnail;
  String? get thumbnail => _$this._thumbnail;
  set thumbnail(String? thumbnail) => _$this._thumbnail = thumbnail;

  ListBuilder<String>? _tags;
  ListBuilder<String> get tags => _$this._tags ??= new ListBuilder<String>();
  set tags(ListBuilder<String>? tags) => _$this._tags = tags;

  bool? _isApproved;
  bool? get isApproved => _$this._isApproved;
  set isApproved(bool? isApproved) => _$this._isApproved = isApproved;

  int? _likes;
  int? get likes => _$this._likes;
  set likes(int? likes) => _$this._likes = likes;

  int? _views;
  int? get views => _$this._views;
  set views(int? views) => _$this._views = views;

  bool? _isLiked;
  bool? get isLiked => _$this._isLiked;
  set isLiked(bool? isLiked) => _$this._isLiked = isLiked;

  ResourceBuilder() {
    Resource._defaults(this);
  }

  ResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _description = $v.description;
      _resourceType = $v.resourceType;
      _id = $v.id;
      _createdAt = $v.createdAt;
      _createdBy = $v.createdBy;
      _fileUrl = $v.fileUrl;
      _link = $v.link;
      _certification = $v.certification;
      _thumbnail = $v.thumbnail;
      _tags = $v.tags?.toBuilder();
      _isApproved = $v.isApproved;
      _likes = $v.likes;
      _views = $v.views;
      _isLiked = $v.isLiked;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Resource other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Resource;
  }

  @override
  void update(void Function(ResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Resource build() => _build();

  _$Resource _build() {
    _$Resource _$result;
    try {
      _$result = _$v ??
          new _$Resource._(
            title: BuiltValueNullFieldError.checkNotNull(
                title, r'Resource', 'title'),
            description: BuiltValueNullFieldError.checkNotNull(
                description, r'Resource', 'description'),
            resourceType: BuiltValueNullFieldError.checkNotNull(
                resourceType, r'Resource', 'resourceType'),
            id: BuiltValueNullFieldError.checkNotNull(id, r'Resource', 'id'),
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'Resource', 'createdAt'),
            createdBy: BuiltValueNullFieldError.checkNotNull(
                createdBy, r'Resource', 'createdBy'),
            fileUrl: fileUrl,
            link: link,
            certification: certification,
            thumbnail: thumbnail,
            tags: _tags?.build(),
            isApproved: isApproved,
            likes: likes,
            views: views,
            isLiked: isLiked,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Resource', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
