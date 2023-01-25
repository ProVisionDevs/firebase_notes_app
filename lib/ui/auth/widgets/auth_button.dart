import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_notes/app/app_router.dart';
import 'package:firebase_notes/features/auth/auth.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authState = context.watch<AuthBloc>().state;
    final isAnonymous = authState.when(
      unauthenticated: (_) => true,
      authenticated: (user) => user?.isAnonymous ?? true,
    );
    return IconButton(
      onPressed: () => isAnonymous
          ? AutoRouter.of(context).push(const SignupRoute())
          : context.read<AuthBloc>().add(const AuthEvent.signedOut()),
      icon: isAnonymous
          ? const Icon(Icons.account_circle)
          : const Icon(Icons.exit_to_app),
      iconSize: 28,
    );
  }
}
