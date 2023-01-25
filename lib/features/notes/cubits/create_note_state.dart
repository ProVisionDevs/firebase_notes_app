part of 'create_note_cubit.dart';

@freezed
class CreateNoteState with _$CreateNoteState {
  const CreateNoteState._();
  const factory CreateNoteState.initial({required Note note}) =
      _CreateNoteInitial;
  const factory CreateNoteState.submitting({required Note note}) =
      _CreateNoteSubmitting;
  const factory CreateNoteState.success({required Note note}) =
      _CreateNoteSuccess;
  const factory CreateNoteState.error({
    required Note note,
    required Exception exception,
  }) = _CreateNoteError;

  bool get isEditing => note.id?.isNotEmpty ?? false;
}
