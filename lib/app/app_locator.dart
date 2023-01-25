import 'package:firebase_notes/repositories/repositories.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void setUpLocator() {
  locator
    ..registerSingleton(AuthRepository())
    ..registerSingleton(
      NoteRepository(),
    );
}
