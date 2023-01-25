import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_notes/features/theme/theme.dart';

class ThemeModeButton extends StatelessWidget {
  const ThemeModeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isDarkMode = context.watch<ThemeCubit>().state == ThemeMode.dark;
    return IconButton(
      onPressed: () => isDarkMode
          ? context.read<ThemeCubit>().changeTheme(ThemeMode.light)
          : context.read<ThemeCubit>().changeTheme(ThemeMode.dark),
      icon: isDarkMode
          ? const Icon(Icons.wb_sunny)
          : const Icon(Icons.brightness_2),
      iconSize: 28,
    );
  }
}
