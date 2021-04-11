import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'data/mood.dart';
import 'notifiers/mood_notifier.dart';

/// 2) creating a provider
final moodProvider = StateNotifierProvider<MoodNotifier, Mood>((ref) {
  return MoodNotifier();
});