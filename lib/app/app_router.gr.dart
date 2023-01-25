// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/cupertino.dart' as _i5;
import 'package:flutter/material.dart' as _i4;

import '../ui/notes/notes.dart' as _i1;
import '../ui/ui.dart' as _i2;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    NotesWrapperRoute.name: (routeData) {
      return _i3.MaterialPageX<_i1.NotesWrapperScreen>(
        routeData: routeData,
        child: const _i1.NotesWrapperScreen(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i3.MaterialPageX<_i2.LoginScreen>(
        routeData: routeData,
        child: const _i2.LoginScreen(),
      );
    },
    SignupRoute.name: (routeData) {
      return _i3.MaterialPageX<_i2.SignupScreen>(
        routeData: routeData,
        child: const _i2.SignupScreen(),
      );
    },
    NotesRoute.name: (routeData) {
      return _i3.MaterialPageX<_i1.NotesScreen>(
        routeData: routeData,
        child: const _i1.NotesScreen(),
      );
    },
    CreateNoteRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<CreateNoteRouteArgs>(
          orElse: () => CreateNoteRouteArgs(
                  noteId: pathParams.getString(
                'noteId',
                '',
              )));
      return _i3.MaterialPageX<_i1.CreateNoteScreen>(
        routeData: routeData,
        child: _i1.CreateNoteScreen(
          key: args.key,
          noteId: args.noteId,
        ),
      );
    },
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(
          NotesWrapperRoute.name,
          path: '/',
          children: [
            _i3.RouteConfig(
              NotesRoute.name,
              path: '',
              parent: NotesWrapperRoute.name,
            ),
            _i3.RouteConfig(
              CreateNoteRoute.name,
              path: 'notes/:noteId',
              parent: NotesWrapperRoute.name,
            ),
            _i3.RouteConfig(
              '*#redirect',
              path: '*',
              parent: NotesWrapperRoute.name,
              redirectTo: '',
              fullMatch: true,
            ),
          ],
        ),
        _i3.RouteConfig(
          LoginRoute.name,
          path: 'login',
        ),
        _i3.RouteConfig(
          SignupRoute.name,
          path: 'signup',
        ),
        _i3.RouteConfig(
          '*#redirect',
          path: '*',
          redirectTo: '/',
          fullMatch: true,
        ),
      ];
}

/// generated route for
/// [_i1.NotesWrapperScreen]
class NotesWrapperRoute extends _i3.PageRouteInfo<void> {
  const NotesWrapperRoute({List<_i3.PageRouteInfo>? children})
      : super(
          NotesWrapperRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'NotesWrapperRoute';
}

/// generated route for
/// [_i2.LoginScreen]
class LoginRoute extends _i3.PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: 'login',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i2.SignupScreen]
class SignupRoute extends _i3.PageRouteInfo<void> {
  const SignupRoute()
      : super(
          SignupRoute.name,
          path: 'signup',
        );

  static const String name = 'SignupRoute';
}

/// generated route for
/// [_i1.NotesScreen]
class NotesRoute extends _i3.PageRouteInfo<void> {
  const NotesRoute()
      : super(
          NotesRoute.name,
          path: '',
        );

  static const String name = 'NotesRoute';
}

/// generated route for
/// [_i1.CreateNoteScreen]
class CreateNoteRoute extends _i3.PageRouteInfo<CreateNoteRouteArgs> {
  CreateNoteRoute({
    _i5.Key? key,
    String noteId = '',
  }) : super(
          CreateNoteRoute.name,
          path: 'notes/:noteId',
          args: CreateNoteRouteArgs(
            key: key,
            noteId: noteId,
          ),
          rawPathParams: {'noteId': noteId},
        );

  static const String name = 'CreateNoteRoute';
}

class CreateNoteRouteArgs {
  const CreateNoteRouteArgs({
    this.key,
    this.noteId = '',
  });

  final _i5.Key? key;

  final String noteId;

  @override
  String toString() {
    return 'CreateNoteRouteArgs{key: $key, noteId: $noteId}';
  }
}
