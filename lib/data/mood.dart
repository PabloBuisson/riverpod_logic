import 'package:flutter_riverpod/flutter_riverpod.dart';

class Mood {
  String name;
  String emoji;
  String comment;

  Mood({this.name, this.emoji, this.comment});
}

class MoodNotifier extends StateNotifier<Mood> {
  /// By default, the state of the main mood = Mood()
  MoodNotifier() : super(Mood());

  /// Change the state of the main mood
  void update(Mood newMood) {
    state = newMood;
  }

  set emoji(String emoji) {
    state.emoji = emoji;
  }

  set comment(String comment) {
    state.comment = comment;
  }

  set name(String name) {
    state.name = name;
  }
}