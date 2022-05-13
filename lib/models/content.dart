import 'package:freezed_annotation/freezed_annotation.dart';

part 'content.freezed.dart';

@freezed
class Content with _$Content {

  factory Content({
    required int id,
    String? title,
    String? body,
  }) = _Content;

}