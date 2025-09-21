// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UpdateProfileState {
  RequestState get state => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String? get profileImage => throw _privateConstructorUsedError;
  CertificationType? get certificate => throw _privateConstructorUsedError;
  XFile? get image => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdateProfileStateCopyWith<UpdateProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateProfileStateCopyWith<$Res> {
  factory $UpdateProfileStateCopyWith(
          UpdateProfileState value, $Res Function(UpdateProfileState) then) =
      _$UpdateProfileStateCopyWithImpl<$Res, UpdateProfileState>;
  @useResult
  $Res call(
      {RequestState state,
      String message,
      String? profileImage,
      CertificationType? certificate,
      XFile? image});
}

/// @nodoc
class _$UpdateProfileStateCopyWithImpl<$Res, $Val extends UpdateProfileState>
    implements $UpdateProfileStateCopyWith<$Res> {
  _$UpdateProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? message = null,
    Object? profileImage = freezed,
    Object? certificate = freezed,
    Object? image = freezed,
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
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
      certificate: freezed == certificate
          ? _value.certificate
          : certificate // ignore: cast_nullable_to_non_nullable
              as CertificationType?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as XFile?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateProfileStateImplCopyWith<$Res>
    implements $UpdateProfileStateCopyWith<$Res> {
  factory _$$UpdateProfileStateImplCopyWith(_$UpdateProfileStateImpl value,
          $Res Function(_$UpdateProfileStateImpl) then) =
      __$$UpdateProfileStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RequestState state,
      String message,
      String? profileImage,
      CertificationType? certificate,
      XFile? image});
}

/// @nodoc
class __$$UpdateProfileStateImplCopyWithImpl<$Res>
    extends _$UpdateProfileStateCopyWithImpl<$Res, _$UpdateProfileStateImpl>
    implements _$$UpdateProfileStateImplCopyWith<$Res> {
  __$$UpdateProfileStateImplCopyWithImpl(_$UpdateProfileStateImpl _value,
      $Res Function(_$UpdateProfileStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? message = null,
    Object? profileImage = freezed,
    Object? certificate = freezed,
    Object? image = freezed,
  }) {
    return _then(_$UpdateProfileStateImpl(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as RequestState,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
      certificate: freezed == certificate
          ? _value.certificate
          : certificate // ignore: cast_nullable_to_non_nullable
              as CertificationType?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as XFile?,
    ));
  }
}

/// @nodoc

class _$UpdateProfileStateImpl implements _UpdateProfileState {
  _$UpdateProfileStateImpl(
      {required this.state,
      required this.message,
      required this.profileImage,
      required this.certificate,
      required this.image});

  @override
  final RequestState state;
  @override
  final String message;
  @override
  final String? profileImage;
  @override
  final CertificationType? certificate;
  @override
  final XFile? image;

  @override
  String toString() {
    return 'UpdateProfileState(state: $state, message: $message, profileImage: $profileImage, certificate: $certificate, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProfileStateImpl &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage) &&
            (identical(other.certificate, certificate) ||
                other.certificate == certificate) &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, state, message, profileImage, certificate, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateProfileStateImplCopyWith<_$UpdateProfileStateImpl> get copyWith =>
      __$$UpdateProfileStateImplCopyWithImpl<_$UpdateProfileStateImpl>(
          this, _$identity);
}

abstract class _UpdateProfileState implements UpdateProfileState {
  factory _UpdateProfileState(
      {required final RequestState state,
      required final String message,
      required final String? profileImage,
      required final CertificationType? certificate,
      required final XFile? image}) = _$UpdateProfileStateImpl;

