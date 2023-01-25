import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'note_model.freezed.dart';
part 'note_model.g.dart';

Timestamp _toTimestamp(DateTime date) => Timestamp.fromDate(date);

DateTime _fromDateTime(Timestamp timestamp) => timestamp.toDate();

@freezed
class Note with _$Note {
  @JsonSerializable(explicitToJson: true)
  const factory Note({
    @JsonKey(ignore: true) String? id,
    required String content,
    @JsonKey(toJson: _toTimestamp, fromJson: _fromDateTime)
        required DateTime updatedAt,
    required double hue,
  }) = _Note;

// Initial State of all New Notes
  factory Note.empty() {
    return Note(
      id: '',
      content: '',
      updatedAt: DateTime.now(),
      hue: 0,
    );
  }

  factory Note.fromJson(Map<String, dynamic> json) => _$NoteFromJson(json);

  factory Note.fromDoc(DocumentSnapshot doc) =>
      Note.fromJson((doc.data() ?? <String, Object?>{}) as Map<String, Object?>)
          .copyWith(id: doc.id);
}
