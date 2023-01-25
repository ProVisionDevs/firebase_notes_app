// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_note_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreateNoteState {
  Note get note => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Note note) initial,
    required TResult Function(Note note) submitting,
    required TResult Function(Note note) success,
    required TResult Function(Note note, Exception exception) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Note note)? initial,
    TResult? Function(Note note)? submitting,
    TResult? Function(Note note)? success,
    TResult? Function(Note note, Exception exception)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Note note)? initial,
    TResult Function(Note note)? submitting,
    TResult Function(Note note)? success,
    TResult Function(Note note, Exception exception)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateNoteInitial value) initial,
    required TResult Function(_CreateNoteSubmitting value) submitting,
    required TResult Function(_CreateNoteSuccess value) success,
    required TResult Function(_CreateNoteError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateNoteInitial value)? initial,
    TResult? Function(_CreateNoteSubmitting value)? submitting,
    TResult? Function(_CreateNoteSuccess value)? success,
    TResult? Function(_CreateNoteError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateNoteInitial value)? initial,
    TResult Function(_CreateNoteSubmitting value)? submitting,
    TResult Function(_CreateNoteSuccess value)? success,
    TResult Function(_CreateNoteError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateNoteStateCopyWith<CreateNoteState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateNoteStateCopyWith<$Res> {
  factory $CreateNoteStateCopyWith(
          CreateNoteState value, $Res Function(CreateNoteState) then) =
      _$CreateNoteStateCopyWithImpl<$Res, CreateNoteState>;
  @useResult
  $Res call({Note note});

  $NoteCopyWith<$Res> get note;
}

/// @nodoc
class _$CreateNoteStateCopyWithImpl<$Res, $Val extends CreateNoteState>
    implements $CreateNoteStateCopyWith<$Res> {
  _$CreateNoteStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? note = null,
  }) {
    return _then(_value.copyWith(
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as Note,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NoteCopyWith<$Res> get note {
    return $NoteCopyWith<$Res>(_value.note, (value) {
      return _then(_value.copyWith(note: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CreateNoteInitialCopyWith<$Res>
    implements $CreateNoteStateCopyWith<$Res> {
  factory _$$_CreateNoteInitialCopyWith(_$_CreateNoteInitial value,
          $Res Function(_$_CreateNoteInitial) then) =
      __$$_CreateNoteInitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Note note});

  @override
  $NoteCopyWith<$Res> get note;
}

/// @nodoc
class __$$_CreateNoteInitialCopyWithImpl<$Res>
    extends _$CreateNoteStateCopyWithImpl<$Res, _$_CreateNoteInitial>
    implements _$$_CreateNoteInitialCopyWith<$Res> {
  __$$_CreateNoteInitialCopyWithImpl(
      _$_CreateNoteInitial _value, $Res Function(_$_CreateNoteInitial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? note = null,
  }) {
    return _then(_$_CreateNoteInitial(
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as Note,
    ));
  }
}

/// @nodoc

class _$_CreateNoteInitial extends _CreateNoteInitial {
  const _$_CreateNoteInitial({required this.note}) : super._();

  @override
  final Note note;

  @override
  String toString() {
    return 'CreateNoteState.initial(note: $note)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateNoteInitial &&
            (identical(other.note, note) || other.note == note));
  }

  @override
  int get hashCode => Object.hash(runtimeType, note);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateNoteInitialCopyWith<_$_CreateNoteInitial> get copyWith =>
      __$$_CreateNoteInitialCopyWithImpl<_$_CreateNoteInitial>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Note note) initial,
    required TResult Function(Note note) submitting,
    required TResult Function(Note note) success,
    required TResult Function(Note note, Exception exception) error,
  }) {
    return initial(note);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Note note)? initial,
    TResult? Function(Note note)? submitting,
    TResult? Function(Note note)? success,
    TResult? Function(Note note, Exception exception)? error,
  }) {
    return initial?.call(note);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Note note)? initial,
    TResult Function(Note note)? submitting,
    TResult Function(Note note)? success,
    TResult Function(Note note, Exception exception)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(note);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateNoteInitial value) initial,
    required TResult Function(_CreateNoteSubmitting value) submitting,
    required TResult Function(_CreateNoteSuccess value) success,
    required TResult Function(_CreateNoteError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateNoteInitial value)? initial,
    TResult? Function(_CreateNoteSubmitting value)? submitting,
    TResult? Function(_CreateNoteSuccess value)? success,
    TResult? Function(_CreateNoteError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateNoteInitial value)? initial,
    TResult Function(_CreateNoteSubmitting value)? submitting,
    TResult Function(_CreateNoteSuccess value)? success,
    TResult Function(_CreateNoteError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _CreateNoteInitial extends CreateNoteState {
  const factory _CreateNoteInitial({required final Note note}) =
      _$_CreateNoteInitial;
  const _CreateNoteInitial._() : super._();

  @override
  Note get note;
  @override
  @JsonKey(ignore: true)
  _$$_CreateNoteInitialCopyWith<_$_CreateNoteInitial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CreateNoteSubmittingCopyWith<$Res>
    implements $CreateNoteStateCopyWith<$Res> {
  factory _$$_CreateNoteSubmittingCopyWith(_$_CreateNoteSubmitting value,
          $Res Function(_$_CreateNoteSubmitting) then) =
      __$$_CreateNoteSubmittingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Note note});

  @override
  $NoteCopyWith<$Res> get note;
}

