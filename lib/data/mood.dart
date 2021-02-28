import 'package:flutter_riverpod/flutter_riverpod.dart';

class Mood {
  String name;
  String emoji;
  String comment;

  Mood({this.name, this.emoji, this.comment});
}

class MoodNotifier extends StateNotifier<Mood> {
  /// By default, the state of the main mood = Mood()
  MoodNotifier(Mood state) : super(Mood());

  /// Change the state of the main mood
  void update(Mood newMood) {
    state = newMood;
  }
}