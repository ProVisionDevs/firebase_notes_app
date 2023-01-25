// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signup_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignupState {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) initial,
    required TResult Function(String email, String password) submitting,
    required TResult Function(String email, String password) success,
    required TResult Function(
            String email, String password, Exception exception)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? initial,
    TResult? Function(String email, String password)? submitting,
    TResult? Function(String email, String password)? success,
    TResult? Function(String email, String password, Exception exception)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? initial,
    TResult Function(String email, String password)? submitting,
    TResult Function(String email, String password)? success,
    TResult Function(String email, String password, Exception exception)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignupInitial value) initial,
    required TResult Function(_SignupSubmitting value) submitting,
    required TResult Function(_SignupSuccess value) success,
    required TResult Function(_SignupError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignupInitial value)? initial,
    TResult? Function(_SignupSubmitting value)? submitting,
    TResult? Function(_SignupSuccess value)? success,
    TResult? Function(_SignupError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignupInitial value)? initial,
    TResult Function(_SignupSubmitting value)? submitting,
    TResult Function(_SignupSuccess value)? success,
    TResult Function(_SignupError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignupStateCopyWith<SignupState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupStateCopyWith<$Res> {
  factory $SignupStateCopyWith(
          SignupState value, $Res Function(SignupState) then) =
      _$SignupStateCopyWithImpl<$Res, SignupState>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$SignupStateCopyWithImpl<$Res, $Val extends SignupState>
    implements $SignupStateCopyWith<$Res> {
  _$SignupStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SignupInitialCopyWith<$Res>
    implements $SignupStateCopyWith<$Res> {
  factory _$$_SignupInitialCopyWith(
          _$_SignupInitial value, $Res Function(_$_SignupInitial) then) =
      __$$_SignupInitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$_SignupInitialCopyWithImpl<$Res>
    extends _$SignupStateCopyWithImpl<$Res, _$_SignupInitial>
    implements _$$_SignupInitialCopyWith<$Res> {
  __$$_SignupInitialCopyWithImpl(
      _$_SignupInitial _value, $Res Function(_$_SignupInitial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$_SignupInitial(
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

class _$_SignupInitial implements _SignupInitial {
  const _$_SignupInitial({this.email = '', this.password = ''});

  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String password;

  @override
  String toString() {
    return 'SignupState.initial(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignupInitial &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignupInitialCopyWith<_$_SignupInitial> get copyWith =>
      __$$_SignupInitialCopyWithImpl<_$_SignupInitial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) initial,
    required TResult Function(String email, String password) submitting,
    required TResult Function(String email, String password) success,
    required TResult Function(
            String email, String password, Exception exception)
        error,
  }) {
    return initial(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? initial,
    TResult? Function(String email, String password)? submitting,
    TResult? Function(String email, String password)? success,
    TResult? Function(String email, String password, Exception exception)?
        error,
  }) {
    return initial?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? initial,
    TResult Function(String email, String password)? submitting,
    TResult Function(String email, String password)? success,
    TResult Function(String email, String password, Exception exception)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignupInitial value) initial,
    required TResult Function(_SignupSubmitting value) submitting,
    required TResult Function(_SignupSuccess value) success,
    required TResult Function(_SignupError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignupInitial value)? initial,
    TResult? Function(_SignupSubmitting value)? submitting,
    TResult? Function(_SignupSuccess value)? success,
    TResult? Function(_SignupError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignupInitial value)? initial,
    TResult Function(_SignupSubmitting value)? submitting,
    TResult Function(_SignupSuccess value)? success,
    TResult Function(_SignupError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _SignupInitial implements SignupState {
  const factory _SignupInitial({final String email, final String password}) =
      _$_SignupInitial;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$_SignupInitialCopyWith<_$_SignupInitial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SignupSubmittingCopyWith<$Res>
    implements $SignupStateCopyWith<$Res> {
  factory _$$_SignupSubmittingCopyWith(
          _$_SignupSubmitting value, $Res Function(_$_SignupSubmitting) then) =
      __$$_SignupSubmittingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$_SignupSubmittingCopyWithImpl<$Res>
    extends _$SignupStateCopyWithImpl<$Res, _$_SignupSubmitting>
    implements _$$_SignupSubmittingCopyWith<$Res> {
  __$$_SignupSubmittingCopyWithImpl(
      _$_SignupSubmitting _value, $Res Function(_$_SignupSubmitting) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$_SignupSubmitting(
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

class _$_SignupSubmitting implements _SignupSubmitting {
  const _$_SignupSubmitting({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'SignupState.submitting(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignupSubmitting &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignupSubmittingCopyWith<_$_SignupSubmitting> get copyWith =>
      __$$_SignupSubmittingCopyWithImpl<_$_SignupSubmitting>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) initial,
    required TResult Function(String email, String password) submitting,
    required TResult Function(String email, String password) success,
    required TResult Function(
            String email, String password, Exception exception)
        error,
  }) {
    return submitting(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? initial,
    TResult? Function(String email, String password)? submitting,
    TResult? Function(String email, String password)? success,
    TResult? Function(String email, String password, Exception exception)?
        error,
  }) {
    return submitting?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? initial,
    TResult Function(String email, String password)? submitting,
    TResult Function(String email, String password)? success,
    TResult Function(String email, String password, Exception exception)? error,
    required TResult orElse(),
  }) {
    if (submitting != null) {
      return submitting(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignupInitial value) initial,
    required TResult Function(_SignupSubmitting value) submitting,
    required TResult Function(_SignupSuccess value) success,
    required TResult Function(_SignupError value) error,
  }) {
    return submitting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignupInitial value)? initial,
    TResult? Function(_SignupSubmitting value)? submitting,
    TResult? Function(_SignupSuccess value)? success,
    TResult? Function(_SignupError value)? error,
  }) {
    return submitting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignupInitial value)? initial,
    TResult Function(_SignupSubmitting value)? submitting,
    TResult Function(_SignupSuccess value)? success,
    TResult Function(_SignupError value)? error,
    required TResult orElse(),
  }) {
    if (submitting != null) {
      return submitting(this);
    }
    return orElse();
  }
}

abstract class _SignupSubmitting implements SignupState {
  const factory _SignupSubmitting(
      {required final String email,
      required final String password}) = _$_SignupSubmitting;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$_SignupSubmittingCopyWith<_$_SignupSubmitting> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SignupSuccessCopyWith<$Res>
    implements $SignupStateCopyWith<$Res> {
  factory _$$_SignupSuccessCopyWith(
          _$_SignupSuccess value, $Res Function(_$_SignupSuccess) then) =
      __$$_SignupSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$_SignupSuccessCopyWithImpl<$Res>
    extends _$SignupStateCopyWithImpl<$Res, _$_SignupSuccess>
    implements _$$_SignupSuccessCopyWith<$Res> {
  __$$_SignupSuccessCopyWithImpl(
      _$_SignupSuccess _value, $Res Function(_$_SignupSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$_SignupSuccess(
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

class _$_SignupSuccess implements _SignupSuccess {
  const _$_SignupSuccess({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'SignupState.success(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignupSuccess &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignupSuccessCopyWith<_$_SignupSuccess> get copyWith =>
      __$$_SignupSuccessCopyWithImpl<_$_SignupSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) initial,
    required TResult Function(String email, String password) submitting,
    required TResult Function(String email, String password) success,
    required TResult Function(
            String email, String password, Exception exception)
        error,
  }) {
    return success(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? initial,
    TResult? Function(String email, String password)? submitting,
    TResult? Function(String email, String password)? success,
    TResult? Function(String email, String password, Exception exception)?
        error,
  }) {
    return success?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? initial,
    TResult Function(String email, String password)? submitting,
    TResult Function(String email, String password)? success,
    TResult Function(String email, String password, Exception exception)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignupInitial value) initial,
    required TResult Function(_SignupSubmitting value) submitting,
    required TResult Function(_SignupSuccess value) success,
    required TResult Function(_SignupError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignupInitial value)? initial,
    TResult? Function(_SignupSubmitting value)? submitting,
    TResult? Function(_SignupSuccess value)? success,
    TResult? Function(_SignupError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignupInitial value)? initial,
    TResult Function(_SignupSubmitting value)? submitting,
    TResult Function(_SignupSuccess value)? success,
    TResult Function(_SignupError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _SignupSuccess implements SignupState {
  const factory _SignupSuccess(
      {required final String email,
      required final String password}) = _$_SignupSuccess;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$_SignupSuccessCopyWith<_$_SignupSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SignupErrorCopyWith<$Res>
    implements $SignupStateCopyWith<$Res> {
  factory _$$_SignupErrorCopyWith(
          _$_SignupError value, $Res Function(_$_SignupError) then) =
      __$$_SignupErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password, Exception exception});
}

/// @nodoc
class __$$_SignupErrorCopyWithImpl<$Res>
    extends _$SignupStateCopyWithImpl<$Res, _$_SignupError>
    implements _$$_SignupErrorCopyWith<$Res> {
  __$$_SignupErrorCopyWithImpl(
      _$_SignupError _value, $Res Function(_$_SignupError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? exception = null,
  }) {
    return _then(_$_SignupError(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      exception: null == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception,
    ));
  }
}

/// @nodoc

class _$_SignupError implements _SignupError {
  const _$_SignupError(
      {required this.email, required this.password, required this.exception});

  @override
  final String email;
  @override
  final String password;
  @override
  final Exception exception;

  @override
  String toString() {
    return 'SignupState.error(email: $email, password: $password, exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignupError &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, exception);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignupErrorCopyWith<_$_SignupError> get copyWith =>
      __$$_SignupErrorCopyWithImpl<_$_SignupError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) initial,
    required TResult Function(String email, String password) submitting,
    required TResult Function(String email, String password) success,
    required TResult Function(
            String email, String password, Exception exception)
        error,
  }) {
    return error(email, password, exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? initial,
    TResult? Function(String email, String password)? submitting,
    TResult? Function(String email, String password)? success,
    TResult? Function(String email, String password, Exception exception)?
        error,
  }) {
    return error?.call(email, password, exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? initial,
    TResult Function(String email, String password)? submitting,
    TResult Function(String email, String password)? success,
    TResult Function(String email, String password, Exception exception)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(email, password, exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignupInitial value) initial,
    required TResult Function(_SignupSubmitting value) submitting,
    required TResult Function(_SignupSuccess value) success,
    required TResult Function(_SignupError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignupInitial value)? initial,
    TResult? Function(_SignupSubmitting value)? submitting,
    TResult? Function(_SignupSuccess value)? success,
    TResult? Function(_SignupError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignupInitial value)? initial,
    TResult Function(_SignupSubmitting value)? submitting,
    TResult Function(_SignupSuccess value)? success,
    TResult Function(_SignupError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _SignupError implements SignupState {
  const factory _SignupError(
      {required final String email,
      required final String password,
      required final Exception exception}) = _$_SignupError;

  @override
  String get email;
  @override
  String get password;
  Exception get exception;
  @override
  @JsonKey(ignore: true)
  _$$_SignupErrorCopyWith<_$_SignupError> get copyWith =>
      throw _privateConstructorUsedError;
}