/// @nodoc
class __$$_CreateNoteSubmittingCopyWithImpl<$Res>
    extends _$CreateNoteStateCopyWithImpl<$Res, _$_CreateNoteSubmitting>
    implements _$$_CreateNoteSubmittingCopyWith<$Res> {
  __$$_CreateNoteSubmittingCopyWithImpl(_$_CreateNoteSubmitting _value,
      $Res Function(_$_CreateNoteSubmitting) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? note = null,
  }) {
    return _then(_$_CreateNoteSubmitting(
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as Note,
    ));
  }
}

/// @nodoc

class _$_CreateNoteSubmitting extends _CreateNoteSubmitting {
  const _$_CreateNoteSubmitting({required this.note}) : super._();

  @override
  final Note note;

  @override
  String toString() {
    return 'CreateNoteState.submitting(note: $note)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateNoteSubmitting &&
            (identical(other.note, note) || other.note == note));
  }

  @override
  int get hashCode => Object.hash(runtimeType, note);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateNoteSubmittingCopyWith<_$_CreateNoteSubmitting> get copyWith =>
      __$$_CreateNoteSubmittingCopyWithImpl<_$_CreateNoteSubmitting>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Note note) initial,
    required TResult Function(Note note) submitting,
    required TResult Function(Note note) success,
    required TResult Function(Note note, Exception exception) error,
  }) {
    return submitting(note);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Note note)? initial,
    TResult? Function(Note note)? submitting,
    TResult? Function(Note note)? success,
    TResult? Function(Note note, Exception exception)? error,
  }) {
    return submitting?.call(note);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Note note)? initial,
    TResult Function(Note note)? submitting,
    TResult Function(Note note)? success,
    TResult Function(Note note, Exception exception)? error,
    required TResult orElse(),
  }) {
    if (submitting != null) {
      return submitting(note);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateNoteInitial value) initial,
    required TResult Function(_CreateNoteSubmitting value) submitting,
    required TResult Function(_CreateNoteSuccess value) success,
    required TResult Function(_CreateNoteError value) error,
  }) {
    return submitting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateNoteInitial value)? initial,
    TResult? Function(_CreateNoteSubmitting value)? submitting,
    TResult? Function(_CreateNoteSuccess value)? success,
    TResult? Function(_CreateNoteError value)? error,
  }) {
    return submitting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateNoteInitial value)? initial,
    TResult Function(_CreateNoteSubmitting value)? submitting,
    TResult Function(_CreateNoteSuccess value)? success,
    TResult Function(_CreateNoteError value)? error,
    required TResult orElse(),
  }) {
    if (submitting != null) {
      return submitting(this);
    }
    return orElse();
  }
}

abstract class _CreateNoteSubmitting extends CreateNoteState {
  const factory _CreateNoteSubmitting({required final Note note}) =
      _$_CreateNoteSubmitting;
  const _CreateNoteSubmitting._() : super._();

  @override
  Note get note;
  @override
  @JsonKey(ignore: true)
  _$$_CreateNoteSubmittingCopyWith<_$_CreateNoteSubmitting> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CreateNoteSuccessCopyWith<$Res>
    implements $CreateNoteStateCopyWith<$Res> {
  factory _$$_CreateNoteSuccessCopyWith(_$_CreateNoteSuccess value,
          $Res Function(_$_CreateNoteSuccess) then) =
      __$$_CreateNoteSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Note note});

  @override
  $NoteCopyWith<$Res> get note;
}

/// @nodoc
class __$$_CreateNoteSuccessCopyWithImpl<$Res>
    extends _$CreateNoteStateCopyWithImpl<$Res, _$_CreateNoteSuccess>
    implements _$$_CreateNoteSuccessCopyWith<$Res> {
  __$$_CreateNoteSuccessCopyWithImpl(
      _$_CreateNoteSuccess _value, $Res Function(_$_CreateNoteSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? note = null,
  }) {
    return _then(_$_CreateNoteSuccess(
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as Note,
    ));
  }
}

/// @nodoc

class _$_CreateNoteSuccess extends _CreateNoteSuccess {
  const _$_CreateNoteSuccess({required this.note}) : super._();

  @override
  final Note note;

