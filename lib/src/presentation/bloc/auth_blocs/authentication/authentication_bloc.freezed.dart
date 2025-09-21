// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authentication_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthenticationState {
  AuthFlow get state => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  CertificationType? get intrestedCertificate =>
      throw _privateConstructorUsedError;
  bool get isRememberMe => throw _privateConstructorUsedError;
  bool get isTermsAccepted => throw _privateConstructorUsedError;
  OnboardingType get onboardingType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthenticationStateCopyWith<AuthenticationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(
          AuthenticationState value, $Res Function(AuthenticationState) then) =
      _$AuthenticationStateCopyWithImpl<$Res, AuthenticationState>;
  @useResult
  $Res call(
      {AuthFlow state,
      String message,
      CertificationType? intrestedCertificate,
      bool isRememberMe,
      bool isTermsAccepted,
      OnboardingType onboardingType});
}

/// @nodoc
class _$AuthenticationStateCopyWithImpl<$Res, $Val extends AuthenticationState>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? message = null,
    Object? intrestedCertificate = freezed,
    Object? isRememberMe = null,
    Object? isTermsAccepted = null,
    Object? onboardingType = null,
  }) {
    return _then(_value.copyWith(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as AuthFlow,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      intrestedCertificate: freezed == intrestedCertificate
          ? _value.intrestedCertificate
          : intrestedCertificate // ignore: cast_nullable_to_non_nullable
              as CertificationType?,
      isRememberMe: null == isRememberMe
          ? _value.isRememberMe
          : isRememberMe // ignore: cast_nullable_to_non_nullable
              as bool,
      isTermsAccepted: null == isTermsAccepted
          ? _value.isTermsAccepted
          : isTermsAccepted // ignore: cast_nullable_to_non_nullable
              as bool,
      onboardingType: null == onboardingType
          ? _value.onboardingType
          : onboardingType // ignore: cast_nullable_to_non_nullable
              as OnboardingType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthenticationStateImplCopyWith<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  factory _$$AuthenticationStateImplCopyWith(_$AuthenticationStateImpl value,
          $Res Function(_$AuthenticationStateImpl) then) =
      __$$AuthenticationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AuthFlow state,
      String message,
      CertificationType? intrestedCertificate,
      bool isRememberMe,
      bool isTermsAccepted,
      OnboardingType onboardingType});
}

/// @nodoc
class __$$AuthenticationStateImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$AuthenticationStateImpl>
    implements _$$AuthenticationStateImplCopyWith<$Res> {
  __$$AuthenticationStateImplCopyWithImpl(_$AuthenticationStateImpl _value,
      $Res Function(_$AuthenticationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? message = null,
    Object? intrestedCertificate = freezed,
    Object? isRememberMe = null,
    Object? isTermsAccepted = null,
    Object? onboardingType = null,
  }) {
    return _then(_$AuthenticationStateImpl(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as AuthFlow,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      intrestedCertificate: freezed == intrestedCertificate
          ? _value.intrestedCertificate
          : intrestedCertificate // ignore: cast_nullable_to_non_nullable
              as CertificationType?,
      isRememberMe: null == isRememberMe
          ? _value.isRememberMe
          : isRememberMe // ignore: cast_nullable_to_non_nullable
              as bool,
      isTermsAccepted: null == isTermsAccepted
          ? _value.isTermsAccepted
          : isTermsAccepted // ignore: cast_nullable_to_non_nullable
              as bool,
      onboardingType: null == onboardingType
          ? _value.onboardingType
          : onboardingType // ignore: cast_nullable_to_non_nullable
              as OnboardingType,
    ));
  }
}

/// @nodoc

class _$AuthenticationStateImpl implements _AuthenticationState {
  const _$AuthenticationStateImpl(
      {required this.state,
      required this.message,
      required this.intrestedCertificate,
      required this.isRememberMe,
      required this.isTermsAccepted,
      required this.onboardingType});

  @override
  final AuthFlow state;
  @override
  final String message;
  @override
  final CertificationType? intrestedCertificate;
  @override
  final bool isRememberMe;
  @override
  final bool isTermsAccepted;
  @override
  final OnboardingType onboardingType;

  @override
  String toString() {
    return 'AuthenticationState(state: $state, message: $message, intrestedCertificate: $intrestedCertificate, isRememberMe: $isRememberMe, isTermsAccepted: $isTermsAccepted, onboardingType: $onboardingType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationStateImpl &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.intrestedCertificate, intrestedCertificate) ||
                other.intrestedCertificate == intrestedCertificate) &&
            (identical(other.isRememberMe, isRememberMe) ||
                other.isRememberMe == isRememberMe) &&
            (identical(other.isTermsAccepted, isTermsAccepted) ||
                other.isTermsAccepted == isTermsAccepted) &&
            (identical(other.onboardingType, onboardingType) ||
                other.onboardingType == onboardingType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state, message,
      intrestedCertificate, isRememberMe, isTermsAccepted, onboardingType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationStateImplCopyWith<_$AuthenticationStateImpl> get copyWith =>
      __$$AuthenticationStateImplCopyWithImpl<_$AuthenticationStateImpl>(
          this, _$identity);
}

abstract class _AuthenticationState implements AuthenticationState {
  const factory _AuthenticationState(
          {required final AuthFlow state,
          required final String message,
          required final CertificationType? intrestedCertificate,
          required final bool isRememberMe,
          required final bool isTermsAccepted,
          required final OnboardingType onboardingType}) =
      _$AuthenticationStateImpl;

