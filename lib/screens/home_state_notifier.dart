import 'package:flutter_base_docs/models/content.dart';
import 'package:flutter_base_docs/screens/home_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';

final homeProvider = StateNotifierProvider<HomeStateNotifier, HomeState>(
    (_) => HomeStateNotifier());

class HomeStateNotifier extends StateNotifier<HomeState> with LocatorMixin {
  HomeStateNotifier() : super(HomeState());

  void updateMainContent(List<Content> mainContent) {
    state = state.copyWith(contents: mainContent);
  }

  void updateCurrentTitle(String currentTitle) {
    state = state.copyWith(currentTitle: currentTitle);
  }
}
