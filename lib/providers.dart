import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'notifiers/mood_notifier.dart';

/// 2) creating a provider
final moodProvider = StateNotifierProvider<MoodNotifier>((ref) {
  return MoodNotifier();
});