  @override
  AuthFlow get state;
  @override
  String get message;
  @override
  CertificationType? get intrestedCertificate;
  @override
  bool get isRememberMe;
  @override
  bool get isTermsAccepted;
  @override
  OnboardingType get onboardingType;
  @override
  @JsonKey(ignore: true)
  _$$AuthenticationStateImplCopyWith<_$AuthenticationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthenticationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) checkUserExist,
    required TResult Function(String email, String password) signIn,
    required TResult Function(
            String email, String fName, String lName, String password)
        signUp,
    required TResult Function(CertificationType? intrestedCertificate)
        changeIntrestedCertificate,
    required TResult Function(bool isRememberMe) changeRememberMe,
    required TResult Function(bool isTermsAccepted) changeTermsAccepted,
    required TResult Function(OnboardingType type) changeOnboardingType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? checkUserExist,
    TResult? Function(String email, String password)? signIn,
    TResult? Function(
            String email, String fName, String lName, String password)?
        signUp,
    TResult? Function(CertificationType? intrestedCertificate)?
        changeIntrestedCertificate,
    TResult? Function(bool isRememberMe)? changeRememberMe,
    TResult? Function(bool isTermsAccepted)? changeTermsAccepted,
    TResult? Function(OnboardingType type)? changeOnboardingType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? checkUserExist,
    TResult Function(String email, String password)? signIn,
    TResult Function(String email, String fName, String lName, String password)?
        signUp,
    TResult Function(CertificationType? intrestedCertificate)?
        changeIntrestedCertificate,
    TResult Function(bool isRememberMe)? changeRememberMe,
    TResult Function(bool isTermsAccepted)? changeTermsAccepted,
    TResult Function(OnboardingType type)? changeOnboardingType,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckUserExist value) checkUserExist,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_ChangeIntrestedCertificate value)
        changeIntrestedCertificate,
    required TResult Function(_ChangeRememberMe value) changeRememberMe,
    required TResult Function(_ChangeTermsAccepted value) changeTermsAccepted,
    required TResult Function(_ChangeOnboardingType value) changeOnboardingType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckUserExist value)? checkUserExist,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_ChangeIntrestedCertificate value)?
        changeIntrestedCertificate,
    TResult? Function(_ChangeRememberMe value)? changeRememberMe,
    TResult? Function(_ChangeTermsAccepted value)? changeTermsAccepted,
    TResult? Function(_ChangeOnboardingType value)? changeOnboardingType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckUserExist value)? checkUserExist,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ChangeIntrestedCertificate value)?
        changeIntrestedCertificate,
    TResult Function(_ChangeRememberMe value)? changeRememberMe,
    TResult Function(_ChangeTermsAccepted value)? changeTermsAccepted,
    TResult Function(_ChangeOnboardingType value)? changeOnboardingType,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationEventCopyWith<$Res> {
  factory $AuthenticationEventCopyWith(
          AuthenticationEvent value, $Res Function(AuthenticationEvent) then) =
      _$AuthenticationEventCopyWithImpl<$Res, AuthenticationEvent>;
}

