// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'like_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LikeResponse extends LikeResponse {
  @override
  final String resourceId;
  @override
  final int likes;
  @override
  final bool isLiked;

  factory _$LikeResponse([void Function(LikeResponseBuilder)? updates]) =>
      (new LikeResponseBuilder()..update(updates))._build();

  _$LikeResponse._(
      {required this.resourceId, required this.likes, required this.isLiked})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        resourceId, r'LikeResponse', 'resourceId');
    BuiltValueNullFieldError.checkNotNull(likes, r'LikeResponse', 'likes');
    BuiltValueNullFieldError.checkNotNull(isLiked, r'LikeResponse', 'isLiked');
  }

  @override
  LikeResponse rebuild(void Function(LikeResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LikeResponseBuilder toBuilder() => new LikeResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LikeResponse &&
        resourceId == other.resourceId &&
        likes == other.likes &&
        isLiked == other.isLiked;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, resourceId.hashCode);
    _$hash = $jc(_$hash, likes.hashCode);
    _$hash = $jc(_$hash, isLiked.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LikeResponse')
          ..add('resourceId', resourceId)
          ..add('likes', likes)
          ..add('isLiked', isLiked))
        .toString();
  }
}

class LikeResponseBuilder
    implements Builder<LikeResponse, LikeResponseBuilder> {
  _$LikeResponse? _$v;

  String? _resourceId;
  String? get resourceId => _$this._resourceId;
  set resourceId(String? resourceId) => _$this._resourceId = resourceId;

  int? _likes;
  int? get likes => _$this._likes;
  set likes(int? likes) => _$this._likes = likes;

  bool? _isLiked;
  bool? get isLiked => _$this._isLiked;
  set isLiked(bool? isLiked) => _$this._isLiked = isLiked;

  LikeResponseBuilder() {
    LikeResponse._defaults(this);
  }

  LikeResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _resourceId = $v.resourceId;
      _likes = $v.likes;
      _isLiked = $v.isLiked;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LikeResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LikeResponse;
  }

  @override
  void update(void Function(LikeResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LikeResponse build() => _build();

  _$LikeResponse _build() {
    final _$result = _$v ??
        new _$LikeResponse._(
          resourceId: BuiltValueNullFieldError.checkNotNull(
              resourceId, r'LikeResponse', 'resourceId'),
          likes: BuiltValueNullFieldError.checkNotNull(
              likes, r'LikeResponse', 'likes'),
          isLiked: BuiltValueNullFieldError.checkNotNull(
              isLiked, r'LikeResponse', 'isLiked'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
