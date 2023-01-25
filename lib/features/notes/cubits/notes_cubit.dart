import 'dart:async';
import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_notes/app/app_locator.dart';
import 'package:firebase_notes/features/features.dart';
import 'package:firebase_notes/models/models.dart';
import 'package:firebase_notes/repositories/repositories.dart';

class NotesCubit extends Cubit<List<Note>> {
  NotesCubit({
    required AuthBloc authBloc,
    NoteRepository? noteRepository,
  })  : _authBloc = authBloc,
        _noteRepository = noteRepository ?? locator.get<NoteRepository>(),
        super(<Note>[]) {
    authBloc.state.when(
      unauthenticated: (_) => emit([]),
      authenticated: (user) => user?.uid.isNotEmpty ?? false
          ? _createNotesSubscription(user!.uid)
          : null,
    );

    // Set up subscription to auth bloc.
    _authSubscription = _authBloc.stream.listen(
      (state) => state.when(
        unauthenticated: (_) => emit([]),
        authenticated: (user) => user?.uid.isNotEmpty ?? false
            ? _createNotesSubscription(user!.uid)
            : null,
      ),
    );
  }

  final AuthBloc _authBloc;

  final NoteRepository _noteRepository;

  late StreamSubscription<AuthState> _authSubscription;

  StreamSubscription<List<Note>>? _notesSubscription;

  @override
  Future<void> close() {
    _authSubscription.cancel();
    _notesSubscription?.cancel();
    return super.close();
  }

  void _createNotesSubscription(String userId) {
    try {
      _notesSubscription?.cancel();
      _notesSubscription =
          _noteRepository.streamNotes(userId: userId).listen(emit);
    } on Exception catch (e) {
      log('[NotesCubit] _createNotesSubscription: $e');
    }
  }
}
