import 'package:flutter/material.dart';
import 'package:firebase_notes/models/models.dart';
import 'package:firebase_notes/ui/notes/widgets/note_tile.dart';

class NotesList extends StatelessWidget {
  const NotesList({
    Key? key,
    required this.notes,
  }) : super(key: key);

  final List<Note> notes;

  @override
  Widget build(BuildContext context) {
    // Show empty state message.
    if (notes.isEmpty) {
      return const Center(
        child: Text(
          'Tap + to add a note',
          style: TextStyle(fontSize: 20, height: -1.4),
        ),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
      itemCount: notes.length,
      itemBuilder: (context, index) {
        final note = notes[index];
        return NoteTile(
          noteId: note.id!,
          content: note.content,
          updatedAt: note.updatedAt,
          hue: note.hue,
        );
      },
    );
  }
}