  @override
  String toString() {
    return 'CreateNoteState.success(note: $note)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateNoteSuccess &&
            (identical(other.note, note) || other.note == note));
  }

  @override
  int get hashCode => Object.hash(runtimeType, note);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateNoteSuccessCopyWith<_$_CreateNoteSuccess> get copyWith =>
      __$$_CreateNoteSuccessCopyWithImpl<_$_CreateNoteSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Note note) initial,
    required TResult Function(Note note) submitting,
    required TResult Function(Note note) success,
    required TResult Function(Note note, Exception exception) error,
  }) {
    return success(note);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Note note)? initial,
    TResult? Function(Note note)? submitting,
    TResult? Function(Note note)? success,
    TResult? Function(Note note, Exception exception)? error,
  }) {
    return success?.call(note);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Note note)? initial,
    TResult Function(Note note)? submitting,
    TResult Function(Note note)? success,
    TResult Function(Note note, Exception exception)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(note);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateNoteInitial value) initial,
    required TResult Function(_CreateNoteSubmitting value) submitting,
    required TResult Function(_CreateNoteSuccess value) success,
    required TResult Function(_CreateNoteError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateNoteInitial value)? initial,
    TResult? Function(_CreateNoteSubmitting value)? submitting,
    TResult? Function(_CreateNoteSuccess value)? success,
    TResult? Function(_CreateNoteError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateNoteInitial value)? initial,
    TResult Function(_CreateNoteSubmitting value)? submitting,
    TResult Function(_CreateNoteSuccess value)? success,
    TResult Function(_CreateNoteError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _CreateNoteSuccess extends CreateNoteState {
  const factory _CreateNoteSuccess({required final Note note}) =
      _$_CreateNoteSuccess;
  const _CreateNoteSuccess._() : super._();

  @override
  Note get note;
  @override
  @JsonKey(ignore: true)
  _$$_CreateNoteSuccessCopyWith<_$_CreateNoteSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CreateNoteErrorCopyWith<$Res>
    implements $CreateNoteStateCopyWith<$Res> {
  factory _$$_CreateNoteErrorCopyWith(
          _$_CreateNoteError value, $Res Function(_$_CreateNoteError) then) =
      __$$_CreateNoteErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Note note, Exception exception});

  @override
  $NoteCopyWith<$Res> get note;
}

/// @nodoc
class __$$_CreateNoteErrorCopyWithImpl<$Res>
    extends _$CreateNoteStateCopyWithImpl<$Res, _$_CreateNoteError>
    implements _$$_CreateNoteErrorCopyWith<$Res> {
  __$$_CreateNoteErrorCopyWithImpl(
      _$_CreateNoteError _value, $Res Function(_$_CreateNoteError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? note = null,
    Object? exception = null,
  }) {
    return _then(_$_CreateNoteError(
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as Note,
      exception: null == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception,
    ));
  }
}

/// @nodoc

class _$_CreateNoteError extends _CreateNoteError {
  const _$_CreateNoteError({required this.note, required this.exception})
      : super._();

  @override
  final Note note;
  @override
  final Exception exception;

  @override
  String toString() {
    return 'CreateNoteState.error(note: $note, exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateNoteError &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(runtimeType, note, exception);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateNoteErrorCopyWith<_$_CreateNoteError> get copyWith =>
      __$$_CreateNoteErrorCopyWithImpl<_$_CreateNoteError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Note note) initial,
    required TResult Function(Note note) submitting,
    required TResult Function(Note note) success,
    required TResult Function(Note note, Exception exception) error,
  }) {
    return error(note, exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Note note)? initial,
    TResult? Function(Note note)? submitting,
    TResult? Function(Note note)? success,
    TResult? Function(Note note, Exception exception)? error,
  }) {
    return error?.call(note, exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Note note)? initial,
    TResult Function(Note note)? submitting,
    TResult Function(Note note)? success,
    TResult Function(Note note, Exception exception)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(note, exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateNoteInitial value) initial,
    required TResult Function(_CreateNoteSubmitting value) submitting,
    required TResult Function(_CreateNoteSuccess value) success,
    required TResult Function(_CreateNoteError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateNoteInitial value)? initial,
    TResult? Function(_CreateNoteSubmitting value)? submitting,
    TResult? Function(_CreateNoteSuccess value)? success,
    TResult? Function(_CreateNoteError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateNoteInitial value)? initial,
    TResult Function(_CreateNoteSubmitting value)? submitting,
    TResult Function(_CreateNoteSuccess value)? success,
    TResult Function(_CreateNoteError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _CreateNoteError extends CreateNoteState {
  const factory _CreateNoteError(
      {required final Note note,
      required final Exception exception}) = _$_CreateNoteError;
  const _CreateNoteError._() : super._();

  @override
  Note get note;
  Exception get exception;
  @override
  @JsonKey(ignore: true)
  _$$_CreateNoteErrorCopyWith<_$_CreateNoteError> get copyWith =>
      throw _privateConstructorUsedError;
}
