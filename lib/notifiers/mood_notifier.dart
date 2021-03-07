import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:riverpod_logic/data/mood.dart';

/// 0) add a notifier targeting the main object
class MoodNotifier extends StateNotifier<Mood> {
  /// By default, the state of the main mood = Mood()
  /// That state is the first "image" of our mood, the start of history
  /// When the state changes (i.e our mood changes),
  /// all of our consumer widgets will be prevented
  /// and will display the properties of our new mood
  MoodNotifier() : super(Mood());

  /// Change the state of the main mood
  void update(Mood newMood) {
    if (newMood != state) {
      state = newMood;
    }
  }

  /// Change the emoji of the main mood
  set emoji(String emoji) {
    state.emoji = emoji;
  }

  /// Change the comment of the main mood
  set comment(String comment) {
    state.comment = comment;
  }

  /// Change the name of the main mood
  set name(String name) {
    state.name = name;
  }
}