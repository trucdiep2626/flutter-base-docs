import 'package:freezed_annotation/freezed_annotation.dart';

part 'content.freezed.dart';

enum ContentType{image, code, title, text}

@freezed
class Content with _$Content {

  factory Content({
    @Default(ContentType.text) ContentType type,
    String? data,
  }) = _Content;

}