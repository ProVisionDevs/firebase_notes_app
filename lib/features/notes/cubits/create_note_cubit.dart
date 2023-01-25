import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_notes/app/app_locator.dart';
import 'package:firebase_notes/features/features.dart';
import 'package:firebase_notes/models/models.dart';
import 'package:firebase_notes/repositories/repositories.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_note_state.dart';
part 'create_note_cubit.freezed.dart';

class CreateNoteCubit extends Cubit<CreateNoteState> {
  CreateNoteCubit({
    required AuthBloc authBloc,
    NoteRepository? noteRepository,
  })  : _authBloc = authBloc,
        _noteRepository = noteRepository ?? locator.get<NoteRepository>(),
        super(_CreateNoteInitial(note: Note.empty()));

  final AuthBloc _authBloc;

  final NoteRepository _noteRepository;

  void updateNote(Note note) => emit(_CreateNoteInitial(note: note));

  Future<void> createNote() async {
    try {
      await _authBloc.state.when(
        unauthenticated: (_) {},
        authenticated: (user) async {
          if (user != null) {
            emit(_CreateNoteSubmitting(note: state.note));

            await _noteRepository.createNote(
              userId: user.uid,
              note: state.note,
            );

            emit(_CreateNoteSuccess(note: state.note));
          }
        },
      );
    } on Exception catch (e) {
      emit(_CreateNoteError(note: state.note, exception: e));
    }
  }

  Future<void> saveNote() async {
    try {
      await _authBloc.state.when(
        unauthenticated: (_) {},
        authenticated: (user) async {
          if (user != null) {
            emit(_CreateNoteSubmitting(note: state.note));

            await _noteRepository.updateNote(
              userId: user.uid,
              note: state.note,
            );

            emit(_CreateNoteSuccess(note: state.note));
          }
        },
      );
    } on Exception catch (e) {
      emit(_CreateNoteError(note: state.note, exception: e));
    }
  }

  Future<void> deleteNote() async {
    try {
      await _authBloc.state.when(
        unauthenticated: (_) {},
        authenticated: (user) async {
          if (user != null) {
            emit(_CreateNoteSubmitting(note: state.note));

            await _noteRepository.deleteNote(
              userId: user.uid,
              noteId: state.note.id ?? '',
            );

            emit(_CreateNoteSuccess(note: state.note));
          }
        },
      );
    } on Exception catch (e) {
      emit(_CreateNoteError(note: state.note, exception: e));
    }
  }
}
