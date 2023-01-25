import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_notes/features/auth/auth.dart';
import 'package:firebase_notes/features/notes/notes.dart';
import 'package:firebase_notes/ui/ui.dart';
import 'package:firebase_notes/utils/utils.dart';

class CreateNoteScreen extends StatelessWidget {
  const CreateNoteScreen({
    super.key,
    @PathParam('noteId') this.noteId = '',
  });

  final String noteId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) {
        final note = context
            .read<NotesCubit>()
            .state
            .firstWhereOrNull((e) => e.id == noteId);
        if (note == null) {
          // New note.
          return CreateNoteCubit(
            authBloc: context.read<AuthBloc>(),
          );
        } else {
          // Existing note.
          return CreateNoteCubit(
            authBloc: context.read<AuthBloc>(),
          )..updateNote(note);
        }
      },
      child: const CreateNoteView(),
    );
  }
}

class CreateNoteView extends StatelessWidget {
  const CreateNoteView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CreateNoteCubit, CreateNoteState>(
      listener: (context, state) => state.maybeMap(
        submitting: (_) => showDialog<void>(
          context: context,
          useRootNavigator: false,
          barrierDismissible: false,
          barrierColor: Colors.black12,
          builder: (_) => WillPopScope(
            onWillPop: () async => false,
            child: const Center(
              child: CircularProgressIndicator(),
            ),
          ),
        ),
        success: (_) {
          // Pop dialog.
          Navigator.of(context).pop();
          // Pop screen.
          AutoRouter.of(context).pop();
          return null;
        },
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
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            actions: [
              if (state.isEditing)
                TextButton(
                  onPressed: () => context.read<CreateNoteCubit>().deleteNote(),
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.red,
                    textStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  child: const Text('Delete'),
                ),
              TextButton(
                onPressed: state.note.content.isNotEmpty
                    ? () => state.isEditing
                        ? context.read<CreateNoteCubit>().saveNote()
                        : context.read<CreateNoteCubit>().createNote()
                    : null,
                style: TextButton.styleFrom(
                  foregroundColor:
                      state.isEditing ? Colors.orange : Colors.green,
                  textStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                child: Text(state.isEditing ? 'Save' : 'Add'),
              ),
            ],
          ),
          body: const CreateNoteField(),
          bottomSheet: ColorPicker(
            selectedHue: state.note.hue,
            onTap: (hue) => context.read<CreateNoteCubit>().updateNote(
                  state.note.copyWith(updatedAt: DateTime.now(), hue: hue),
                ),
          ),
        );
      },
    );
  }
}
