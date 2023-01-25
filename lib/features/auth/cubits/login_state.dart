part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial({
    @Default('') String email,
    @Default('') String password,
  }) = _LoginInitial;
  const factory LoginState.submitting({
    required String email,
    required String password,
  }) = _LoginSubmitting;
  const factory LoginState.success({
    required String email,
    required String password,
  }) = _LoginSuccess;
  const factory LoginState.error({
    required String email,
    required String password,
    required Exception exception,
  }) = _LoginError;
}
