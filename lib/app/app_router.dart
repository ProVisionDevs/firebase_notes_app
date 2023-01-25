import 'package:auto_route/auto_route.dart';
import 'package:firebase_notes/ui/notes/notes.dart';
import 'package:firebase_notes/ui/ui.dart';

export 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    AutoRoute<NotesWrapperScreen>(
      path: '/',
      page: NotesWrapperScreen,
      children: [
        AutoRoute<NotesScreen>(path: '', page: NotesScreen),
        AutoRoute<CreateNoteScreen>(
          path: 'notes/:noteId',
          page: CreateNoteScreen,
        ),
        RedirectRoute(path: '*', redirectTo: ''),
      ],
    ),
    AutoRoute<LoginScreen>(path: 'login', page: LoginScreen),
    AutoRoute<SignupScreen>(path: 'signup', page: SignupScreen),
    RedirectRoute(path: '*', redirectTo: '/'),
  ],
)
class $AppRouter {}