  @override
  RequestState get state;
  @override
  String get message;
  @override
  String? get profileImage;
  @override
  CertificationType? get certificate;
  @override
  XFile? get image;
  @override
  @JsonKey(ignore: true)
  _$$UpdateProfileStateImplCopyWith<_$UpdateProfileStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UpdateProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(XFile? image) changeImage,
    required TResult Function(CertificationType? certification)
        changeCertificate,
    required TResult Function(String firstName, String lastName, String bio)
        updateProfile,
    required TResult Function(String? imageUrl) updateImageUrl,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(XFile? image)? changeImage,
    TResult? Function(CertificationType? certification)? changeCertificate,
    TResult? Function(String firstName, String lastName, String bio)?
        updateProfile,
    TResult? Function(String? imageUrl)? updateImageUrl,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(XFile? image)? changeImage,
    TResult Function(CertificationType? certification)? changeCertificate,
    TResult Function(String firstName, String lastName, String bio)?
        updateProfile,
    TResult Function(String? imageUrl)? updateImageUrl,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ChangeImage value) changeImage,
    required TResult Function(_ChangeCertificate value) changeCertificate,
    required TResult Function(_UpdateProfile value) updateProfile,
    required TResult Function(_UpdateImageUrl value) updateImageUrl,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ChangeImage value)? changeImage,
    TResult? Function(_ChangeCertificate value)? changeCertificate,
    TResult? Function(_UpdateProfile value)? updateProfile,
    TResult? Function(_UpdateImageUrl value)? updateImageUrl,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChangeImage value)? changeImage,
    TResult Function(_ChangeCertificate value)? changeCertificate,
    TResult Function(_UpdateProfile value)? updateProfile,
    TResult Function(_UpdateImageUrl value)? updateImageUrl,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateProfileEventCopyWith<$Res> {
  factory $UpdateProfileEventCopyWith(
          UpdateProfileEvent value, $Res Function(UpdateProfileEvent) then) =
      _$UpdateProfileEventCopyWithImpl<$Res, UpdateProfileEvent>;
}

/// @nodoc
class _$UpdateProfileEventCopyWithImpl<$Res, $Val extends UpdateProfileEvent>
    implements $UpdateProfileEventCopyWith<$Res> {
  _$UpdateProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$UpdateProfileEventCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'UpdateProfileEvent.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(XFile? image) changeImage,
    required TResult Function(CertificationType? certification)
        changeCertificate,
    required TResult Function(String firstName, String lastName, String bio)
        updateProfile,
    required TResult Function(String? imageUrl) updateImageUrl,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(XFile? image)? changeImage,
    TResult? Function(CertificationType? certification)? changeCertificate,
    TResult? Function(String firstName, String lastName, String bio)?
        updateProfile,
    TResult? Function(String? imageUrl)? updateImageUrl,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(XFile? image)? changeImage,
    TResult Function(CertificationType? certification)? changeCertificate,
    TResult Function(String firstName, String lastName, String bio)?
        updateProfile,
    TResult Function(String? imageUrl)? updateImageUrl,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ChangeImage value) changeImage,
    required TResult Function(_ChangeCertificate value) changeCertificate,
    required TResult Function(_UpdateProfile value) updateProfile,
    required TResult Function(_UpdateImageUrl value) updateImageUrl,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ChangeImage value)? changeImage,
    TResult? Function(_ChangeCertificate value)? changeCertificate,
    TResult? Function(_UpdateProfile value)? updateProfile,
    TResult? Function(_UpdateImageUrl value)? updateImageUrl,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChangeImage value)? changeImage,
    TResult Function(_ChangeCertificate value)? changeCertificate,
    TResult Function(_UpdateProfile value)? updateProfile,
    TResult Function(_UpdateImageUrl value)? updateImageUrl,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements UpdateProfileEvent {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$ChangeImageImplCopyWith<$Res> {
  factory _$$ChangeImageImplCopyWith(
          _$ChangeImageImpl value, $Res Function(_$ChangeImageImpl) then) =
      __$$ChangeImageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({XFile? image});
}

/// @nodoc
class __$$ChangeImageImplCopyWithImpl<$Res>
    extends _$UpdateProfileEventCopyWithImpl<$Res, _$ChangeImageImpl>
    implements _$$ChangeImageImplCopyWith<$Res> {
  __$$ChangeImageImplCopyWithImpl(
      _$ChangeImageImpl _value, $Res Function(_$ChangeImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
  }) {
    return _then(_$ChangeImageImpl(
      freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as XFile?,
    ));
  }
}

/// @nodoc

class _$ChangeImageImpl implements _ChangeImage {
  const _$ChangeImageImpl(this.image);

  @override
  final XFile? image;

  @override
  String toString() {
    return 'UpdateProfileEvent.changeImage(image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeImageImpl &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeImageImplCopyWith<_$ChangeImageImpl> get copyWith =>
      __$$ChangeImageImplCopyWithImpl<_$ChangeImageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(XFile? image) changeImage,
    required TResult Function(CertificationType? certification)
        changeCertificate,
    required TResult Function(String firstName, String lastName, String bio)
        updateProfile,
    required TResult Function(String? imageUrl) updateImageUrl,
  }) {
    return changeImage(image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(XFile? image)? changeImage,
    TResult? Function(CertificationType? certification)? changeCertificate,
    TResult? Function(String firstName, String lastName, String bio)?
        updateProfile,
    TResult? Function(String? imageUrl)? updateImageUrl,
  }) {
    return changeImage?.call(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(XFile? image)? changeImage,
    TResult Function(CertificationType? certification)? changeCertificate,
    TResult Function(String firstName, String lastName, String bio)?
        updateProfile,
    TResult Function(String? imageUrl)? updateImageUrl,
    required TResult orElse(),
  }) {
    if (changeImage != null) {
      return changeImage(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ChangeImage value) changeImage,
    required TResult Function(_ChangeCertificate value) changeCertificate,
    required TResult Function(_UpdateProfile value) updateProfile,
    required TResult Function(_UpdateImageUrl value) updateImageUrl,
  }) {
    return changeImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ChangeImage value)? changeImage,
    TResult? Function(_ChangeCertificate value)? changeCertificate,
    TResult? Function(_UpdateProfile value)? updateProfile,
    TResult? Function(_UpdateImageUrl value)? updateImageUrl,
  }) {
    return changeImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChangeImage value)? changeImage,
    TResult Function(_ChangeCertificate value)? changeCertificate,
    TResult Function(_UpdateProfile value)? updateProfile,
    TResult Function(_UpdateImageUrl value)? updateImageUrl,
    required TResult orElse(),
  }) {
    if (changeImage != null) {
      return changeImage(this);
    }
    return orElse();
  }
}