/// @nodoc
class _$AuthenticationEventCopyWithImpl<$Res, $Val extends AuthenticationEvent>
    implements $AuthenticationEventCopyWith<$Res> {
  _$AuthenticationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CheckUserExistImplCopyWith<$Res> {
  factory _$$CheckUserExistImplCopyWith(_$CheckUserExistImpl value,
          $Res Function(_$CheckUserExistImpl) then) =
      __$$CheckUserExistImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$CheckUserExistImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$CheckUserExistImpl>
    implements _$$CheckUserExistImplCopyWith<$Res> {
  __$$CheckUserExistImplCopyWithImpl(
      _$CheckUserExistImpl _value, $Res Function(_$CheckUserExistImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$CheckUserExistImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CheckUserExistImpl implements _CheckUserExist {
  const _$CheckUserExistImpl({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'AuthenticationEvent.checkUserExist(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckUserExistImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckUserExistImplCopyWith<_$CheckUserExistImpl> get copyWith =>
      __$$CheckUserExistImplCopyWithImpl<_$CheckUserExistImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) checkUserExist,
    required TResult Function(String email, String password) signIn,
    required TResult Function(
            String email, String fName, String lName, String password)
        signUp,
    required TResult Function(CertificationType? intrestedCertificate)
        changeIntrestedCertificate,
    required TResult Function(bool isRememberMe) changeRememberMe,
    required TResult Function(bool isTermsAccepted) changeTermsAccepted,
    required TResult Function(OnboardingType type) changeOnboardingType,
  }) {
    return checkUserExist(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? checkUserExist,
    TResult? Function(String email, String password)? signIn,
    TResult? Function(
            String email, String fName, String lName, String password)?
        signUp,
    TResult? Function(CertificationType? intrestedCertificate)?
        changeIntrestedCertificate,
    TResult? Function(bool isRememberMe)? changeRememberMe,
    TResult? Function(bool isTermsAccepted)? changeTermsAccepted,
    TResult? Function(OnboardingType type)? changeOnboardingType,
  }) {
    return checkUserExist?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? checkUserExist,
    TResult Function(String email, String password)? signIn,
    TResult Function(String email, String fName, String lName, String password)?
        signUp,
    TResult Function(CertificationType? intrestedCertificate)?
        changeIntrestedCertificate,
    TResult Function(bool isRememberMe)? changeRememberMe,
    TResult Function(bool isTermsAccepted)? changeTermsAccepted,
    TResult Function(OnboardingType type)? changeOnboardingType,
    required TResult orElse(),
  }) {
    if (checkUserExist != null) {
      return checkUserExist(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckUserExist value) checkUserExist,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_ChangeIntrestedCertificate value)
        changeIntrestedCertificate,
    required TResult Function(_ChangeRememberMe value) changeRememberMe,
    required TResult Function(_ChangeTermsAccepted value) changeTermsAccepted,
    required TResult Function(_ChangeOnboardingType value) changeOnboardingType,
  }) {
    return checkUserExist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckUserExist value)? checkUserExist,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_ChangeIntrestedCertificate value)?
        changeIntrestedCertificate,
    TResult? Function(_ChangeRememberMe value)? changeRememberMe,
    TResult? Function(_ChangeTermsAccepted value)? changeTermsAccepted,
    TResult? Function(_ChangeOnboardingType value)? changeOnboardingType,
  }) {
    return checkUserExist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckUserExist value)? checkUserExist,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ChangeIntrestedCertificate value)?
        changeIntrestedCertificate,
    TResult Function(_ChangeRememberMe value)? changeRememberMe,
    TResult Function(_ChangeTermsAccepted value)? changeTermsAccepted,
    TResult Function(_ChangeOnboardingType value)? changeOnboardingType,
    required TResult orElse(),
  }) {
    if (checkUserExist != null) {
      return checkUserExist(this);
    }
    return orElse();
  }
}

abstract class _CheckUserExist implements AuthenticationEvent {
  const factory _CheckUserExist({required final String email}) =
      _$CheckUserExistImpl;

  String get email;
  @JsonKey(ignore: true)
  _$$CheckUserExistImplCopyWith<_$CheckUserExistImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignInImplCopyWith<$Res> {
  factory _$$SignInImplCopyWith(
          _$SignInImpl value, $Res Function(_$SignInImpl) then) =
      __$$SignInImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$SignInImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$SignInImpl>
    implements _$$SignInImplCopyWith<$Res> {
  __$$SignInImplCopyWithImpl(
      _$SignInImpl _value, $Res Function(_$SignInImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$SignInImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignInImpl implements _SignIn {
  const _$SignInImpl({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthenticationEvent.signIn(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInImplCopyWith<_$SignInImpl> get copyWith =>
      __$$SignInImplCopyWithImpl<_$SignInImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) checkUserExist,
    required TResult Function(String email, String password) signIn,
    required TResult Function(
            String email, String fName, String lName, String password)
        signUp,
    required TResult Function(CertificationType? intrestedCertificate)
        changeIntrestedCertificate,
    required TResult Function(bool isRememberMe) changeRememberMe,
    required TResult Function(bool isTermsAccepted) changeTermsAccepted,
    required TResult Function(OnboardingType type) changeOnboardingType,
  }) {
    return signIn(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? checkUserExist,
    TResult? Function(String email, String password)? signIn,
    TResult? Function(
            String email, String fName, String lName, String password)?
        signUp,
    TResult? Function(CertificationType? intrestedCertificate)?
        changeIntrestedCertificate,
    TResult? Function(bool isRememberMe)? changeRememberMe,
    TResult? Function(bool isTermsAccepted)? changeTermsAccepted,
    TResult? Function(OnboardingType type)? changeOnboardingType,
  }) {
    return signIn?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? checkUserExist,
    TResult Function(String email, String password)? signIn,
    TResult Function(String email, String fName, String lName, String password)?
        signUp,
    TResult Function(CertificationType? intrestedCertificate)?
        changeIntrestedCertificate,
    TResult Function(bool isRememberMe)? changeRememberMe,
    TResult Function(bool isTermsAccepted)? changeTermsAccepted,
    TResult Function(OnboardingType type)? changeOnboardingType,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckUserExist value) checkUserExist,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_ChangeIntrestedCertificate value)
        changeIntrestedCertificate,
    required TResult Function(_ChangeRememberMe value) changeRememberMe,
    required TResult Function(_ChangeTermsAccepted value) changeTermsAccepted,
    required TResult Function(_ChangeOnboardingType value) changeOnboardingType,
  }) {
    return signIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckUserExist value)? checkUserExist,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_ChangeIntrestedCertificate value)?
        changeIntrestedCertificate,
    TResult? Function(_ChangeRememberMe value)? changeRememberMe,
    TResult? Function(_ChangeTermsAccepted value)? changeTermsAccepted,
    TResult? Function(_ChangeOnboardingType value)? changeOnboardingType,
  }) {
    return signIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckUserExist value)? checkUserExist,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ChangeIntrestedCertificate value)?
        changeIntrestedCertificate,
    TResult Function(_ChangeRememberMe value)? changeRememberMe,
    TResult Function(_ChangeTermsAccepted value)? changeTermsAccepted,
    TResult Function(_ChangeOnboardingType value)? changeOnboardingType,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(this);
    }
    return orElse();
  }
}

