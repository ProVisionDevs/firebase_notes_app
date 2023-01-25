part of 'signup_cubit.dart';

@freezed
class SignupState with _$SignupState {
  const factory SignupState.initial({
    @Default('') String email,
    @Default('') String password,
  }) = _SignupInitial;
  const factory SignupState.submitting({
    required String email,
    required String password,
  }) = _SignupSubmitting;
  const factory SignupState.success({
    required String email,
    required String password,
  }) = _SignupSuccess;
  const factory SignupState.error({
    required String email,
    required String password,
    required Exception exception,
  }) = _SignupError;
}