abstract class _ChangeImage implements UpdateProfileEvent {
  const factory _ChangeImage(final XFile? image) = _$ChangeImageImpl;

  XFile? get image;
  @JsonKey(ignore: true)
  _$$ChangeImageImplCopyWith<_$ChangeImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeCertificateImplCopyWith<$Res> {
  factory _$$ChangeCertificateImplCopyWith(_$ChangeCertificateImpl value,
          $Res Function(_$ChangeCertificateImpl) then) =
      __$$ChangeCertificateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CertificationType? certification});
}

/// @nodoc
class __$$ChangeCertificateImplCopyWithImpl<$Res>
    extends _$UpdateProfileEventCopyWithImpl<$Res, _$ChangeCertificateImpl>
    implements _$$ChangeCertificateImplCopyWith<$Res> {
  __$$ChangeCertificateImplCopyWithImpl(_$ChangeCertificateImpl _value,
      $Res Function(_$ChangeCertificateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? certification = freezed,
  }) {
    return _then(_$ChangeCertificateImpl(
      freezed == certification
          ? _value.certification
          : certification // ignore: cast_nullable_to_non_nullable
              as CertificationType?,
    ));
  }
}

/// @nodoc

class _$ChangeCertificateImpl implements _ChangeCertificate {
  const _$ChangeCertificateImpl(this.certification);

  @override
  final CertificationType? certification;

  @override
  String toString() {
    return 'UpdateProfileEvent.changeCertificate(certification: $certification)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeCertificateImpl &&
            (identical(other.certification, certification) ||
                other.certification == certification));
  }

  @override
  int get hashCode => Object.hash(runtimeType, certification);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeCertificateImplCopyWith<_$ChangeCertificateImpl> get copyWith =>
      __$$ChangeCertificateImplCopyWithImpl<_$ChangeCertificateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(XFile? image) changeImage,
    required TResult Function(CertificationType? certification)
        changeCertificate,
    required TResult Function(String firstName, String lastName, String bio)
        updateProfile,
    required TResult Function(String? imageUrl) updateImageUrl,
  }) {
    return changeCertificate(certification);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(XFile? image)? changeImage,
    TResult? Function(CertificationType? certification)? changeCertificate,
    TResult? Function(String firstName, String lastName, String bio)?
        updateProfile,
    TResult? Function(String? imageUrl)? updateImageUrl,
  }) {
    return changeCertificate?.call(certification);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(XFile? image)? changeImage,
    TResult Function(CertificationType? certification)? changeCertificate,
    TResult Function(String firstName, String lastName, String bio)?
        updateProfile,
    TResult Function(String? imageUrl)? updateImageUrl,
    required TResult orElse(),
  }) {
    if (changeCertificate != null) {
      return changeCertificate(certification);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ChangeImage value) changeImage,
    required TResult Function(_ChangeCertificate value) changeCertificate,
    required TResult Function(_UpdateProfile value) updateProfile,
    required TResult Function(_UpdateImageUrl value) updateImageUrl,
  }) {
    return changeCertificate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ChangeImage value)? changeImage,
    TResult? Function(_ChangeCertificate value)? changeCertificate,
    TResult? Function(_UpdateProfile value)? updateProfile,
    TResult? Function(_UpdateImageUrl value)? updateImageUrl,
  }) {
    return changeCertificate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChangeImage value)? changeImage,
    TResult Function(_ChangeCertificate value)? changeCertificate,
    TResult Function(_UpdateProfile value)? updateProfile,
    TResult Function(_UpdateImageUrl value)? updateImageUrl,
    required TResult orElse(),
  }) {
    if (changeCertificate != null) {
      return changeCertificate(this);
    }
    return orElse();
  }
}

