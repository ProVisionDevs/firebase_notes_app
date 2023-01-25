// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appStarted,
    required TResult Function(firebase_auth.User? user) userChanged,
    required TResult Function() signedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appStarted,
    TResult? Function(firebase_auth.User? user)? userChanged,
    TResult? Function()? signedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appStarted,
    TResult Function(firebase_auth.User? user)? userChanged,
    TResult Function()? signedOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthAppStarted value) appStarted,
    required TResult Function(_AuthUserChanged value) userChanged,
    required TResult Function(_AuthSignedOut value) signedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthAppStarted value)? appStarted,
    TResult? Function(_AuthUserChanged value)? userChanged,
    TResult? Function(_AuthSignedOut value)? signedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthAppStarted value)? appStarted,
    TResult Function(_AuthUserChanged value)? userChanged,
    TResult Function(_AuthSignedOut value)? signedOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AuthAppStartedCopyWith<$Res> {
  factory _$$_AuthAppStartedCopyWith(
          _$_AuthAppStarted value, $Res Function(_$_AuthAppStarted) then) =
      __$$_AuthAppStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthAppStartedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_AuthAppStarted>
    implements _$$_AuthAppStartedCopyWith<$Res> {
  __$$_AuthAppStartedCopyWithImpl(
      _$_AuthAppStarted _value, $Res Function(_$_AuthAppStarted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AuthAppStarted implements _AuthAppStarted {
  const _$_AuthAppStarted();

  @override
  String toString() {
    return 'AuthEvent.appStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AuthAppStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appStarted,
    required TResult Function(firebase_auth.User? user) userChanged,
    required TResult Function() signedOut,
  }) {
    return appStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appStarted,
    TResult? Function(firebase_auth.User? user)? userChanged,
    TResult? Function()? signedOut,
  }) {
    return appStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appStarted,
    TResult Function(firebase_auth.User? user)? userChanged,
    TResult Function()? signedOut,
    required TResult orElse(),
  }) {
    if (appStarted != null) {
      return appStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthAppStarted value) appStarted,
    required TResult Function(_AuthUserChanged value) userChanged,
    required TResult Function(_AuthSignedOut value) signedOut,
  }) {
    return appStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthAppStarted value)? appStarted,
    TResult? Function(_AuthUserChanged value)? userChanged,
    TResult? Function(_AuthSignedOut value)? signedOut,
  }) {
    return appStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthAppStarted value)? appStarted,
    TResult Function(_AuthUserChanged value)? userChanged,
    TResult Function(_AuthSignedOut value)? signedOut,
    required TResult orElse(),
  }) {
    if (appStarted != null) {
      return appStarted(this);
    }
    return orElse();
  }
}

abstract class _AuthAppStarted implements AuthEvent {
  const factory _AuthAppStarted() = _$_AuthAppStarted;
}

/// @nodoc
abstract class _$$_AuthUserChangedCopyWith<$Res> {
  factory _$$_AuthUserChangedCopyWith(
          _$_AuthUserChanged value, $Res Function(_$_AuthUserChanged) then) =
      __$$_AuthUserChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({firebase_auth.User? user});
}

/// @nodoc
class __$$_AuthUserChangedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_AuthUserChanged>
    implements _$$_AuthUserChangedCopyWith<$Res> {
  __$$_AuthUserChangedCopyWithImpl(
      _$_AuthUserChanged _value, $Res Function(_$_AuthUserChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$_AuthUserChanged(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as firebase_auth.User?,
    ));
  }
}

/// @nodoc

class _$_AuthUserChanged implements _AuthUserChanged {
  const _$_AuthUserChanged({this.user});

  @override
  final firebase_auth.User? user;

