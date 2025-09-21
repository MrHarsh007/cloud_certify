// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authenticator_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthenticatorWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authCheckRequest,
    required TResult Function() signOut,
    required TResult Function() deleteAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authCheckRequest,
    TResult? Function()? signOut,
    TResult? Function()? deleteAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authCheckRequest,
    TResult Function()? signOut,
    TResult Function()? deleteAccount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthCheckRequest value) authCheckRequest,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_deleteAccount value) deleteAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthCheckRequest value)? authCheckRequest,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_deleteAccount value)? deleteAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthCheckRequest value)? authCheckRequest,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_deleteAccount value)? deleteAccount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticatorWatcherEventCopyWith<$Res> {
  factory $AuthenticatorWatcherEventCopyWith(AuthenticatorWatcherEvent value,
          $Res Function(AuthenticatorWatcherEvent) then) =
      _$AuthenticatorWatcherEventCopyWithImpl<$Res, AuthenticatorWatcherEvent>;
}

/// @nodoc
class _$AuthenticatorWatcherEventCopyWithImpl<$Res,
        $Val extends AuthenticatorWatcherEvent>
    implements $AuthenticatorWatcherEventCopyWith<$Res> {
  _$AuthenticatorWatcherEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthCheckRequestImplCopyWith<$Res> {
  factory _$$AuthCheckRequestImplCopyWith(_$AuthCheckRequestImpl value,
          $Res Function(_$AuthCheckRequestImpl) then) =
      __$$AuthCheckRequestImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthCheckRequestImplCopyWithImpl<$Res>
    extends _$AuthenticatorWatcherEventCopyWithImpl<$Res,
        _$AuthCheckRequestImpl>
    implements _$$AuthCheckRequestImplCopyWith<$Res> {
  __$$AuthCheckRequestImplCopyWithImpl(_$AuthCheckRequestImpl _value,
      $Res Function(_$AuthCheckRequestImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthCheckRequestImpl implements _AuthCheckRequest {
  const _$AuthCheckRequestImpl();

  @override
  String toString() {
    return 'AuthenticatorWatcherEvent.authCheckRequest()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthCheckRequestImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authCheckRequest,
    required TResult Function() signOut,
    required TResult Function() deleteAccount,
  }) {
    return authCheckRequest();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authCheckRequest,
    TResult? Function()? signOut,
    TResult? Function()? deleteAccount,
  }) {
    return authCheckRequest?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authCheckRequest,
    TResult Function()? signOut,
    TResult Function()? deleteAccount,
    required TResult orElse(),
  }) {
    if (authCheckRequest != null) {
      return authCheckRequest();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthCheckRequest value) authCheckRequest,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_deleteAccount value) deleteAccount,
  }) {
    return authCheckRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthCheckRequest value)? authCheckRequest,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_deleteAccount value)? deleteAccount,
  }) {
    return authCheckRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthCheckRequest value)? authCheckRequest,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_deleteAccount value)? deleteAccount,
    required TResult orElse(),
  }) {
    if (authCheckRequest != null) {
      return authCheckRequest(this);
    }
    return orElse();
  }
}

abstract class _AuthCheckRequest implements AuthenticatorWatcherEvent {
  const factory _AuthCheckRequest() = _$AuthCheckRequestImpl;
}

/// @nodoc
abstract class _$$SignOutImplCopyWith<$Res> {
  factory _$$SignOutImplCopyWith(
          _$SignOutImpl value, $Res Function(_$SignOutImpl) then) =
      __$$SignOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignOutImplCopyWithImpl<$Res>
    extends _$AuthenticatorWatcherEventCopyWithImpl<$Res, _$SignOutImpl>
    implements _$$SignOutImplCopyWith<$Res> {
  __$$SignOutImplCopyWithImpl(
      _$SignOutImpl _value, $Res Function(_$SignOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignOutImpl implements _SignOut {
  const _$SignOutImpl();

  @override
  String toString() {
    return 'AuthenticatorWatcherEvent.signOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authCheckRequest,
    required TResult Function() signOut,
    required TResult Function() deleteAccount,
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authCheckRequest,
    TResult? Function()? signOut,
    TResult? Function()? deleteAccount,
  }) {
    return signOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authCheckRequest,
    TResult Function()? signOut,
    TResult Function()? deleteAccount,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthCheckRequest value) authCheckRequest,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_deleteAccount value) deleteAccount,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthCheckRequest value)? authCheckRequest,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_deleteAccount value)? deleteAccount,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthCheckRequest value)? authCheckRequest,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_deleteAccount value)? deleteAccount,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class _SignOut implements AuthenticatorWatcherEvent {
  const factory _SignOut() = _$SignOutImpl;
}

