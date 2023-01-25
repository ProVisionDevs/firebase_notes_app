import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:firebase_notes/features/features.dart';

class CreateNoteField extends HookWidget {
  const CreateNoteField({super.key});

  @override
  Widget build(BuildContext context) {
    final focusNode = useFocusNode();
    final content = context.read<CreateNoteCubit>().state.note.content;
    final contentController = useTextEditingController(text: content);

    useEffect(
      () {
        if (content.isEmpty) {
          SchedulerBinding.instance.addPostFrameCallback(
            (_) => FocusScope.of(context).requestFocus(focusNode),
          );
        }

        return null;
      },
      [],
    );

    return SingleChildScrollView(
      padding: const EdgeInsets.only(
        left: 24,
        right: 24,
        top: 24,
        bottom: 80,
      ),
      child: BlocBuilder<CreateNoteCubit, CreateNoteState>(
        builder: (context, state) {
          return TextField(
            controller: contentController,
            focusNode: focusNode,
            cursorColor: Theme.of(context).colorScheme.secondary,
            style: const TextStyle(
              fontSize: 18,
              height: 1.2,
            ),
            decoration: const InputDecoration.collapsed(
              hintText: 'Write note...',
            ),
            maxLines: null,
            textCapitalization: TextCapitalization.sentences,
            onChanged: (val) => context.read<CreateNoteCubit>().updateNote(
                  state.note.copyWith(
                    content: val,
                    updatedAt: DateTime.now(),
                  ),
                ),
          );
        },
      ),
    );
  }
}
