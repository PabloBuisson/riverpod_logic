import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'data/mood.dart';
import 'screens/page_one.dart';

/// 1) wrap our root widget with a ProviderScope
void main() {
  runApp(ProviderScope(child: MyApp()));
}

/// 2) creating a provider
final moodProvider = StateNotifierProvider<MoodNotifier>((ref) {
  return MoodNotifier();
});

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo about Riverpod',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: PageOne(),
    );
  }
}