  @override
  String toString() {
    return 'AuthEvent.userChanged(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthUserChanged &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthUserChangedCopyWith<_$_AuthUserChanged> get copyWith =>
      __$$_AuthUserChangedCopyWithImpl<_$_AuthUserChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appStarted,
    required TResult Function(firebase_auth.User? user) userChanged,
    required TResult Function() signedOut,
  }) {
    return userChanged(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appStarted,
    TResult? Function(firebase_auth.User? user)? userChanged,
    TResult? Function()? signedOut,
  }) {
    return userChanged?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appStarted,
    TResult Function(firebase_auth.User? user)? userChanged,
    TResult Function()? signedOut,
    required TResult orElse(),
  }) {
    if (userChanged != null) {
      return userChanged(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthAppStarted value) appStarted,
    required TResult Function(_AuthUserChanged value) userChanged,
    required TResult Function(_AuthSignedOut value) signedOut,
  }) {
    return userChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthAppStarted value)? appStarted,
    TResult? Function(_AuthUserChanged value)? userChanged,
    TResult? Function(_AuthSignedOut value)? signedOut,
  }) {
    return userChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthAppStarted value)? appStarted,
    TResult Function(_AuthUserChanged value)? userChanged,
    TResult Function(_AuthSignedOut value)? signedOut,
    required TResult orElse(),
  }) {
    if (userChanged != null) {
      return userChanged(this);
    }
    return orElse();
  }
}

abstract class _AuthUserChanged implements AuthEvent {
  const factory _AuthUserChanged({final firebase_auth.User? user}) =
      _$_AuthUserChanged;

  firebase_auth.User? get user;
  @JsonKey(ignore: true)
  _$$_AuthUserChangedCopyWith<_$_AuthUserChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AuthSignedOutCopyWith<$Res> {
  factory _$$_AuthSignedOutCopyWith(
          _$_AuthSignedOut value, $Res Function(_$_AuthSignedOut) then) =
      __$$_AuthSignedOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthSignedOutCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_AuthSignedOut>
    implements _$$_AuthSignedOutCopyWith<$Res> {
  __$$_AuthSignedOutCopyWithImpl(
      _$_AuthSignedOut _value, $Res Function(_$_AuthSignedOut) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AuthSignedOut implements _AuthSignedOut {
  const _$_AuthSignedOut();

  @override
  String toString() {
    return 'AuthEvent.signedOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AuthSignedOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appStarted,
    required TResult Function(firebase_auth.User? user) userChanged,
    required TResult Function() signedOut,
  }) {
    return signedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appStarted,
    TResult? Function(firebase_auth.User? user)? userChanged,
    TResult? Function()? signedOut,
  }) {
    return signedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appStarted,
    TResult Function(firebase_auth.User? user)? userChanged,
    TResult Function()? signedOut,
    required TResult orElse(),
  }) {
    if (signedOut != null) {
      return signedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthAppStarted value) appStarted,
    required TResult Function(_AuthUserChanged value) userChanged,
    required TResult Function(_AuthSignedOut value) signedOut,
  }) {
    return signedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthAppStarted value)? appStarted,
    TResult? Function(_AuthUserChanged value)? userChanged,
    TResult? Function(_AuthSignedOut value)? signedOut,
  }) {
    return signedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthAppStarted value)? appStarted,
    TResult Function(_AuthUserChanged value)? userChanged,
    TResult Function(_AuthSignedOut value)? signedOut,
    required TResult orElse(),
  }) {
    if (signedOut != null) {
      return signedOut(this);
    }
    return orElse();
  }
}

abstract class _AuthSignedOut implements AuthEvent {
  const factory _AuthSignedOut() = _$_AuthSignedOut;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Exception? exception) unauthenticated,
    required TResult Function(firebase_auth.User? user) authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Exception? exception)? unauthenticated,
    TResult? Function(firebase_auth.User? user)? authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Exception? exception)? unauthenticated,
    TResult Function(firebase_auth.User? user)? authenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthUnauthenticated value) unauthenticated,
    required TResult Function(_AuthAuthenticated value) authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthUnauthenticated value)? unauthenticated,
    TResult? Function(_AuthAuthenticated value)? authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthUnauthenticated value)? unauthenticated,
    TResult Function(_AuthAuthenticated value)? authenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AuthUnauthenticatedCopyWith<$Res> {
  factory _$$_AuthUnauthenticatedCopyWith(_$_AuthUnauthenticated value,
          $Res Function(_$_AuthUnauthenticated) then) =
      __$$_AuthUnauthenticatedCopyWithImpl<$Res>;
  @useResult
  $Res call({Exception? exception});
}

