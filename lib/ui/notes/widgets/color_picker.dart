import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_notes/features/theme/theme.dart';

class ColorPicker extends StatelessWidget {
  const ColorPicker({
    Key? key,
    required this.onTap,
    required this.selectedHue,
  }) : super(key: key);

  final void Function(double) onTap;

  final double selectedHue;

  static const List<double> hues = [0, 60, 120, 180, 240, 300];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      height: 60,
      color: Theme.of(context).colorScheme.surface,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: hues.map((hue) {
          final isSelected = selectedHue == hue;
          return GestureDetector(
            onTap: () => onTap(hue),
            child: Container(
              width: 30,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: HSVColor.fromAHSV(1, hue, 0.75, 0.9).toColor(),
                border: Border.all(
                  color: isSelected
                      ? context.watch<ThemeCubit>().state == ThemeMode.light
                          ? Colors.black
                          : Colors.white
                      : Colors.transparent,
                  width: 2,
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
