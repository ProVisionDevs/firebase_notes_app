import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:firebase_notes/models/models.dart';

class AuthRepository {
  AuthRepository({
    firebase_auth.FirebaseAuth? firebaseAuth,
  }) : _firebaseAuth = firebaseAuth ?? firebase_auth.FirebaseAuth.instance;

  final firebase_auth.FirebaseAuth _firebaseAuth;

  Stream<firebase_auth.User?> get userChanges => _firebaseAuth.userChanges();

  firebase_auth.User? get currentUser => _firebaseAuth.currentUser;

  Future<firebase_auth.User> signInAnonymously() async {
    try {
      final userCredential = await _firebaseAuth.signInAnonymously();
      return userCredential.user!;
    } catch (_) {
      throw const SignInAnonymouslyException();
    }
  }

  Future<firebase_auth.User?> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final userCredential = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential.user;
    } on firebase_auth.FirebaseAuthException catch (e) {
      if (['wrong-password', 'user-not-found'].contains(e.code)) {
        throw const SignInWithEmailPasswordException(
          code: 'incorrect-email-or-password',
        );
      }
      throw const SignInWithEmailPasswordException();
    } catch (_) {
      throw const SignInWithEmailPasswordException();
    }
  }

  Future<firebase_auth.User?> linkEmailPasswordCredential({
    required String email,
    required String password,
  }) async {
    try {
      final credential = firebase_auth.EmailAuthProvider.credential(
        email: email,
        password: password,
      );
      return await _linkCredential(credential: credential);
    } on firebase_auth.FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        throw const LinkEmailPasswordCredentialException(code: 'email-in-use');
      }
      throw const LinkEmailPasswordCredentialException();
    } catch (_) {
      throw const LinkEmailPasswordCredentialException();
    }
  }

  Future<firebase_auth.User?> _linkCredential({
    required firebase_auth.AuthCredential credential,
  }) async {
    try {
      final currentUser = _firebaseAuth.currentUser;
      if (currentUser != null) {
        final userCredential = await currentUser.linkWithCredential(credential);

        // Refresh user to trigger userChanges.
        await userCredential.user?.reload();

        return userCredential.user;
      }
      return null;
    } catch (_) {
      rethrow;
    }
  }

  Future<void> signOut() async {
    try {
      await _firebaseAuth.signOut();
    } catch (_) {
      throw const SignOutException();
    }
  }
}