abstract class _SignIn implements AuthenticationEvent {
  const factory _SignIn(
      {required final String email,
      required final String password}) = _$SignInImpl;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$SignInImplCopyWith<_$SignInImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignUpImplCopyWith<$Res> {
  factory _$$SignUpImplCopyWith(
          _$SignUpImpl value, $Res Function(_$SignUpImpl) then) =
      __$$SignUpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String fName, String lName, String password});
}

/// @nodoc
class __$$SignUpImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$SignUpImpl>
    implements _$$SignUpImplCopyWith<$Res> {
  __$$SignUpImplCopyWithImpl(
      _$SignUpImpl _value, $Res Function(_$SignUpImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? fName = null,
    Object? lName = null,
    Object? password = null,
  }) {
    return _then(_$SignUpImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      fName: null == fName
          ? _value.fName
          : fName // ignore: cast_nullable_to_non_nullable
              as String,
      lName: null == lName
          ? _value.lName
          : lName // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignUpImpl implements _SignUp {
  const _$SignUpImpl(
      {required this.email,
      required this.fName,
      required this.lName,
      required this.password});

  @override
  final String email;
  @override
  final String fName;
  @override
  final String lName;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthenticationEvent.signUp(email: $email, fName: $fName, lName: $lName, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.fName, fName) || other.fName == fName) &&
            (identical(other.lName, lName) || other.lName == lName) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, fName, lName, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpImplCopyWith<_$SignUpImpl> get copyWith =>
      __$$SignUpImplCopyWithImpl<_$SignUpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) checkUserExist,
    required TResult Function(String email, String password) signIn,
    required TResult Function(
            String email, String fName, String lName, String password)
        signUp,
    required TResult Function(CertificationType? intrestedCertificate)
        changeIntrestedCertificate,
    required TResult Function(bool isRememberMe) changeRememberMe,
    required TResult Function(bool isTermsAccepted) changeTermsAccepted,
    required TResult Function(OnboardingType type) changeOnboardingType,
  }) {
    return signUp(email, fName, lName, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? checkUserExist,
    TResult? Function(String email, String password)? signIn,
    TResult? Function(
            String email, String fName, String lName, String password)?
        signUp,
    TResult? Function(CertificationType? intrestedCertificate)?
        changeIntrestedCertificate,
    TResult? Function(bool isRememberMe)? changeRememberMe,
    TResult? Function(bool isTermsAccepted)? changeTermsAccepted,
    TResult? Function(OnboardingType type)? changeOnboardingType,
  }) {
    return signUp?.call(email, fName, lName, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? checkUserExist,
    TResult Function(String email, String password)? signIn,
    TResult Function(String email, String fName, String lName, String password)?
        signUp,
    TResult Function(CertificationType? intrestedCertificate)?
        changeIntrestedCertificate,
    TResult Function(bool isRememberMe)? changeRememberMe,
    TResult Function(bool isTermsAccepted)? changeTermsAccepted,
    TResult Function(OnboardingType type)? changeOnboardingType,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(email, fName, lName, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckUserExist value) checkUserExist,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_ChangeIntrestedCertificate value)
        changeIntrestedCertificate,
    required TResult Function(_ChangeRememberMe value) changeRememberMe,
    required TResult Function(_ChangeTermsAccepted value) changeTermsAccepted,
    required TResult Function(_ChangeOnboardingType value) changeOnboardingType,
  }) {
    return signUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckUserExist value)? checkUserExist,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_ChangeIntrestedCertificate value)?
        changeIntrestedCertificate,
    TResult? Function(_ChangeRememberMe value)? changeRememberMe,
    TResult? Function(_ChangeTermsAccepted value)? changeTermsAccepted,
    TResult? Function(_ChangeOnboardingType value)? changeOnboardingType,
  }) {
    return signUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckUserExist value)? checkUserExist,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ChangeIntrestedCertificate value)?
        changeIntrestedCertificate,
    TResult Function(_ChangeRememberMe value)? changeRememberMe,
    TResult Function(_ChangeTermsAccepted value)? changeTermsAccepted,
    TResult Function(_ChangeOnboardingType value)? changeOnboardingType,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(this);
    }
    return orElse();
  }
}

