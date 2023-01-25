import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_notes/app/app_locator.dart';
import 'package:firebase_notes/repositories/repositories.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_state.dart';
part 'signup_cubit.freezed.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit({
    AuthRepository? authRepository,
  })  : _authRepository = authRepository ?? locator.get<AuthRepository>(),
        super(const _SignupInitial());

  final AuthRepository _authRepository;

  void updateEmail(String email) =>
      emit(_SignupInitial(email: email, password: state.password));

  void updatePassword(String password) =>
      emit(_SignupInitial(email: state.email, password: password));

  Future<void> signUp() async {
    try {
      emit(_SignupSubmitting(email: state.email, password: state.password));
      await _authRepository.linkEmailPasswordCredential(
        email: state.email,
        password: state.password,
      );
      emit(_SignupSuccess(email: state.email, password: state.password));
    } on Exception catch (e) {
      emit(
        _SignupError(
          email: state.email,
          password: state.password,
          exception: e,
        ),
      );
    }
  }
}
