// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_uploader_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ImageUploaderEvent {
  List<XFile> get images => throw _privateConstructorUsedError;
  String? get folderName => throw _privateConstructorUsedError;
  String? get docType => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<XFile> images, String? folderName, String? docType)
        uploadImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<XFile> images, String? folderName, String? docType)?
        uploadImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<XFile> images, String? folderName, String? docType)?
        uploadImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UploadImage value) uploadImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UploadImage value)? uploadImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UploadImage value)? uploadImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ImageUploaderEventCopyWith<ImageUploaderEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageUploaderEventCopyWith<$Res> {
  factory $ImageUploaderEventCopyWith(
          ImageUploaderEvent value, $Res Function(ImageUploaderEvent) then) =
      _$ImageUploaderEventCopyWithImpl<$Res, ImageUploaderEvent>;
  @useResult
  $Res call({List<XFile> images, String? folderName, String? docType});
}

/// @nodoc
class _$ImageUploaderEventCopyWithImpl<$Res, $Val extends ImageUploaderEvent>
    implements $ImageUploaderEventCopyWith<$Res> {
  _$ImageUploaderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? images = null,
    Object? folderName = freezed,
    Object? docType = freezed,
  }) {
    return _then(_value.copyWith(
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<XFile>,
      folderName: freezed == folderName
          ? _value.folderName
          : folderName // ignore: cast_nullable_to_non_nullable
              as String?,
      docType: freezed == docType
          ? _value.docType
          : docType // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UploadImageImplCopyWith<$Res>
    implements $ImageUploaderEventCopyWith<$Res> {
  factory _$$UploadImageImplCopyWith(
          _$UploadImageImpl value, $Res Function(_$UploadImageImpl) then) =
      __$$UploadImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<XFile> images, String? folderName, String? docType});
}

/// @nodoc
class __$$UploadImageImplCopyWithImpl<$Res>
    extends _$ImageUploaderEventCopyWithImpl<$Res, _$UploadImageImpl>
    implements _$$UploadImageImplCopyWith<$Res> {
  __$$UploadImageImplCopyWithImpl(
      _$UploadImageImpl _value, $Res Function(_$UploadImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? images = null,
    Object? folderName = freezed,
    Object? docType = freezed,
  }) {
    return _then(_$UploadImageImpl(
      null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<XFile>,
      freezed == folderName
          ? _value.folderName
          : folderName // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == docType
          ? _value.docType
          : docType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UploadImageImpl implements _UploadImage {
  const _$UploadImageImpl(
      final List<XFile> images, this.folderName, this.docType)
      : _images = images;

  final List<XFile> _images;
  @override
  List<XFile> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final String? folderName;
  @override
  final String? docType;

  @override
  String toString() {
    return 'ImageUploaderEvent.uploadImage(images: $images, folderName: $folderName, docType: $docType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadImageImpl &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.folderName, folderName) ||
                other.folderName == folderName) &&
            (identical(other.docType, docType) || other.docType == docType));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_images), folderName, docType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadImageImplCopyWith<_$UploadImageImpl> get copyWith =>
      __$$UploadImageImplCopyWithImpl<_$UploadImageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<XFile> images, String? folderName, String? docType)
        uploadImage,
  }) {
    return uploadImage(images, folderName, docType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<XFile> images, String? folderName, String? docType)?
        uploadImage,
  }) {
    return uploadImage?.call(images, folderName, docType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<XFile> images, String? folderName, String? docType)?
        uploadImage,
    required TResult orElse(),
  }) {
    if (uploadImage != null) {
      return uploadImage(images, folderName, docType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UploadImage value) uploadImage,
  }) {
    return uploadImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UploadImage value)? uploadImage,
  }) {
    return uploadImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UploadImage value)? uploadImage,
    required TResult orElse(),
  }) {
    if (uploadImage != null) {
      return uploadImage(this);
    }
    return orElse();
  }
}

abstract class _UploadImage implements ImageUploaderEvent {
  const factory _UploadImage(final List<XFile> images, final String? folderName,
      final String? docType) = _$UploadImageImpl;

  @override
  List<XFile> get images;
  @override
  String? get folderName;
  @override
  String? get docType;
  @override
  @JsonKey(ignore: true)
  _$$UploadImageImplCopyWith<_$UploadImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ImageUploaderState {
  RequestState get state => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<String> get imagepath => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ImageUploaderStateCopyWith<ImageUploaderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageUploaderStateCopyWith<$Res> {
  factory $ImageUploaderStateCopyWith(
          ImageUploaderState value, $Res Function(ImageUploaderState) then) =
      _$ImageUploaderStateCopyWithImpl<$Res, ImageUploaderState>;
  @useResult
  $Res call({RequestState state, String message, List<String> imagepath});
}

/// @nodoc
class _$ImageUploaderStateCopyWithImpl<$Res, $Val extends ImageUploaderState>
    implements $ImageUploaderStateCopyWith<$Res> {
  _$ImageUploaderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? message = null,
    Object? imagepath = null,
  }) {
    return _then(_value.copyWith(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as RequestState,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      imagepath: null == imagepath
          ? _value.imagepath
          : imagepath // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageUploaderStateImplCopyWith<$Res>
    implements $ImageUploaderStateCopyWith<$Res> {
  factory _$$ImageUploaderStateImplCopyWith(_$ImageUploaderStateImpl value,
          $Res Function(_$ImageUploaderStateImpl) then) =
      __$$ImageUploaderStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RequestState state, String message, List<String> imagepath});
}

/// @nodoc
class __$$ImageUploaderStateImplCopyWithImpl<$Res>
    extends _$ImageUploaderStateCopyWithImpl<$Res, _$ImageUploaderStateImpl>
    implements _$$ImageUploaderStateImplCopyWith<$Res> {
  __$$ImageUploaderStateImplCopyWithImpl(_$ImageUploaderStateImpl _value,
      $Res Function(_$ImageUploaderStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? message = null,
    Object? imagepath = null,
  }) {
    return _then(_$ImageUploaderStateImpl(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as RequestState,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      imagepath: null == imagepath
          ? _value._imagepath
          : imagepath // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$ImageUploaderStateImpl implements _ImageUploaderState {
  const _$ImageUploaderStateImpl(
      {required this.state,
      required this.message,
      required final List<String> imagepath})
      : _imagepath = imagepath;

  @override
  final RequestState state;
  @override
  final String message;
  final List<String> _imagepath;
  @override
  List<String> get imagepath {
    if (_imagepath is EqualUnmodifiableListView) return _imagepath;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imagepath);
  }

  @override
  String toString() {
    return 'ImageUploaderState(state: $state, message: $message, imagepath: $imagepath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageUploaderStateImpl &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality()
                .equals(other._imagepath, _imagepath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state, message,
      const DeepCollectionEquality().hash(_imagepath));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageUploaderStateImplCopyWith<_$ImageUploaderStateImpl> get copyWith =>
      __$$ImageUploaderStateImplCopyWithImpl<_$ImageUploaderStateImpl>(
          this, _$identity);
}

abstract class _ImageUploaderState implements ImageUploaderState {
  const factory _ImageUploaderState(
      {required final RequestState state,
      required final String message,
      required final List<String> imagepath}) = _$ImageUploaderStateImpl;

  @override
  RequestState get state;
  @override
  String get message;
  @override
  List<String> get imagepath;
  @override
  @JsonKey(ignore: true)
  _$$ImageUploaderStateImplCopyWith<_$ImageUploaderStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
