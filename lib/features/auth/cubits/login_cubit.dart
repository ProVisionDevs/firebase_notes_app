import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_notes/app/app_locator.dart';
import 'package:firebase_notes/repositories/repositories.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit({
    AuthRepository? authRepository,
  })  : _authRepository = authRepository ?? locator.get<AuthRepository>(),
        super(const _LoginInitial());

  final AuthRepository _authRepository;

  void updateEmail(String email) =>
      emit(_LoginInitial(email: email, password: state.password));

  void updatePassword(String password) =>
      emit(_LoginInitial(email: state.email, password: password));

  Future<void> logIn() async {
    try {
      emit(_LoginSubmitting(email: state.email, password: state.password));
      await _authRepository.signInWithEmailAndPassword(
        email: state.email,
        password: state.password,
      );
      emit(_LoginSuccess(email: state.email, password: state.password));
    } on Exception catch (e) {
      emit(
        _LoginError(
          email: state.email,
          password: state.password,
          exception: e,
        ),
      );
    }
  }
}