/// @nodoc
abstract class _$$deleteAccountImplCopyWith<$Res> {
  factory _$$deleteAccountImplCopyWith(
          _$deleteAccountImpl value, $Res Function(_$deleteAccountImpl) then) =
      __$$deleteAccountImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$deleteAccountImplCopyWithImpl<$Res>
    extends _$AuthenticatorWatcherEventCopyWithImpl<$Res, _$deleteAccountImpl>
    implements _$$deleteAccountImplCopyWith<$Res> {
  __$$deleteAccountImplCopyWithImpl(
      _$deleteAccountImpl _value, $Res Function(_$deleteAccountImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$deleteAccountImpl implements _deleteAccount {
  const _$deleteAccountImpl();

  @override
  String toString() {
    return 'AuthenticatorWatcherEvent.deleteAccount()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$deleteAccountImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authCheckRequest,
    required TResult Function() signOut,
    required TResult Function() deleteAccount,
  }) {
    return deleteAccount();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authCheckRequest,
    TResult? Function()? signOut,
    TResult? Function()? deleteAccount,
  }) {
    return deleteAccount?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authCheckRequest,
    TResult Function()? signOut,
    TResult Function()? deleteAccount,
    required TResult orElse(),
  }) {
    if (deleteAccount != null) {
      return deleteAccount();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthCheckRequest value) authCheckRequest,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_deleteAccount value) deleteAccount,
  }) {
    return deleteAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthCheckRequest value)? authCheckRequest,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_deleteAccount value)? deleteAccount,
  }) {
    return deleteAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthCheckRequest value)? authCheckRequest,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_deleteAccount value)? deleteAccount,
    required TResult orElse(),
  }) {
    if (deleteAccount != null) {
      return deleteAccount(this);
    }
    return orElse();
  }
}

abstract class _deleteAccount implements AuthenticatorWatcherEvent {
  const factory _deleteAccount() = _$deleteAccountImpl;
}

/// @nodoc
mixin _$AuthenticatorWatcherState {
  UserState get state => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  UserResponse? get usermodel => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthenticatorWatcherStateCopyWith<AuthenticatorWatcherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticatorWatcherStateCopyWith<$Res> {
  factory $AuthenticatorWatcherStateCopyWith(AuthenticatorWatcherState value,
          $Res Function(AuthenticatorWatcherState) then) =
      _$AuthenticatorWatcherStateCopyWithImpl<$Res, AuthenticatorWatcherState>;
  @useResult
  $Res call({UserState state, String message, UserResponse? usermodel});
}

/// @nodoc
class _$AuthenticatorWatcherStateCopyWithImpl<$Res,
        $Val extends AuthenticatorWatcherState>
    implements $AuthenticatorWatcherStateCopyWith<$Res> {
  _$AuthenticatorWatcherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? message = null,
    Object? usermodel = freezed,
  }) {
    return _then(_value.copyWith(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as UserState,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      usermodel: freezed == usermodel
          ? _value.usermodel
          : usermodel // ignore: cast_nullable_to_non_nullable
              as UserResponse?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthenticatorWatcherStateImplCopyWith<$Res>
    implements $AuthenticatorWatcherStateCopyWith<$Res> {
  factory _$$AuthenticatorWatcherStateImplCopyWith(
          _$AuthenticatorWatcherStateImpl value,
          $Res Function(_$AuthenticatorWatcherStateImpl) then) =
      __$$AuthenticatorWatcherStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserState state, String message, UserResponse? usermodel});
}

/// @nodoc
class __$$AuthenticatorWatcherStateImplCopyWithImpl<$Res>
    extends _$AuthenticatorWatcherStateCopyWithImpl<$Res,
        _$AuthenticatorWatcherStateImpl>
    implements _$$AuthenticatorWatcherStateImplCopyWith<$Res> {
  __$$AuthenticatorWatcherStateImplCopyWithImpl(
      _$AuthenticatorWatcherStateImpl _value,
      $Res Function(_$AuthenticatorWatcherStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? message = null,
    Object? usermodel = freezed,
  }) {
    return _then(_$AuthenticatorWatcherStateImpl(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as UserState,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      usermodel: freezed == usermodel
          ? _value.usermodel
          : usermodel // ignore: cast_nullable_to_non_nullable
              as UserResponse?,
    ));
  }
}

/// @nodoc

class _$AuthenticatorWatcherStateImpl implements _AuthenticatorWatcherState {
  const _$AuthenticatorWatcherStateImpl(
      {required this.state, required this.message, this.usermodel});

  @override
  final UserState state;
  @override
  final String message;
  @override
  final UserResponse? usermodel;

  @override
  String toString() {
    return 'AuthenticatorWatcherState(state: $state, message: $message, usermodel: $usermodel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticatorWatcherStateImpl &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.usermodel, usermodel) ||
                other.usermodel == usermodel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state, message, usermodel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticatorWatcherStateImplCopyWith<_$AuthenticatorWatcherStateImpl>
      get copyWith => __$$AuthenticatorWatcherStateImplCopyWithImpl<
          _$AuthenticatorWatcherStateImpl>(this, _$identity);
}

abstract class _AuthenticatorWatcherState implements AuthenticatorWatcherState {
  const factory _AuthenticatorWatcherState(
      {required final UserState state,
      required final String message,
      final UserResponse? usermodel}) = _$AuthenticatorWatcherStateImpl;

  @override
  UserState get state;
  @override
  String get message;
  @override
  UserResponse? get usermodel;
  @override
  @JsonKey(ignore: true)
  _$$AuthenticatorWatcherStateImplCopyWith<_$AuthenticatorWatcherStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