/// @nodoc
class __$$_AuthUnauthenticatedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthUnauthenticated>
    implements _$$_AuthUnauthenticatedCopyWith<$Res> {
  __$$_AuthUnauthenticatedCopyWithImpl(_$_AuthUnauthenticated _value,
      $Res Function(_$_AuthUnauthenticated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = freezed,
  }) {
    return _then(_$_AuthUnauthenticated(
      exception: freezed == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ));
  }
}

/// @nodoc

class _$_AuthUnauthenticated implements _AuthUnauthenticated {
  const _$_AuthUnauthenticated({this.exception});

  @override
  final Exception? exception;

  @override
  String toString() {
    return 'AuthState.unauthenticated(exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthUnauthenticated &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exception);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthUnauthenticatedCopyWith<_$_AuthUnauthenticated> get copyWith =>
      __$$_AuthUnauthenticatedCopyWithImpl<_$_AuthUnauthenticated>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Exception? exception) unauthenticated,
    required TResult Function(firebase_auth.User? user) authenticated,
  }) {
    return unauthenticated(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Exception? exception)? unauthenticated,
    TResult? Function(firebase_auth.User? user)? authenticated,
  }) {
    return unauthenticated?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Exception? exception)? unauthenticated,
    TResult Function(firebase_auth.User? user)? authenticated,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthUnauthenticated value) unauthenticated,
    required TResult Function(_AuthAuthenticated value) authenticated,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthUnauthenticated value)? unauthenticated,
    TResult? Function(_AuthAuthenticated value)? authenticated,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthUnauthenticated value)? unauthenticated,
    TResult Function(_AuthAuthenticated value)? authenticated,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class _AuthUnauthenticated implements AuthState {
  const factory _AuthUnauthenticated({final Exception? exception}) =
      _$_AuthUnauthenticated;

  Exception? get exception;
  @JsonKey(ignore: true)
  _$$_AuthUnauthenticatedCopyWith<_$_AuthUnauthenticated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AuthAuthenticatedCopyWith<$Res> {
  factory _$$_AuthAuthenticatedCopyWith(_$_AuthAuthenticated value,
          $Res Function(_$_AuthAuthenticated) then) =
      __$$_AuthAuthenticatedCopyWithImpl<$Res>;
  @useResult
  $Res call({firebase_auth.User? user});
}

/// @nodoc
class __$$_AuthAuthenticatedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthAuthenticated>
    implements _$$_AuthAuthenticatedCopyWith<$Res> {
  __$$_AuthAuthenticatedCopyWithImpl(
      _$_AuthAuthenticated _value, $Res Function(_$_AuthAuthenticated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$_AuthAuthenticated(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as firebase_auth.User?,
    ));
  }
}

/// @nodoc

class _$_AuthAuthenticated implements _AuthAuthenticated {
  const _$_AuthAuthenticated({required this.user});

  @override
  final firebase_auth.User? user;

  @override
  String toString() {
    return 'AuthState.authenticated(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthAuthenticated &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthAuthenticatedCopyWith<_$_AuthAuthenticated> get copyWith =>
      __$$_AuthAuthenticatedCopyWithImpl<_$_AuthAuthenticated>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Exception? exception) unauthenticated,
    required TResult Function(firebase_auth.User? user) authenticated,
  }) {
    return authenticated(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Exception? exception)? unauthenticated,
    TResult? Function(firebase_auth.User? user)? authenticated,
  }) {
    return authenticated?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Exception? exception)? unauthenticated,
    TResult Function(firebase_auth.User? user)? authenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthUnauthenticated value) unauthenticated,
    required TResult Function(_AuthAuthenticated value) authenticated,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthUnauthenticated value)? unauthenticated,
    TResult? Function(_AuthAuthenticated value)? authenticated,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthUnauthenticated value)? unauthenticated,
    TResult Function(_AuthAuthenticated value)? authenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _AuthAuthenticated implements AuthState {
  const factory _AuthAuthenticated({required final firebase_auth.User? user}) =
      _$_AuthAuthenticated;

  firebase_auth.User? get user;
  @JsonKey(ignore: true)
  _$$_AuthAuthenticatedCopyWith<_$_AuthAuthenticated> get copyWith =>
      throw _privateConstructorUsedError;
}