abstract class _ChangeCertificate implements UpdateProfileEvent {
  const factory _ChangeCertificate(final CertificationType? certification) =
      _$ChangeCertificateImpl;

  CertificationType? get certification;
  @JsonKey(ignore: true)
  _$$ChangeCertificateImplCopyWith<_$ChangeCertificateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateProfileImplCopyWith<$Res> {
  factory _$$UpdateProfileImplCopyWith(
          _$UpdateProfileImpl value, $Res Function(_$UpdateProfileImpl) then) =
      __$$UpdateProfileImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String firstName, String lastName, String bio});
}

/// @nodoc
class __$$UpdateProfileImplCopyWithImpl<$Res>
    extends _$UpdateProfileEventCopyWithImpl<$Res, _$UpdateProfileImpl>
    implements _$$UpdateProfileImplCopyWith<$Res> {
  __$$UpdateProfileImplCopyWithImpl(
      _$UpdateProfileImpl _value, $Res Function(_$UpdateProfileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? bio = null,
  }) {
    return _then(_$UpdateProfileImpl(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      bio: null == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateProfileImpl implements _UpdateProfile {
  const _$UpdateProfileImpl(
      {required this.firstName, required this.lastName, required this.bio});

  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String bio;

  @override
  String toString() {
    return 'UpdateProfileEvent.updateProfile(firstName: $firstName, lastName: $lastName, bio: $bio)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProfileImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.bio, bio) || other.bio == bio));
  }

  @override
  int get hashCode => Object.hash(runtimeType, firstName, lastName, bio);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateProfileImplCopyWith<_$UpdateProfileImpl> get copyWith =>
      __$$UpdateProfileImplCopyWithImpl<_$UpdateProfileImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(XFile? image) changeImage,
    required TResult Function(CertificationType? certification)
        changeCertificate,
    required TResult Function(String firstName, String lastName, String bio)
        updateProfile,
    required TResult Function(String? imageUrl) updateImageUrl,
  }) {
    return updateProfile(firstName, lastName, bio);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(XFile? image)? changeImage,
    TResult? Function(CertificationType? certification)? changeCertificate,
    TResult? Function(String firstName, String lastName, String bio)?
        updateProfile,
    TResult? Function(String? imageUrl)? updateImageUrl,
  }) {
    return updateProfile?.call(firstName, lastName, bio);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(XFile? image)? changeImage,
    TResult Function(CertificationType? certification)? changeCertificate,
    TResult Function(String firstName, String lastName, String bio)?
        updateProfile,
    TResult Function(String? imageUrl)? updateImageUrl,
    required TResult orElse(),
  }) {
    if (updateProfile != null) {
      return updateProfile(firstName, lastName, bio);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ChangeImage value) changeImage,
    required TResult Function(_ChangeCertificate value) changeCertificate,
    required TResult Function(_UpdateProfile value) updateProfile,
    required TResult Function(_UpdateImageUrl value) updateImageUrl,
  }) {
    return updateProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ChangeImage value)? changeImage,
    TResult? Function(_ChangeCertificate value)? changeCertificate,
    TResult? Function(_UpdateProfile value)? updateProfile,
    TResult? Function(_UpdateImageUrl value)? updateImageUrl,
  }) {
    return updateProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChangeImage value)? changeImage,
    TResult Function(_ChangeCertificate value)? changeCertificate,
    TResult Function(_UpdateProfile value)? updateProfile,
    TResult Function(_UpdateImageUrl value)? updateImageUrl,
    required TResult orElse(),
  }) {
    if (updateProfile != null) {
      return updateProfile(this);
    }
    return orElse();
  }
}

