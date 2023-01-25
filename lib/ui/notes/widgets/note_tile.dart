import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:firebase_notes/app/app_router.dart';
import 'package:intl/intl.dart';

class NoteTile extends StatelessWidget {
  const NoteTile({
    Key? key,
    required this.noteId,
    required this.content,
    required this.updatedAt,
    required this.hue,
  }) : super(key: key);

  final String noteId;

  final String content;

  final DateTime updatedAt;

  final double hue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Card(
        elevation: 2,
        child: InkWell(
          onTap: () => AutoRouter.of(context).push(
            CreateNoteRoute(noteId: noteId),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                Container(
                  height: 32,
                  width: 5,
                  decoration: BoxDecoration(
                    color: HSVColor.fromAHSV(1, hue, 0.65, 1).toColor(),
                    borderRadius: BorderRadius.circular(2.5),
                  ),
                ),
                const SizedBox(width: 8),
                Flexible(
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text:
                              '${DateFormat.yMMMd().add_jm().format(updatedAt)}: ',
                          style: const TextStyle(fontWeight: FontWeight.w600),
                        ),
                        TextSpan(text: content),
                      ],
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
