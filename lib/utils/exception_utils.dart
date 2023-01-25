import 'package:firebase_notes/models/custom_exception_model.dart';

const String _defaultErrorMessage = 'Something went wrong!';

String exceptionHandler(Exception exception) {
  if (exception is CustomException) {
    return exception.maybeMap(
      authLinkEmailPasswordCredential: (e) {
        switch (e.code) {
          case 'email-in-use':
            return 'Email already in use.';
          default:
            return _defaultErrorMessage;
        }
      },
      authSignInWithEmailPasswordCredential: (e) {
        switch (e.code) {
          case 'incorrect-email-or-password':
            return 'Email or password was incorrect.';
          default:
            return _defaultErrorMessage;
        }
      },
      // noteCreateNoteException: (_) => 'Create note failed.',
      // noteUpdateNoteException: (_) => 'Update note failed.',
      // noteDeleteNoteException: (_) => 'Delete note failed',
      orElse: () => _defaultErrorMessage,
    );
  }
  return _defaultErrorMessage;
}
