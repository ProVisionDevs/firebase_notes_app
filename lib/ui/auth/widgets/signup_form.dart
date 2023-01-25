import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:firebase_notes/app/app_router.gr.dart';
import 'package:firebase_notes/features/features.dart';
import 'package:firebase_notes/utils/exception_utils.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignupCubit(),
      child: const SignupFormView(),
    );
  }
}

class SignupFormView extends HookWidget {
  const SignupFormView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formKey = useMemoized(GlobalKey<FormState>.new);
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();

    return BlocListener<SignupCubit, SignupState>(
      listener: (context, state) => state.maybeMap(
        success: (_) => AutoRouter.of(context).popUntilRouteWithName(
          NotesWrapperRoute.name,
        ),
        error: (state) {
          FocusScope.of(context).unfocus();
          ScaffoldMessenger.of(context).hideCurrentSnackBar();
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: Colors.red,
              content: Text(
                exceptionHandler(state.exception),
              ),
            ),
          );
          return null;
        },
        orElse: () => null,
      ),
      child: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              const SizedBox(height: 20),
              TextFormField(
                controller: emailController,
                decoration: const InputDecoration(hintText: 'Email'),
                keyboardType: TextInputType.emailAddress,
                onChanged: context.read<SignupCubit>().updateEmail,
                validator: (val) => val!.contains('@') ? null : 'Invalid email',
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: passwordController,
                decoration: const InputDecoration(hintText: 'Password'),
                obscureText: true,
                onChanged: context.read<SignupCubit>().updatePassword,
                validator: (val) => val!.length > 5
                    ? null
                    : 'Password must be at least 6 characters',
              ),
              const SizedBox(height: 40),
              TextButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    context.read<SignupCubit>().signUp();
                  }
                },
                child: const Text('Sign Up'),
              ),
              const Spacer(),
              const Divider(),
              TextButton(
                onPressed: () => AutoRouter.of(context).push(
                  const LoginRoute(),
                ),
                child: const Text('Already have an account? Log in'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
