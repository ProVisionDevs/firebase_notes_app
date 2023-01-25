import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:firebase_notes/app/app_router.dart';
import 'package:firebase_notes/features/auth/cubits/login_cubit.dart';
import 'package:firebase_notes/utils/utils.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: const LoginFormView(),
    );
  }
}

class LoginFormView extends HookWidget {
  const LoginFormView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formKey = useMemoized(GlobalKey<FormState>.new);
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();

    return BlocListener<LoginCubit, LoginState>(
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
                onChanged: context.read<LoginCubit>().updateEmail,
                validator: (val) => val!.contains('@') ? null : 'Invalid email',
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: passwordController,
                decoration: const InputDecoration(hintText: 'Password'),
                obscureText: true,
                onChanged: context.read<LoginCubit>().updatePassword,
                validator: (val) => val!.length > 5 ? null : 'Invalid password',
              ),
              const SizedBox(height: 40),
              TextButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    context.read<LoginCubit>().logIn();
                  }
                },
                child: const Text('Log In'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
