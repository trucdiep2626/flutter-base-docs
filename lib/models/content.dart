import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'content.freezed.dart';

enum ContentType{image, code, title, text, subtitle}

@freezed
class Content with _$Content {

  factory Content({
    @Default(ContentType.text) ContentType type,
    String? data,
    @Default(TextAlign.start) TextAlign textAlign
  }) = _Content;

}