abstract class _SignUp implements AuthenticationEvent {
  const factory _SignUp(
      {required final String email,
      required final String fName,
      required final String lName,
      required final String password}) = _$SignUpImpl;

  String get email;
  String get fName;
  String get lName;
  String get password;
  @JsonKey(ignore: true)
  _$$SignUpImplCopyWith<_$SignUpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeIntrestedCertificateImplCopyWith<$Res> {
  factory _$$ChangeIntrestedCertificateImplCopyWith(
          _$ChangeIntrestedCertificateImpl value,
          $Res Function(_$ChangeIntrestedCertificateImpl) then) =
      __$$ChangeIntrestedCertificateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CertificationType? intrestedCertificate});
}

/// @nodoc
class __$$ChangeIntrestedCertificateImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res,
        _$ChangeIntrestedCertificateImpl>
    implements _$$ChangeIntrestedCertificateImplCopyWith<$Res> {
  __$$ChangeIntrestedCertificateImplCopyWithImpl(
      _$ChangeIntrestedCertificateImpl _value,
      $Res Function(_$ChangeIntrestedCertificateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? intrestedCertificate = freezed,
  }) {
    return _then(_$ChangeIntrestedCertificateImpl(
      freezed == intrestedCertificate
          ? _value.intrestedCertificate
          : intrestedCertificate // ignore: cast_nullable_to_non_nullable
              as CertificationType?,
    ));
  }
}

/// @nodoc

class _$ChangeIntrestedCertificateImpl implements _ChangeIntrestedCertificate {
  const _$ChangeIntrestedCertificateImpl(this.intrestedCertificate);

  @override
  final CertificationType? intrestedCertificate;

  @override
  String toString() {
    return 'AuthenticationEvent.changeIntrestedCertificate(intrestedCertificate: $intrestedCertificate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeIntrestedCertificateImpl &&
            (identical(other.intrestedCertificate, intrestedCertificate) ||
                other.intrestedCertificate == intrestedCertificate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, intrestedCertificate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeIntrestedCertificateImplCopyWith<_$ChangeIntrestedCertificateImpl>
      get copyWith => __$$ChangeIntrestedCertificateImplCopyWithImpl<
          _$ChangeIntrestedCertificateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) checkUserExist,
    required TResult Function(String email, String password) signIn,
    required TResult Function(
            String email, String fName, String lName, String password)
        signUp,
    required TResult Function(CertificationType? intrestedCertificate)
        changeIntrestedCertificate,
    required TResult Function(bool isRememberMe) changeRememberMe,
    required TResult Function(bool isTermsAccepted) changeTermsAccepted,
    required TResult Function(OnboardingType type) changeOnboardingType,
  }) {
    return changeIntrestedCertificate(intrestedCertificate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? checkUserExist,
    TResult? Function(String email, String password)? signIn,
    TResult? Function(
            String email, String fName, String lName, String password)?
        signUp,
    TResult? Function(CertificationType? intrestedCertificate)?
        changeIntrestedCertificate,
    TResult? Function(bool isRememberMe)? changeRememberMe,
    TResult? Function(bool isTermsAccepted)? changeTermsAccepted,
    TResult? Function(OnboardingType type)? changeOnboardingType,
  }) {
    return changeIntrestedCertificate?.call(intrestedCertificate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? checkUserExist,
    TResult Function(String email, String password)? signIn,
    TResult Function(String email, String fName, String lName, String password)?
        signUp,
    TResult Function(CertificationType? intrestedCertificate)?
        changeIntrestedCertificate,
    TResult Function(bool isRememberMe)? changeRememberMe,
    TResult Function(bool isTermsAccepted)? changeTermsAccepted,
    TResult Function(OnboardingType type)? changeOnboardingType,
    required TResult orElse(),
  }) {
    if (changeIntrestedCertificate != null) {
      return changeIntrestedCertificate(intrestedCertificate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckUserExist value) checkUserExist,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_ChangeIntrestedCertificate value)
        changeIntrestedCertificate,
    required TResult Function(_ChangeRememberMe value) changeRememberMe,
    required TResult Function(_ChangeTermsAccepted value) changeTermsAccepted,
    required TResult Function(_ChangeOnboardingType value) changeOnboardingType,
  }) {
    return changeIntrestedCertificate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckUserExist value)? checkUserExist,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_ChangeIntrestedCertificate value)?
        changeIntrestedCertificate,
    TResult? Function(_ChangeRememberMe value)? changeRememberMe,
    TResult? Function(_ChangeTermsAccepted value)? changeTermsAccepted,
    TResult? Function(_ChangeOnboardingType value)? changeOnboardingType,
  }) {
    return changeIntrestedCertificate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckUserExist value)? checkUserExist,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ChangeIntrestedCertificate value)?
        changeIntrestedCertificate,
    TResult Function(_ChangeRememberMe value)? changeRememberMe,
    TResult Function(_ChangeTermsAccepted value)? changeTermsAccepted,
    TResult Function(_ChangeOnboardingType value)? changeOnboardingType,
    required TResult orElse(),
  }) {
    if (changeIntrestedCertificate != null) {
      return changeIntrestedCertificate(this);
    }
    return orElse();
  }
}

