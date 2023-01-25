import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_notes/features/auth/auth.dart';
import 'package:firebase_notes/features/notes/notes.dart';

class NotesWrapperScreen extends StatelessWidget {
  const NotesWrapperScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(
        authBloc: context.read<AuthBloc>(),
      ),
      child: const AutoRouter(),
    );
  }
}
