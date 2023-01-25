import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_notes/app/app_locator.dart';
import 'package:firebase_notes/repositories/repositories.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({
    AuthRepository? authRepository,
  })  : _authRepository = authRepository ?? locator.get<AuthRepository>(),
        super(const _AuthUnauthenticated()) {
    on<_AuthAppStarted>(_onAuthAppStarted);
    on<_AuthUserChanged>(_onAuthUserChanged);
    on<_AuthSignedOut>(_onAuthSignedOut);

    // Set up user auth subscription.
    _authUserChangesSubscription = _authRepository.userChanges
        .listen((user) => add(_AuthUserChanged(user: user)));
  }

  final AuthRepository _authRepository;

  late StreamSubscription<firebase_auth.User?> _authUserChangesSubscription;

  @override
  Future<void> close() {
    _authUserChangesSubscription.cancel();
    return super.close();
  }

  Future<void> _onAuthAppStarted(
    _AuthAppStarted _,
    Emitter<AuthState> emit,
  ) async {
    try {
      final user = _authRepository.currentUser;
      if (user == null) {
        await _authRepository.signInAnonymously();
      }
    } on Exception catch (e) {
      emit(_AuthUnauthenticated(exception: e));
    }
  }

  Future<void> _onAuthUserChanged(
    _AuthUserChanged event,
    Emitter<AuthState> emit,
  ) async =>
      emit(_AuthAuthenticated(user: event.user));

  Future<void> _onAuthSignedOut(
    _AuthSignedOut _,
    Emitter<AuthState> emit,
  ) async {
    try {
      await _authRepository.signOut();
      await _authRepository.signInAnonymously();
    } on Exception catch (e) {
      emit(_AuthUnauthenticated(exception: e));
    }
  }
}
