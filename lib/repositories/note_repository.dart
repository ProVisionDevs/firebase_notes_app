import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_notes/models/models.dart';

class NoteRepository {
  NoteRepository({
    FirebaseFirestore? firebaseFirestore,
  }) : _firebaseFirestore = firebaseFirestore ?? FirebaseFirestore.instance;

  static const String notesCollection = 'notes';

  static const String userNotesCollection = 'userNotes';

  final FirebaseFirestore _firebaseFirestore;

  Stream<List<Note>> streamNotes({
    required String userId,
  }) {
    try {
      return _firebaseFirestore
          .collection(notesCollection)
          .doc(userId)
          .collection(userNotesCollection)
          .orderBy('updatedAt', descending: true)
          .snapshots()
          .map((snap) => snap.docs.map(Note.fromDoc).toList());
    } catch (_) {
      throw const StreamNotesException();
    }
  }

  Future<Note> readNote({
    required String userId,
    required String noteId,
  }) async {
    try {
      final doc = await _firebaseFirestore
          .collection(notesCollection)
          .doc(userId)
          .collection(userNotesCollection)
          .doc(noteId)
          .get();
      return Note.fromDoc(doc);
    } catch (_) {
      throw const ReadNoteException();
    }
  }

  Future<void> createNote({
    required String userId,
    required Note note,
  }) async {
    try {
      await _firebaseFirestore
          .collection(notesCollection)
          .doc(userId)
          .collection(userNotesCollection)
          .add(note.toJson());
    } catch (_) {
      throw const CreateNoteException();
    }
  }

  Future<void> updateNote({
    required String userId,
    required Note note,
  }) async {
    try {
      await _firebaseFirestore
          .collection(notesCollection)
          .doc(userId)
          .collection(userNotesCollection)
          .doc(note.id)
          .update(note.toJson());
    } catch (_) {
      throw const UpdateNoteException();
    }
  }

  Future<void> deleteNote({
    required String userId,
    required String noteId,
  }) async {
    try {
      await _firebaseFirestore
          .collection(notesCollection)
          .doc(userId)
          .collection(userNotesCollection)
          .doc(noteId)
          .delete();
    } catch (_) {
      throw const DeleteNoteException();
    }
  }
}