abstract class _UpdateProfile implements UpdateProfileEvent {
  const factory _UpdateProfile(
      {required final String firstName,
      required final String lastName,
      required final String bio}) = _$UpdateProfileImpl;

  String get firstName;
  String get lastName;
  String get bio;
  @JsonKey(ignore: true)
  _$$UpdateProfileImplCopyWith<_$UpdateProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateImageUrlImplCopyWith<$Res> {
  factory _$$UpdateImageUrlImplCopyWith(_$UpdateImageUrlImpl value,
          $Res Function(_$UpdateImageUrlImpl) then) =
      __$$UpdateImageUrlImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? imageUrl});
}

/// @nodoc
class __$$UpdateImageUrlImplCopyWithImpl<$Res>
    extends _$UpdateProfileEventCopyWithImpl<$Res, _$UpdateImageUrlImpl>
    implements _$$UpdateImageUrlImplCopyWith<$Res> {
  __$$UpdateImageUrlImplCopyWithImpl(
      _$UpdateImageUrlImpl _value, $Res Function(_$UpdateImageUrlImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = freezed,
  }) {
    return _then(_$UpdateImageUrlImpl(
      freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UpdateImageUrlImpl implements _UpdateImageUrl {
  const _$UpdateImageUrlImpl(this.imageUrl);

  @override
  final String? imageUrl;

  @override
  String toString() {
    return 'UpdateProfileEvent.updateImageUrl(imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateImageUrlImpl &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateImageUrlImplCopyWith<_$UpdateImageUrlImpl> get copyWith =>
      __$$UpdateImageUrlImplCopyWithImpl<_$UpdateImageUrlImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(XFile? image) changeImage,
    required TResult Function(CertificationType? certification)
        changeCertificate,
    required TResult Function(String firstName, String lastName, String bio)
        updateProfile,
    required TResult Function(String? imageUrl) updateImageUrl,
  }) {
    return updateImageUrl(imageUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(XFile? image)? changeImage,
    TResult? Function(CertificationType? certification)? changeCertificate,
    TResult? Function(String firstName, String lastName, String bio)?
        updateProfile,
    TResult? Function(String? imageUrl)? updateImageUrl,
  }) {
    return updateImageUrl?.call(imageUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(XFile? image)? changeImage,
    TResult Function(CertificationType? certification)? changeCertificate,
    TResult Function(String firstName, String lastName, String bio)?
        updateProfile,
    TResult Function(String? imageUrl)? updateImageUrl,
    required TResult orElse(),
  }) {
    if (updateImageUrl != null) {
      return updateImageUrl(imageUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ChangeImage value) changeImage,
    required TResult Function(_ChangeCertificate value) changeCertificate,
    required TResult Function(_UpdateProfile value) updateProfile,
    required TResult Function(_UpdateImageUrl value) updateImageUrl,
  }) {
    return updateImageUrl(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ChangeImage value)? changeImage,
    TResult? Function(_ChangeCertificate value)? changeCertificate,
    TResult? Function(_UpdateProfile value)? updateProfile,
    TResult? Function(_UpdateImageUrl value)? updateImageUrl,
  }) {
    return updateImageUrl?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChangeImage value)? changeImage,
    TResult Function(_ChangeCertificate value)? changeCertificate,
    TResult Function(_UpdateProfile value)? updateProfile,
    TResult Function(_UpdateImageUrl value)? updateImageUrl,
    required TResult orElse(),
  }) {
    if (updateImageUrl != null) {
      return updateImageUrl(this);
    }
    return orElse();
  }
}

abstract class _UpdateImageUrl implements UpdateProfileEvent {
  const factory _UpdateImageUrl(final String? imageUrl) = _$UpdateImageUrlImpl;

  String? get imageUrl;
  @JsonKey(ignore: true)
  _$$UpdateImageUrlImplCopyWith<_$UpdateImageUrlImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
