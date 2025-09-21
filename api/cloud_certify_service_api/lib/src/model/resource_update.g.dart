// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resource_update.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ResourceUpdate extends ResourceUpdate {
  @override
  final String? title;
  @override
  final String? description;
  @override
  final bool? isApproved;
  @override
  final String? thumbnail;
  @override
  final BuiltList<String>? tags;

  factory _$ResourceUpdate([void Function(ResourceUpdateBuilder)? updates]) =>
      (new ResourceUpdateBuilder()..update(updates))._build();

  _$ResourceUpdate._(
      {this.title,
      this.description,
      this.isApproved,
      this.thumbnail,
      this.tags})
      : super._();

  @override
  ResourceUpdate rebuild(void Function(ResourceUpdateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResourceUpdateBuilder toBuilder() =>
      new ResourceUpdateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResourceUpdate &&
        title == other.title &&
        description == other.description &&
        isApproved == other.isApproved &&
        thumbnail == other.thumbnail &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, isApproved.hashCode);
    _$hash = $jc(_$hash, thumbnail.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ResourceUpdate')
          ..add('title', title)
          ..add('description', description)
          ..add('isApproved', isApproved)
          ..add('thumbnail', thumbnail)
          ..add('tags', tags))
        .toString();
  }
}

class ResourceUpdateBuilder
    implements Builder<ResourceUpdate, ResourceUpdateBuilder> {
  _$ResourceUpdate? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  bool? _isApproved;
  bool? get isApproved => _$this._isApproved;
  set isApproved(bool? isApproved) => _$this._isApproved = isApproved;

  String? _thumbnail;
  String? get thumbnail => _$this._thumbnail;
  set thumbnail(String? thumbnail) => _$this._thumbnail = thumbnail;

  ListBuilder<String>? _tags;
  ListBuilder<String> get tags => _$this._tags ??= new ListBuilder<String>();
  set tags(ListBuilder<String>? tags) => _$this._tags = tags;

  ResourceUpdateBuilder() {
    ResourceUpdate._defaults(this);
  }

  ResourceUpdateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _description = $v.description;
      _isApproved = $v.isApproved;
      _thumbnail = $v.thumbnail;
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResourceUpdate other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ResourceUpdate;
  }

  @override
  void update(void Function(ResourceUpdateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ResourceUpdate build() => _build();

  _$ResourceUpdate _build() {
    _$ResourceUpdate _$result;
    try {
      _$result = _$v ??
          new _$ResourceUpdate._(
            title: title,
            description: description,
            isApproved: isApproved,
            thumbnail: thumbnail,
            tags: _tags?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ResourceUpdate', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