abstract class _ChangeIntrestedCertificate implements AuthenticationEvent {
  const factory _ChangeIntrestedCertificate(
          final CertificationType? intrestedCertificate) =
      _$ChangeIntrestedCertificateImpl;

  CertificationType? get intrestedCertificate;
  @JsonKey(ignore: true)
  _$$ChangeIntrestedCertificateImplCopyWith<_$ChangeIntrestedCertificateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeRememberMeImplCopyWith<$Res> {
  factory _$$ChangeRememberMeImplCopyWith(_$ChangeRememberMeImpl value,
          $Res Function(_$ChangeRememberMeImpl) then) =
      __$$ChangeRememberMeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isRememberMe});
}

/// @nodoc
class __$$ChangeRememberMeImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$ChangeRememberMeImpl>
    implements _$$ChangeRememberMeImplCopyWith<$Res> {
  __$$ChangeRememberMeImplCopyWithImpl(_$ChangeRememberMeImpl _value,
      $Res Function(_$ChangeRememberMeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isRememberMe = null,
  }) {
    return _then(_$ChangeRememberMeImpl(
      null == isRememberMe
          ? _value.isRememberMe
          : isRememberMe // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ChangeRememberMeImpl implements _ChangeRememberMe {
  const _$ChangeRememberMeImpl(this.isRememberMe);

  @override
  final bool isRememberMe;

  @override
  String toString() {
    return 'AuthenticationEvent.changeRememberMe(isRememberMe: $isRememberMe)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeRememberMeImpl &&
            (identical(other.isRememberMe, isRememberMe) ||
                other.isRememberMe == isRememberMe));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isRememberMe);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeRememberMeImplCopyWith<_$ChangeRememberMeImpl> get copyWith =>
      __$$ChangeRememberMeImplCopyWithImpl<_$ChangeRememberMeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) checkUserExist,
    required TResult Function(String email, String password) signIn,
    required TResult Function(
            String email, String fName, String lName, String password)
        signUp,
    required TResult Function(CertificationType? intrestedCertificate)
        changeIntrestedCertificate,
    required TResult Function(bool isRememberMe) changeRememberMe,
    required TResult Function(bool isTermsAccepted) changeTermsAccepted,
    required TResult Function(OnboardingType type) changeOnboardingType,
  }) {
    return changeRememberMe(isRememberMe);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? checkUserExist,
    TResult? Function(String email, String password)? signIn,
    TResult? Function(
            String email, String fName, String lName, String password)?
        signUp,
    TResult? Function(CertificationType? intrestedCertificate)?
        changeIntrestedCertificate,
    TResult? Function(bool isRememberMe)? changeRememberMe,
    TResult? Function(bool isTermsAccepted)? changeTermsAccepted,
    TResult? Function(OnboardingType type)? changeOnboardingType,
  }) {
    return changeRememberMe?.call(isRememberMe);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? checkUserExist,
    TResult Function(String email, String password)? signIn,
    TResult Function(String email, String fName, String lName, String password)?
        signUp,
    TResult Function(CertificationType? intrestedCertificate)?
        changeIntrestedCertificate,
    TResult Function(bool isRememberMe)? changeRememberMe,
    TResult Function(bool isTermsAccepted)? changeTermsAccepted,
    TResult Function(OnboardingType type)? changeOnboardingType,
    required TResult orElse(),
  }) {
    if (changeRememberMe != null) {
      return changeRememberMe(isRememberMe);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckUserExist value) checkUserExist,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_ChangeIntrestedCertificate value)
        changeIntrestedCertificate,
    required TResult Function(_ChangeRememberMe value) changeRememberMe,
    required TResult Function(_ChangeTermsAccepted value) changeTermsAccepted,
    required TResult Function(_ChangeOnboardingType value) changeOnboardingType,
  }) {
    return changeRememberMe(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckUserExist value)? checkUserExist,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_ChangeIntrestedCertificate value)?
        changeIntrestedCertificate,
    TResult? Function(_ChangeRememberMe value)? changeRememberMe,
    TResult? Function(_ChangeTermsAccepted value)? changeTermsAccepted,
    TResult? Function(_ChangeOnboardingType value)? changeOnboardingType,
  }) {
    return changeRememberMe?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckUserExist value)? checkUserExist,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ChangeIntrestedCertificate value)?
        changeIntrestedCertificate,
    TResult Function(_ChangeRememberMe value)? changeRememberMe,
    TResult Function(_ChangeTermsAccepted value)? changeTermsAccepted,
    TResult Function(_ChangeOnboardingType value)? changeOnboardingType,
    required TResult orElse(),
  }) {
    if (changeRememberMe != null) {
      return changeRememberMe(this);
    }
    return orElse();
  }
}

