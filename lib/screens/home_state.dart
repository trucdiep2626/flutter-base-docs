import 'package:flutter_base_docs/models/content.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_state.freezed.dart';
@freezed
class HomeState with _$HomeState {

  factory HomeState({
   // @Default([]) List<String> listTitles,
    String? title,
    String? currentTitle,
    @Default([]) List<Content> contents,
  }) = _HomeState;

}