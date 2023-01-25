import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_notes/app/app_router.gr.dart';
import 'package:firebase_notes/features/notes/notes.dart';
import 'package:firebase_notes/models/models.dart';
import 'package:firebase_notes/ui/ui.dart';

class NotesScreen extends StatelessWidget {
  const NotesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const NotesView();
  }
}

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: const Text('Your Notes'),
        leading: const AuthButton(),
        actions: const [
          // ThemeMode Button
          ThemeModeButton(),
        ],
      ),
      body: BlocBuilder<NotesCubit, List<Note>>(
        builder: (context, notes) => NotesList(notes: notes),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => AutoRouter.of(context).push(
          CreateNoteRoute(),
        ),
        child: const Icon(Icons.add, size: 28),
      ),
    );
  }
}