abstract class _ChangeRememberMe implements AuthenticationEvent {
  const factory _ChangeRememberMe(final bool isRememberMe) =
      _$ChangeRememberMeImpl;

  bool get isRememberMe;
  @JsonKey(ignore: true)
  _$$ChangeRememberMeImplCopyWith<_$ChangeRememberMeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeTermsAcceptedImplCopyWith<$Res> {
  factory _$$ChangeTermsAcceptedImplCopyWith(_$ChangeTermsAcceptedImpl value,
          $Res Function(_$ChangeTermsAcceptedImpl) then) =
      __$$ChangeTermsAcceptedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isTermsAccepted});
}

/// @nodoc
class __$$ChangeTermsAcceptedImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$ChangeTermsAcceptedImpl>
    implements _$$ChangeTermsAcceptedImplCopyWith<$Res> {
  __$$ChangeTermsAcceptedImplCopyWithImpl(_$ChangeTermsAcceptedImpl _value,
      $Res Function(_$ChangeTermsAcceptedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isTermsAccepted = null,
  }) {
    return _then(_$ChangeTermsAcceptedImpl(
      null == isTermsAccepted
          ? _value.isTermsAccepted
          : isTermsAccepted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ChangeTermsAcceptedImpl implements _ChangeTermsAccepted {
  const _$ChangeTermsAcceptedImpl(this.isTermsAccepted);

  @override
  final bool isTermsAccepted;

  @override
  String toString() {
    return 'AuthenticationEvent.changeTermsAccepted(isTermsAccepted: $isTermsAccepted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeTermsAcceptedImpl &&
            (identical(other.isTermsAccepted, isTermsAccepted) ||
                other.isTermsAccepted == isTermsAccepted));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isTermsAccepted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeTermsAcceptedImplCopyWith<_$ChangeTermsAcceptedImpl> get copyWith =>
      __$$ChangeTermsAcceptedImplCopyWithImpl<_$ChangeTermsAcceptedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) checkUserExist,
    required TResult Function(String email, String password) signIn,
    required TResult Function(
            String email, String fName, String lName, String password)
        signUp,
    required TResult Function(CertificationType? intrestedCertificate)
        changeIntrestedCertificate,
    required TResult Function(bool isRememberMe) changeRememberMe,
    required TResult Function(bool isTermsAccepted) changeTermsAccepted,
    required TResult Function(OnboardingType type) changeOnboardingType,
  }) {
    return changeTermsAccepted(isTermsAccepted);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? checkUserExist,
    TResult? Function(String email, String password)? signIn,
    TResult? Function(
            String email, String fName, String lName, String password)?
        signUp,
    TResult? Function(CertificationType? intrestedCertificate)?
        changeIntrestedCertificate,
    TResult? Function(bool isRememberMe)? changeRememberMe,
    TResult? Function(bool isTermsAccepted)? changeTermsAccepted,
    TResult? Function(OnboardingType type)? changeOnboardingType,
  }) {
    return changeTermsAccepted?.call(isTermsAccepted);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? checkUserExist,
    TResult Function(String email, String password)? signIn,
    TResult Function(String email, String fName, String lName, String password)?
        signUp,
    TResult Function(CertificationType? intrestedCertificate)?
        changeIntrestedCertificate,
    TResult Function(bool isRememberMe)? changeRememberMe,
    TResult Function(bool isTermsAccepted)? changeTermsAccepted,
    TResult Function(OnboardingType type)? changeOnboardingType,
    required TResult orElse(),
  }) {
    if (changeTermsAccepted != null) {
      return changeTermsAccepted(isTermsAccepted);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckUserExist value) checkUserExist,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_ChangeIntrestedCertificate value)
        changeIntrestedCertificate,
    required TResult Function(_ChangeRememberMe value) changeRememberMe,
    required TResult Function(_ChangeTermsAccepted value) changeTermsAccepted,
    required TResult Function(_ChangeOnboardingType value) changeOnboardingType,
  }) {
    return changeTermsAccepted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckUserExist value)? checkUserExist,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_ChangeIntrestedCertificate value)?
        changeIntrestedCertificate,
    TResult? Function(_ChangeRememberMe value)? changeRememberMe,
    TResult? Function(_ChangeTermsAccepted value)? changeTermsAccepted,
    TResult? Function(_ChangeOnboardingType value)? changeOnboardingType,
  }) {
    return changeTermsAccepted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckUserExist value)? checkUserExist,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ChangeIntrestedCertificate value)?
        changeIntrestedCertificate,
    TResult Function(_ChangeRememberMe value)? changeRememberMe,
    TResult Function(_ChangeTermsAccepted value)? changeTermsAccepted,
    TResult Function(_ChangeOnboardingType value)? changeOnboardingType,
    required TResult orElse(),
  }) {
    if (changeTermsAccepted != null) {
      return changeTermsAccepted(this);
    }
    return orElse();
  }
}

