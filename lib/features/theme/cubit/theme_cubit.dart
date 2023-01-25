import 'package:flutter/material.dart';

import 'package:hydrated_bloc/hydrated_bloc.dart';

class ThemeCubit extends HydratedCubit<ThemeMode> {
  ThemeCubit() : super(ThemeMode.light);

  void changeTheme(ThemeMode mode) => emit(mode);

  @override
  ThemeMode fromJson(Map<String, dynamic> json) =>
      ThemeMode.values[(json['selectedTheme'] ?? 1) as int];

  @override
  Map<String, dynamic>? toJson(ThemeMode state) =>
      <String, int>{'selectedTheme': state.index};
}
