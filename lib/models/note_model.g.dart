// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Note _$$_NoteFromJson(Map<String, dynamic> json) => _$_Note(
      content: json['content'] as String,
      updatedAt: _fromDateTime(json['updatedAt'] as Timestamp),
      hue: (json['hue'] as num).toDouble(),
    );

Map<String, dynamic> _$$_NoteToJson(_$_Note instance) => <String, dynamic>{
      'content': instance.content,
      'updatedAt': _toTimestamp(instance.updatedAt),
      'hue': instance.hue,
    };