abstract class _ChangeTermsAccepted implements AuthenticationEvent {
  const factory _ChangeTermsAccepted(final bool isTermsAccepted) =
      _$ChangeTermsAcceptedImpl;

  bool get isTermsAccepted;
  @JsonKey(ignore: true)
  _$$ChangeTermsAcceptedImplCopyWith<_$ChangeTermsAcceptedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeOnboardingTypeImplCopyWith<$Res> {
  factory _$$ChangeOnboardingTypeImplCopyWith(_$ChangeOnboardingTypeImpl value,
          $Res Function(_$ChangeOnboardingTypeImpl) then) =
      __$$ChangeOnboardingTypeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({OnboardingType type});
}

/// @nodoc
class __$$ChangeOnboardingTypeImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$ChangeOnboardingTypeImpl>
    implements _$$ChangeOnboardingTypeImplCopyWith<$Res> {
  __$$ChangeOnboardingTypeImplCopyWithImpl(_$ChangeOnboardingTypeImpl _value,
      $Res Function(_$ChangeOnboardingTypeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$ChangeOnboardingTypeImpl(
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as OnboardingType,
    ));
  }
}

/// @nodoc

class _$ChangeOnboardingTypeImpl implements _ChangeOnboardingType {
  const _$ChangeOnboardingTypeImpl(this.type);

  @override
  final OnboardingType type;

  @override
  String toString() {
    return 'AuthenticationEvent.changeOnboardingType(type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeOnboardingTypeImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeOnboardingTypeImplCopyWith<_$ChangeOnboardingTypeImpl>
      get copyWith =>
          __$$ChangeOnboardingTypeImplCopyWithImpl<_$ChangeOnboardingTypeImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) checkUserExist,
    required TResult Function(String email, String password) signIn,
    required TResult Function(
            String email, String fName, String lName, String password)
        signUp,
    required TResult Function(CertificationType? intrestedCertificate)
        changeIntrestedCertificate,
    required TResult Function(bool isRememberMe) changeRememberMe,
    required TResult Function(bool isTermsAccepted) changeTermsAccepted,
    required TResult Function(OnboardingType type) changeOnboardingType,
  }) {
    return changeOnboardingType(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? checkUserExist,
    TResult? Function(String email, String password)? signIn,
    TResult? Function(
            String email, String fName, String lName, String password)?
        signUp,
    TResult? Function(CertificationType? intrestedCertificate)?
        changeIntrestedCertificate,
    TResult? Function(bool isRememberMe)? changeRememberMe,
    TResult? Function(bool isTermsAccepted)? changeTermsAccepted,
    TResult? Function(OnboardingType type)? changeOnboardingType,
  }) {
    return changeOnboardingType?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? checkUserExist,
    TResult Function(String email, String password)? signIn,
    TResult Function(String email, String fName, String lName, String password)?
        signUp,
    TResult Function(CertificationType? intrestedCertificate)?
        changeIntrestedCertificate,
    TResult Function(bool isRememberMe)? changeRememberMe,
    TResult Function(bool isTermsAccepted)? changeTermsAccepted,
    TResult Function(OnboardingType type)? changeOnboardingType,
    required TResult orElse(),
  }) {
    if (changeOnboardingType != null) {
      return changeOnboardingType(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckUserExist value) checkUserExist,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_ChangeIntrestedCertificate value)
        changeIntrestedCertificate,
    required TResult Function(_ChangeRememberMe value) changeRememberMe,
    required TResult Function(_ChangeTermsAccepted value) changeTermsAccepted,
    required TResult Function(_ChangeOnboardingType value) changeOnboardingType,
  }) {
    return changeOnboardingType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckUserExist value)? checkUserExist,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_ChangeIntrestedCertificate value)?
        changeIntrestedCertificate,
    TResult? Function(_ChangeRememberMe value)? changeRememberMe,
    TResult? Function(_ChangeTermsAccepted value)? changeTermsAccepted,
    TResult? Function(_ChangeOnboardingType value)? changeOnboardingType,
  }) {
    return changeOnboardingType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckUserExist value)? checkUserExist,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ChangeIntrestedCertificate value)?
        changeIntrestedCertificate,
    TResult Function(_ChangeRememberMe value)? changeRememberMe,
    TResult Function(_ChangeTermsAccepted value)? changeTermsAccepted,
    TResult Function(_ChangeOnboardingType value)? changeOnboardingType,
    required TResult orElse(),
  }) {
    if (changeOnboardingType != null) {
      return changeOnboardingType(this);
    }
    return orElse();
  }
}

abstract class _ChangeOnboardingType implements AuthenticationEvent {
  const factory _ChangeOnboardingType(final OnboardingType type) =
      _$ChangeOnboardingTypeImpl;

  OnboardingType get type;
  @JsonKey(ignore: true)
  _$$ChangeOnboardingTypeImplCopyWith<_$ChangeOnboardingTypeImpl>
      get copyWith => throw _privateConstructorUsedError;
}
