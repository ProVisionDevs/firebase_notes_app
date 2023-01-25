import 'package:freezed_annotation/freezed_annotation.dart';

part 'custom_exception_model.freezed.dart';

@freezed
class CustomException with _$CustomException implements Exception {
  // AuthRepository exceptions.
  const factory CustomException.authSignInAnonymously() =
      SignInAnonymouslyException;
  const factory CustomException.authLinkEmailPasswordCredential({
    @Default('ERROR') String code,
  }) = LinkEmailPasswordCredentialException;
  const factory CustomException.authSignInWithEmailPasswordCredential({
    @Default('ERROR') String code,
  }) = SignInWithEmailPasswordException;
  const factory CustomException.authSignOut() = SignOutException;

  // NoteRepository exceptions.
  const factory CustomException.noteStreamNotesException() =
      StreamNotesException;
  const factory CustomException.noteReadNoteException() = ReadNoteException;
  const factory CustomException.noteCreateNoteException() = CreateNoteException;
  const factory CustomException.noteUpdateNoteException() = UpdateNoteException;
  const factory CustomException.noteDeleteNoteException() = DeleteNoteException;
}
