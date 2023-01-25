part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.appStarted() = _AuthAppStarted;
  const factory AuthEvent.userChanged({firebase_auth.User? user}) =
      _AuthUserChanged;
  const factory AuthEvent.signedOut() = _AuthSignedOut;
}
