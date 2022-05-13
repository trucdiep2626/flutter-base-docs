import 'package:flutter_base_docs/models/content.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post.freezed.dart';

@freezed
class Post with _$Post {
  factory Post({
    required int id,
    String? title,
    String? description,
    @Default([]) List<Content> contents,
    @Default([]) List<Post> subPost,
  }) = _Post;

}